---
title: Bundling a Java Application with Flatpak
description: How to bundle your Java application for distribution as a Flatpak.
---
<section class="bg-dark"><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Bundling a Java Application with Flatpak

  This tutorial will walk you through bundling a pre-built Java application using Flatpak. Many Java applications ship a pre-built tarball with the Java dependencies included, and this tutorial will step through an example of taking such a tarball and creating a Flatpak application from it.

  To complete this tutorial, it is necessary to have flatpak and flatpak-builder installed on your system. See [getting Flatpak](/docs/basics/getting.html) for details on installing Flatpak on your system.

  ## Get the Application Tarball
  The application that we are going to bundle with Flatpak is Sweethome3D -- an application that lets you map a plan of the interior of your house so you can design and then view your design plans in 3D. Sweethome3D ships a prebuilt tarball that contains all the Java dependencies it requires, as well as the pre-built binary.

  The first step is to download the Sweethome3D tarball, and extract it to your working directory:

  <pre>
  <span class="unselectable">$ </span>wget http://downloads.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-5.2/SweetHome3D-5.2-linux-x64.tgz
  <span class="unselectable">$ </span>tar xvf SweetHome3D-5.2-linux-x64.tgz
  </pre>

  ## Install the Flatpak Freedesktop SDK and runtime
  Every Flatpak application is required to specify a runtime that provides the core dependencies when the application is run. A Flatpak SDK is used just by you, the developer when building and bundling the application. See the [Developer page](/docs/guide/index.html) for further details on how the runtimes and SDKs work.

  For this example of bundling up Sweethome3D, we are going to use the Freedesktop SDK and runtime. The Freedesktop SDK and runtime are available in from the [GNOME SDK repository](https://sdk.gnome.org/). If you haven't previously set up this repository, you need to download the GPG key, then enable the repository:

  <pre>
  <span class="unselectable">$ </span>wget https://sdk.gnome.org/keys/gnome-sdk.gpg
  <span class="unselectable">$ </span>flatpak remote-add --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/
  </pre>

  You now have enabled a new Flatpak repo called ```gnome```. Next, install version 1.4 of the Freedesktop SDK and runtime from your newly enabled gnome repository:

  <pre>
  <span class="unselectable">$ </span>flatpak install gnome org.freedesktop.Platform 1.4
  <span class="unselectable">$ </span>flatpak install gnome org.freedesktop.Sdk 1.4
  </pre>

  ## Create the Flatpak application
  Next up, we are going to create the Flatpak application that we are going to bundle Sweethome3D into. Use the following command to create the Flatpak application with the unique name ```com.sweethome3d.App```, using the Freedesktop runtime and SDK:
  <pre>
  <span class="unselectable">$ </span>flatpak build-init sweethome3d-flatpak com.sweethome3d.App org.freedesktop.Sdk org.freedesktop.Platform 1.4
  </pre>

  This creates a default empty Flatpak application called ```com.sweethome3d.App``` in a new the directory ```sweethome3d-flatpak```.

  ## Move the tarball contents into the Flatpak sandbox

  The ```flatpak build``` command lets you run commands within your newly created Flatpak sandbox. First we use ```flatpak build``` to create a ```bin/``` and a ```SweetHome3D/``` directory in the ```/app/``` directory within the sweethome3d-flatpak sandbox:

  <pre>
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak mkdir -p /app/SweetHome3D
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak mkdir -p /app/bin
  </pre>

  At this point, we can also run ```ls``` inside the build sandbox to see the results of the above two commands:

  <pre>
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak ls /app/
  </pre>



  Next, move the contents of the tarball we extracted in the '''Get the Application Tarball''' step above into the ```/app/Sweethome3D/``` directory in the sandbox:

  <pre>
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak cp -ra SweetHome3D-5.2/* /app/SweetHome3D
  </pre>

  Finally, make a symbolic link for the Sweethome3D binary in ```/app/SweetHome3D/SweetHome3D``` to the ```/app/bin/``` directory in the sandbox.

  <pre>
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak ln -s /app/SweetHome3D/SweetHome3D /app/bin
  </pre>

  ## Adding a Desktop entry, AppData, and an icon
  One thing you will notice about Sweethome3D is that the application does not ship a Desktop file, AppData file or application icon in the tarball. Including a desktop file will make the application show up in the menus of a Linux desktop, so a user can launch the application directly from their desktop environment (rather than having to run a terminal command). AppData files provide extra information about an application that Desktop environments can use to populate software installers (e.g. gnome-software and apper).

  ### creating and getting the files and icon
  Create a new file in your working directory called ```com.sweethome3d.App.desktop``` and populate it with a simple desktop entry for Sweethome3D:
  <pre>
  [Desktop Entry]
  Type=Application
  Encoding=UTF-8
  Name=SweetHome 3D
  Comment=Draw the plan of your home or office, test furniture layouts and view the results in 3D
  Exec=SweetHome3D
  Icon=com.sweethome3d.App.png
  Terminal=false
  </pre>

  Next, create another new file called ```com.sweethome3d.App.appdata.xml``` in your working directory, and populate it with an AppData file for SweetHome3D:

  <pre>
  &lt;?xml version="1.0" encoding="UTF-8"?&gt;
  &lt;!-- Copyright 2013 First Lastname &lt;your@email.com&gt; --&gt;
  &lt;component type="desktop"&gt;
   &lt;id&gt;com.sweethome3d.App.desktop&lt;/id&gt;
   &lt;metadata_license&gt;CC0-1.0&lt;/metadata_license&gt;
   &lt;project_license&gt;GPL-2.0&lt;/project_license&gt;
   &lt;name&gt;SweetHome 3D&lt;/name&gt;
   &lt;summary&gt;Draw the plan of your home or office, test furniture layouts and view the results in 3D&lt;/summary&gt;
   &lt;description&gt;
    &lt;p&gt;
     Use SweetHome 3D to map out a plan of your house and plan the layout
     and colors of floors, walls and furniture.
    &lt;/p&gt;
    &lt;p&gt;Example list:&lt;/p&gt;
    &lt;ul&gt;
     &lt;li&gt;First item&lt;/li&gt;
     &lt;li&gt;Second item&lt;/li&gt;
    &lt;/ul&gt;
    &lt;p&gt;
    This is another paragraph of information about SweetHome 3D and the Many
    things that you can use it for
    &lt;/p&gt;
   &lt;/description&gt;
   &lt;screenshots&gt;
    &lt;screenshot type="default"&gt;
     &lt;image&gt;http://www.sweethome3d.com/images/gallery/SweetHome3DExample10-FlatWithMezzanine-VirtualVisit.jpg&lt;/image&gt;
     &lt;caption&gt;The main window showing the application in action&lt;/caption&gt;
    &lt;/screenshot&gt;
   &lt;/screenshots&gt;
   &lt;url type="homepage"&gt;http://http://www.sweethome3d.com/&lt;/url&gt;
  &lt;/component&gt;
  </pre>

  The sweethome 3D tarball also does not ship with an icon included, so we need to download it from their upstream source control:

  <pre>
  <span class="unselectable">$ </span>wget http://sweethome3d.cvs.sourceforge.net/viewvc/sweethome3d/SweetHome3D/src/com/eteks/sweethome3d/viewcontroller/resources/help/images/applicationIcon.png
  </pre>

  ### Place them in the sandbox
  Now you have the 3 files in your working directory, we can place them in the appropriate locations in the build sandbox.

  First, create the directory for the desktop file, and move the file from your working directory, to the build sandbox:

  <pre>
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak mkdir -p /app/share/applications/
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak cp com.sweethome3d.App.desktop /app/share/applications/
  </pre>

  Then do the same for the icon, being sure to rename it to ```com.sweethome3d.App.png```
  <pre>
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak mkdir -p /app/share/icons/hicolor/128x128/apps/
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak cp applicationIcon.png /app/share/icons/hicolor/128x128/apps/com.sweethome3d.App.png
  </pre>

  Create the ```/app/share/appdata/``` directory in the sandbox, and copy the appdata file over:
  <pre>
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak mkdir -p /app/share/appdata/
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak cp com.sweethome3d.App.appdata.xml /app/share/appdata/
  </pre>

  After adding the AppData file, use the following command to generate the Appstream files:
  <pre>
  <span class="unselectable">$ </span>flatpak build sweethome3d-flatpak appstream-compose --prefix=/app --origin=flatpak --basename=com.sweethome3d.App  com.sweethome3d.App
  </pre>

  This reads the desktop file, the icon and the appdata file and produces appstream files in ```/app/share/app-info/```. Note that this step is done automatically if you are automating your build process with [Flatpak-builder](/docs/guide/index.html#Building_More_Complex_Apps_With_flatpak_builder)

  ## Finalize the build
  Next, we finalize the build of the Flatpak application. In this step, we tell Flatpak what the sandboxed application should have access to outside of the sandbox, and the name of the executable. In this Sweethome3D example, Sweethome3D needs access to the network, and to X11 (since it is a GUI application):

  <pre>
  <span class="unselectable">$ </span>flatpak build-finish sweethome3d-flatpak --persist=.java --share=ipc --socket=x11 --share=network --command=SweetHome3D
  </pre>

  ## Export the repo, and test out the application
  Your SweetHome3D Flatpak application is now complete. The next step is to export it into a local repository so we can install it and try it out. First, export the Flatpak application with:
  <pre>
  <span class="unselectable">$ </span>flatpak build-export repo sweethome3d-flatpak
  </pre>
  This creates a ```repo/``` directory that contains your new repo with the SweetHome3D application in it.

  Next, we need to add this to Flatpak as a "remote" repo, similar to what you did earlier for the SDK repo:
  <pre>
  <span class="unselectable">$ </span>flatpak --user remote-add --no-gpg-verify sweethome-repo repo
  </pre>

  Finally install the application from the newly linked repo, and run it:
  <pre>
  <span class="unselectable">$ </span>flatpak --user install sweethome-repo com.sweethome3d.App
  <span class="unselectable">$ </span>flatpak run com.sweethome3d.App
  </pre>

  Also check the Application menus on your desktop environment, an entry for SweetHome 3D should now be visible in the menus, using the icon for SweetHome too.


  ## Automating this process with flatpak-builder
  The above steps have walked you through generating a Flatpak application using a series of manual steps. If you need to automate this process, there the [Flatpak-builder](/docs/guide/index.html#Building_More_Complex_Apps_With_flatpak_builder) tool that lets you specify all the details of your Flatpak application, and will download and build the application automatically.

  First, in a clean working directory from the steps above, create a new file called ```com.sweethome3d.App.json``` with the following contents:
  <pre>
  {
    "app-id": "com.sweethome3d.App",
    "runtime": "org.freedesktop.Platform",
    "runtime-version": "1.4",
    "sdk": "org.freedesktop.Sdk",
    "command": "SweetHome3D",
    "finish-args": [
        "--persist=.java",
        "--share=ipc", "--socket=x11",
        "--share=network"
    ],
    "modules": [
        {
            "name": "sweethome",
            "no-autogen": true,
            "sources" : [
                {
                    "type": "archive",
                    "url": "http://downloads.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-5.2/SweetHome3D-5.2-linux-x64.tgz",
                    "sha256": "c963afe9111e7b557cbdb99678926e5767c30928aa9565878f0d0b132151d69e"
                },
                {
                    "type": "file",
                    "path": "sweethome-Makefile",
                    "dest-filename": "Makefile"
                }
            ]
        }
    ]
  }
  </pre>

  You also need a simple Makefile to do the steps of placing the files in the tarball into the proper locations in the ```/app/``` directory in the sandbox. Create a new file called ```sweethome-Makefile``` and add the following contents:
  <pre>
  all:
        true
  install:
        mkdir -p /app/SweetHome3D /app/bin
        cp -ra * /app/SweetHome3D
        ln -s /app/SweetHome3D/SweetHome3D /app/bin
  </pre>

  Now, with these two files created, running the following command will download the tarball, extract it, move the files into the correct locations, finalize the build, and export the repo:
  <pre>
  <span class="unselectable">$ </span>flatpak-builder --repo=repo sweethome3d-flatpak com.sweethome3d.App.json
  </pre>

  Finally, enable the new repo as we did before, then install and run the application:
  <pre>
  <span class="unselectable">$ </span>flatpak --user remote-add --no-gpg-verify sweethome-repo2 repo
  <span class="unselectable">$ </span>flatpak --user install sweethome-repo2 com.sweethome3d.App
  <span class="unselectable">$ </span>flatpak run com.sweethome3d.App
  </pre>

</div></div></div></section>
