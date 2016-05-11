<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Getting Started with XDG-App

  This guide tells you everything you need to know to build and distribute applications using xdg-app. It includes an introduction to basic concepts, a simple beginner's example, before providing an overview of more advanced topics such as automated building and repository hosting.

  Example tutorials are used throughout this guide. To complete them, it is necessary to have xdg-app and xdg-app builder installed on your system. See [getting xdg-app](getting.html) for more details on this.

  ## Key Concepts

  xdg-app is best understood through its key concepts: runtimes, bundles, SDKs and sandboxes. These help to explain how xdg-app differs from traditional application distribution on Linux, as well as the framework's capabilities.

  ### Runtimes

  Runtimes provide the environment that each application runs in, including the basic dependencies it might require. Each runtime can be thought of as a `/usr` filesystem (indeed, when an app is run, its runtime is mounted at `/usr`). Various runtimes are available, from more minimal (but more stable) Freedesktop runtimes, to larger runtimes produced by desktops like GNOME or KDE.

  Each application must be built against a runtime and this runtime must be present on the host system in order for the application to be run. Users can install multiple different runtimes at the same time, including different versions of the same runtime.

  ### Application bundles

  If an application requires any dependencies that aren't in its runtime, they can be bundled along with the application itself. This allows using dependencies that aren't available in a distribution, or using a different version of the dependency from one that's installed on the host.

  Both runtimes and app bundles can be installed per-user and system-wide.

  ### SDKs (Software Developer Kits)

  An 'SDK' is a runtime that includes the 'devel' parts which are not needed at runtime, such as build and packaging tools, header files, compilers and debuggers. Each application is built against an SDK, which is typically paired with a single runtime (this is the runtime that will be used by the application at runtime).

  xdg-app identifies runtimes (as well as SDKs and applications) by a triple of name/arch/branch. The name is expected to be in inverse-dns notation, which needs to match the D-Bus name used for the application. For example: '`org.gnome.Sdk/x86_64/3.14`' or '`org.gnome.Builder/i686/master`'.

  ### Sandboxes

  Each xdg-app is built and run in an isolated environment. By default, the application can only 'see' itself and its runtime. Access to user files, network, graphics sockets, subsystems on the bus and devices all has to be explicitly granted. (As will described later, xdg-app provides several ways to do this.) Access to other things, such as other processes, is (deliberately) not possible.

  ## The xdg-app command

  xdg-app is the tool that is used install, remove and update runtimes and applications. It can also be used to view what is currently installed, and has commands for building and distributing application bundles. `xdg-app --help` provides a full list of available commands.

  ## Anatomy of an xdg-app

  Each xdg-app has the following basic structure:

  Each application also includes:

  * The files that make up the app
  * A metadata file that specifies the runtime required by the app
  * Exported files which the host environment needs access to, 
    such as the application's desktop file, icon and D-Bus service file
  
  &nbsp;
  
      metadata    # A keyfile which provides information about the application, 
                  # including information that is necessary for setting up the sandbox 
                  # for running the application
      /files      # The files that make up the application
      /files/bin  # Application binaries
      /export     # Files which the host environment needs access to, such as the 
                  # application's desktop file, icon and D-Bus service file

  A typical metadata file looks like this:

      [Application]
      name=org.gnome.gedit
      runtime=org.gnome.Platform/x86_64/3.20
      sdk=org.gnome.Sdk/x86_64/3.20
      command=gedit

      [Context]
      shared=ipc;network;
      sockets=x11;wayland;pulseaudio;
      devices=dri;
      filesystems=host;

      [Environment]
      GEDIT_FOO=bar

      [Session Bus Policy]
      org.extra.name=talk
      org.other.name=own


  This specifies the name of the application, the runtime it requires, the SDK that it is built against and the command used to run it. It also specifies file and device access, sets certain environment variables (inside the sandbox, of course), and how to connect to the session bus.

  All the files in the export directory must have the application id as a prefix. This guarantees that applications cannot cause conflicts, and that they can’t override any system installed applications.

  ### AppData

  Many Linux distributions provide an app store or app center for browsing and installing applications. [AppData](https://www.freedesktop.org/software/appstream/docs/chap-Quickstart.html#sect-Quickstart-DesktopApps) is a standard format for providing application information that can be used by app stores, such as an application description and screenshots. xdg-app makes use of the AppData standard, and application authors are recommended to use it to include information about their applications.

  ## Building a simple app using xdg-app

  xdg-app provides a simple set of tools for building and distributing applications. These allow creating new apps, into which new or existing applications can be built. This section describes how to build a simple application which doesn't require any additional dependencies outside of the runtime it is built against.

  ### Installing an SDK

  As described above, an SDK is a special type of runtime that is used to build applcations. Typically, an SDK is paired with a runtime that will be used by the app at runtime. The GNOME 3.20 SDK is used to build applications that use the GNOME 3.20 Platform, for example. The rest of this guide uses this SDK and runtime for its examples. To do this, download the repository GPG key and then add the repository that contains the runtime and SDK:

      $ wget http://sdk.gnome.org/keys/gnome-sdk.gpg
      $ xdg-app remote-add --user --gpg-import=gnome-sdk.gpg gnome http://sdk.gnome.org/repo/

  You can now download and install the runtime and SDK. (If you have already completed the tutorial on the Flatpak homepage, you will already have the runtime installed.)

      $ xdg-app --user install gnome org.gnome.Platform 3.20
      $ xdg-app --user install gnome org.gnome.Sdk 3.20

  This might be a good time to try installing an application and having a look 'under the hood'. To do this, you need to add a repository that contains applicatons. In this case we are going to use the gnome-apps repository and install gedit:

      $ xdg-app --user remote-add --gpg-key=gnome-sdk.gpg gnome-apps http://sdk.gnome.org/repo-apps/
      $ xdg-app --user install gnome-apps org.gnome.gedit stable

  You can now use the following command to get a shell in the 'devel sandbox':

      $ xdg-app run --devel --command=bash org.gnome.gedit

  This gives you an environment which has the application bundle mounted in `/app`, and the SDK it was built against mounted in `/usr`. You can explore these two directories to see what a typical xdg-app looks like, as well as what is included in the SDK.

  ### Creating an app

  To create an application, the first step is to use the build-init command. This creates a directory into which an applcation can be built, which contains the correct directory structure and a metadata file which contains information about the app. The format for build-init is:

      xdg-app build-init DIRECTORY APPNAME SDK RUNTIME [BRANCH]

  - `DIRECTORY` is the name of the directory that will be created to contain the application
  - `APPNAME` is the D-Bus name of the application
  - `SDK` is the name of the SDK that will be used to build the application
  - `RUNTIME` is the name of the runtime that will be required by the application
  - `BRANCH` is typically the version of the SDK and runtime that will be used

  For example, to build the GNOME Dictionary application using the GNOME 3.20 SDK, the command would look like:

      $ xdg-app build-init dictionary org.gnome.Dictionary org.gnome.Sdk org.gnome.Platform 3.20

  You can try this command now. In the next step we will build an application inside the resulting dictionary directory.

  ### Building

  The xdg-app build command is used to build an application using an SDK. This command is used to provide access to an sandbox. For example, the following will create a file inside the appdir sandbox (in the files directory):

      $ xdg-app build dictionary touch /app/some_file

  (It is best to remove this file before continuing.)

  The build command allows existing applications that have been made using the traditional configure, make, make install routine to be built inside an xdg-app. You can try this using GNOME Dictionary. First, download the source files, extract them and switch to the resulting directory:

      $ wget https://download.gnome.org/sources/gnome-dictionary/3.20/gnome-dictionary-3.20.0.tar.xz
      $ tar xvf gnome-dictionary-3.20.0.tar.xz
      $ cd gnome-dictionary-3.20.0/

  Then you can use the build command to build and install the source inside the dictionary directory that was previously made:

      $ xdg-app build ../dictionary ./configure --prefix=/app
      $ xdg-app build ../dictionary make
      $ xdg-app build ../dictionary make install
      $ cd ..

  Since these are run in a sandbox, the compiler and other tools from the SDK are used to build and install, rather than those on the host system.

  ### Completing the build

  Once an application has been built, the build-finish command needs to be used to specify access to different parts of the host, such as networking and graphics sockets. This command is also used to specify the command that is used to run the app (done by modifying the metadata file), and to create the application's exports directory. For example:

  $ xdg-app build-finish dictionary --socket=x11 --share=network --command=gnome-dictionary

  At this point you have successfully built an xdg-app and prepared it to be run. To test the app, run:

      $ xdg-app build-export repo dictionary
      $ xdg-app --user install tutorial org.gnome.Dictionary
      $ xdg-app run org.gnome.Dictionary

  This exports the app, creates a repository called tutorial, installs the Dictionary application and runs it.

  ## Building more complex apps with xdg-app-builder

  If an application requires additional dependencies that aren't provided by its runtime, xdg-app allows them to be bundled as modules as part of the app itself. This requires building each module inside the application, which can be a lot of work. For this reason, the xdg-app-builder tool is provided to automate the build process.

  xdg-app-builder takes care of the routine commands used to build an app and any bundled modules, thus allowing application building to be automated. To do this, it expects modules to be built in a standard manner by following what is called the [Build API](https://github.com/cgwalters/build-api). If any modules don't conform to this API, they will need to be modified.

  ### Manifests

  xdg-app-builder uses a json file to describe the parameters for building an app, as well as each of the modules to be bundled. This file is called the manifest. Module sources can be of several types, including archives (`.tar`, `.zip`), Git, Bzr, patch files or shell commands that are run.

  The GNOME Dictionary manifest is short, because the only module is the application itself:

      {
        "app-id": "org.gnome.Dictionary",
        "runtime": "org.gnome.Platform",
        "runtime-version": "3.20",
        "sdk": "org.gnome.Sdk",
        "command": "gnome-dictionary",
        "finish-args": [ 
           "--socket=x11", 
           "--share=network"  
        ],
        "modules": [
          {
            "name": "gnome-dictionary",
            "sources": [
              {
                "type": "archive",
                "url": "https://download.gnome.org/sources/gnome-dictionary/3.20/gnome-dictionary-3.20.0.tar.xz",
                "sha256": "efb36377d46eff9291d3b8fec37baab2355f9dc8bc7edb791b6a625574716121"
              }
            ]
          }
        ]
      }

  ### Cleanup

  xdg-app-builder performs a cleanup phase after the build, which can be used to remove headers and development docs, among other things. Two properties in the manifest file can be used for this. First, a list of filename patterns can be included:

      cleanup": [ "/include", "/bin/foo-*", "*.a" ]

  The second cleanup property is a list of commands that are run during the cleanup phase:

      "cleanup-commands": [ "sed s/foo/bar/ /bin/app.sh" ]

  Cleanup properties can be set on a per-module basis, and will then only match filenames that were created by that particular module.

  ### File renaming

  Files that are exported by an xdg-app must be named using the application ID. However, application's source files will typically not follow this convention. To get around this, xdg-app-builder allows renaming application icons, desktop files and AppData as a part of the build process, using the rename-icon, rename-desktop-file and rename-appdata properties.

  ### Example

  You can try xdg-app-builder for yourself, using the repository that and app that was created in the previous section. To do this, place the manifest json from above into a file called `org.gnome.Dictionary.json` and run the following command:

      $ xdg-app-builder --repo=repo dictionary2 org.gnome.Dictionary.json

  This will:

   * Create a new directory (called dictionary2)
   * Download and verify the Dictionary source code
   * Build and install the source code, using the SDK rather than the host system
   * Finish the build, by setting permissions (in this case giving access to X and the network)
   * Exports the resulting build to the tutorial repository, which contains the Dictionary app what was previously installed

  xdg-app-builder will also do some other useful things, like creating a separately installable debug runtime (called `org.gnome.Dictionary.Debug` in this case) and separately installable translations runtimes (called `org.gnome.Dictionary.Locale.$lang`).

  It is now possible to update the installed version of the Dictionary application with the new version that was built by xdg-app-builder:

      $ xdg-app --user update org.gnome.Dictionary

  To check that the application has been successfully updated, you can compare the sha256 commit of the installed app with the commit ID that was printed by xdg-app-builder:

      $ xdg-app --user info org.gnome.Dictionary

  And finally, you can run the new version of the Dictionary app:

      $ xdg-app run org.gnome.Dictionary

  ### Example manifests

  A complete manifest for [GNOME Dictionary built from Git is available](https://github.com/alexlarsson/gnome-apps-nightly/blob/master/org.gnome.Dictionary.json)
  , in addition to manifests for [a range of other GNOME applications](https://github.com/alexlarsson/gnome-apps-nightly).

  ## Working with the sandbox

  By default, an xdg-app has extremely limited access to the host environment. This includes:

   * No access to any host files except the runtime, the app, and `~/.var/app/org.test.Hello`, and only the last of these is writable.
   * No access to the network.
   * No access to any device nodes (apart from `/dev/null`, etc).
   * No access to processes outside the sandbox.
   * Limited syscalls.  For instance, apps can't use nonstandard network socket types or ptrace other processes.
   * Limited access to the session D-Bus instance - an app can only own its own name on the bus.
   * No access to host services like X, systemd D-Bus, or PulseAudio.

  Most applications will need access to some of these resources in order to be useful, and xdg-app provides a number of ways to give an application access to them. The build-finish command is the simplest of these. As was seen in a previous example, this can be used to add access to graphics sockets and network resources:

      $ xdg-app build-finish dictionary2 --socket=x11 --share=network --command=gnome-dictionary

  These arguments translate into several properties in the application metadata file:

      [Application]
      name=org.gnome.Dictionary
      runtime=org.gnome.Platform/x86_64/3.20
      sdk=org.gnome.Sdk/x86_64/3.20
      command=gnome-dictionary

      [Context]
      shared=network;
      sockets=x11;

  Note that in this example access to the filesystem wasn't granted. This can be tested by installing the resulting application and running:

      $ xdg-app run --command=ls org.gnome.Dictionary ~/

  build-finish allows a whole range of resources to be added to an application. Run `xdg-app build-finish --help` to view the full list.

  There are several ways to override the permissions that are set in an application's metadata file. One of these is to override them using xdg-app run, which accepts the same parameters as build-finish. For example, this will let the Dictionary application see your home directory:

      $ xdg-app run --filesystem=home --command=ls org.gnome.Dictionary ~/

  xdg-app run can also be used to permanently override an application's permissions:

      $ xdg-app --user override --filesystem=home org.gnome.Dictionary
      $ xdg-app run --command=ls org.gnome.Dictionary ~/

  It is also possible to remove permissions using the same method. You can use the following command to see what happens when access to the filesystem is removed, for example:

       $ xdg-app run --nofilesystem=home --command=ls org.gnome.Dictionary ~/

  ### Useful sandbox permissions

  xdg-app provides an array of options for controlling sandbox permissions. The following are some of the most useful.

  Grant access to files:

      --filesystem=host    # All files
      --filesystem=home    # Home directory
      --filesystem=home:ro # Home directory, read-only
      --filesystem=/some/dir --filesystem=~/other/dir # Paths
      --filesystem=xdg-download # The XDG download directory
      --nofilesystem=...   # Undo some of the above

  Allow the application to show windows using X11:

      --socket=x11 --share=ipc

  Note: –share=ipc means that the sandbox shares IPC namespace with the host. This is not necessarily required, but without it the X shared memory extension will not work, which is very bad for X performance.

  Allow OpenGL rendering:

      --device=dri

  Allow the application to show windows using Wayland:

      --socket=wayland

  Allow the application play sounds using PulseAudio:

      --socket=pulseaudio

  Allow the application access the network:

      --share=network

  Note: Giving network access also grants access to all host services listening on abstract Unix sockets (due to how network namespaces work), and these have no permission checks. This unfortunately affects e.g. the X server and the session bus which listens to abstract sockets by default. A secure distribution should disable these and just use regular sockets.

  Allow the application talk to a named service on the session bus:

      --talk-name=org.freedesktop.secrets

  Allow the application talk to a named service on the system bus:

      --system-talk-name=org.freedesktop.GeoClue2

  Allow the application unlimited access to all of D-Bus:

      --socket=system-bus --socket=session-bus

  ## Distributing applications

  As has already been seen, xdg-app allows remote repositories to be added, from which runtimes and applications can be installed. To do this, it uses [OSTree](https://ostree.readthedocs.io/en/latest/)
  . This is similar to Git, but has been designed to handle trees of large binaries. Like Git, it has the concept of repositories and commits. Applications are stored as branches.

  To distribute an application, it must be exported to a repository. This is done using the build-export command:

      $ xdg-app build-export [OPTION…] LOCATION DIRECTORY [BRANCH]

  The resulting repository is in an archive-z2 format. To distribute an application, all you have to do is copy this to a web server and give the URL to your users.

  ### Managing repositories

  The xdg-app build-update-repo command provides most of the tools for managing repositories. For example, to set a user readable name for a repository:

      $ xdg-app build-update-repo --title="Nice name" repo

  `build-update` also lets you prune (`--prune`) unused objects and deltas from the repository, and even remove older revisions (using `--prune-depth`) which is useful for things like automatic nightly build repositories.

  ### AppData

  As already described, xdg-app uses the AppData standard to store user visible information about applications. This information needs to be accessible to clients in order to be displayed in app stores. To do this, build-update-repo it scans all the branches in the repository for AppData data, which is collected and commited into a repository-wide AppStream branch. xdg-app then keeps a local copy of this branch for each remote, which can manually updated using the update command. For example:

      $ xdg-app --user update --appstream nightly

  ### Hosting a repository

  While it is relatively simple to host an xdg-app repository, there are some important details to be aware of:

   * archive-z2 repositories contain a single file for each file in the application. This means that pull operations will do a lot of http requests. Since new requests are slow, it is important to enable HTTP keep-alive on the web server.
   * OSTree supports something called static deltas. These are single files in the repo that contains all the data needed to go between two revisions (or from nothing to a revision). Creating such deltas will take up more space on the server, but will make downloads much faster. This can be done with the build-update-repo --generate-static-deltas.

  ### GPG signatures

  By default OSTree refuses to pull from a remote repository that is not signed. To disable GPG verification, the --no-gpg-verify option needs to be used when a remote is added. Alternatively, it can be disabled on an existing remote using xdg-app remote-modify.

  OSTree requires signatures for every commit and on repository summary files. These objects are created by the build-update-repo and build-export commands, as well as indirectly by xdg-app-builder. A GPG key should therefore be passed to each of these commands, and optionally the gpg home directory to use. For example:

      $ xdg-app build-export --gpg-sign=KEYID --gpg-homedir=/some/dir appdir repo

</div></div></div></section>
