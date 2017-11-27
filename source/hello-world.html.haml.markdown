---
title: Hello World
description: Create a Flatpak application in five minutes.
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown

  # Hello World

  Developers can quickly get started using the tutorial below. More detailed information is available in the [Flatpak developer documentation](http://docs.flatpak.org/).

  ## 1. Install Flatpak

  First we need to install Flatpak itself, and the flatpak-builder build tool. The instructions here are for Fedora or Ubuntu. Details for other distros can be found on the [getting Flatpak page](getting.html).

  If you are using Fedora, run:

  <pre>
  <span class="unselectable">$ </span>sudo dnf install flatpak-builder
  </pre>

  On Ubuntu, Flatpak is available through a PPA. To install it, run:

  <pre>
  <span class="unselectable">$ </span>sudo add-apt-repository ppa:alexlarsson/flatpak
  <span class="unselectable">$ </span>sudo apt update
  <span class="unselectable">$ </span>sudo apt install flatpak-builder
  </pre>

  ## 2. Install a runtime and a Sdk

  Flatpak requires every app to specify a runtime that it uses for its basic dependencies.
  In this tutorial we will use the Freedesktop runtime version 1.6.
  To install the runtime, we first need to set up access to the flathub repository where it is available. Run:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  </pre>

  In addition to the runtime itself, there is a related Sdk (Software Development Kit), which contains all the things that
  are in the runtime, and additionally all that you need to build applications against it. This includes compilers, development
  tools, headers and similar things that are typically packages in -devel/-dev packages on traditional distributions.

  <pre>
  <span class="unselectable">$ </span>flatpak install flathub org.freedesktop.Platform//1.6 org.freedesktop.Sdk//1.6
  </pre>

  ## 3. Create your app

  In this example we're doing something very simple, so add the following to a file and save it as `hello.sh`:

  <pre>
  #!/bin/sh
  echo "Hello world, from a sandbox"
  </pre>

  In a more typical scenario you already have an application that you want to package.

  ## 4. Name your application

  In flatpak applications are refered to by their application id, which is a unique identifier in reverse-DNS style.
  For example `org.gnome.gedit` or `net.supertuxkart.SuperTuxKart`. Chosing the right id is important, as it is hard to
  change this later. The rules for flatpak names are the same as those for dbus names, and if your application is using
  dbus then the id should should match the dbus name.

  If the application doesn't have a dbus name you should pick a name based on some dns namespace you own. Projects often already
  have a web presence, or are related to some project that does. If the project is on github you can use the user.github.io
  domain that gives you.

  In this example we will use the name `org.flatpak.Hello`.

  ## 5. Write a manifest

  Most flatpak applications are build using a tool called flatpak-builder. flatpak-builder takes a description of the build
  called a manifest, which is a json file. So, add the following to a file called `org.flatpak.Hello.json`:

  <pre>
  {
      "app-id": "org.flatpak.Hello",
      "runtime": "org.freedesktop.Platform",
      "runtime-version": "1.6",
      "sdk": "org.freedesktop.Sdk",
      "command": "hello.sh",
      "modules": [
          {
              "name": "hello",
              "buildsystem": "simple",
              "sources": [
                  {
                      "type": "file",
                      "path": "hello.sh"
                  }
              ],
              "build-commands": [
                  "install -D hello.sh /app/bin/hello.sh"
              ]
          }
      ]
  }
  </pre>

  In a more complex application you would have multiple modules, where the last one is typically
  the application itself, and the earlier ones are dependencies that you need to bundle with the
  application because they are not part of the runtime.

  ## 6. Build the application

  To build the manifest we just run flatpak-builder and specify the json filename and a target directory where
  data will be installed:

  <pre>
  <span class="unselectable">$ </span>flatpak-builder app-dir org.flatpak.Hello.json
  </pre>

  This will build each module in the application and install it to /app, which will end up in the `app-dir` directory

  ## 7. Test the build

  To verify that the build worked you can test the local build directly:

  <pre>
  <span class="unselectable">$ </span>flatpak-builder --run app-dir org.flatpak.Hello.json hello.sh
  </pre>

  ## 8. Put the app in a repository

  Congratulations, you've made an app! To be able to install it, you need to put it in a repository.
  This is done by passing the `--repo` argument to flatpak-builder:

  <pre>
  <span class="unselectable">$ </span>flatpak-builder --repo=repo --force-clean app-dir org.flatpak.Hello.json
  </pre>

  This does the build again, and at the end exports the result to a local directory called `repo` (which is
  initialized if needed). Note that flatpak-builder keeps a cache of previous builds in the .flatpak-builder
  subdirectory, so doing a second build like this is very fast. Also, this second time we passed in
  `--force-clean` which means the previously created app-dir was deleted before starting the new build.

  ## 9. Install

  Now we're ready to add the repository that was just created and install the app. This is done with two commands:

  <pre>
  <span class="unselectable">$ </span>flatpak --user remote-add --no-gpg-verify tutorial-repo repo
  <span class="unselectable">$ </span>flatpak --user install tutorial-repo org.flatpak.Hello
  </pre>

  This will install the remote and the app in the user's home directory due to the `--user` argument.
  Per-user installs are useful for test builds and other local things.

  Note that we had to add the remote with --no-gpg-verify since we didn't specify a gpg key when building the application.
  This is fine for testing, but for official repositories you should sign them with a private gpg key.

  ## 10. Run

  All that's left is to run the app. This can be done with:

  <pre>
  <span class="unselectable">$ </span>flatpak run org.flatpak.Hello
  </pre>

  This will print `Hello world, from a sandbox`.

  # The next steps

  Ta da! That's it: you've successfully built, installed and run your first Flatpak.

  For more details on how to package flatpaks, see the [developer documentation](http://docs.flatpak.org/).

  If you're packaging an application that is for general consumption we recommend that you add it
  to [Flathub](https://flathub.org/). That makes it easy for you to set up the distribution, an easier for
  users to find your application.

</div></div></div></section>
