---
title: Hello World
description: Create a Flatpak application in five minutes.
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown

  # Hello World

  Developers can quickly get started using the tutorial below. More detailed information is available in the [Flatpak developer documentation](http://docs.flatpak.org/).

  ## 1. Install Flatpak

  First we need to install Flatpak itself. The instructions here are for Fedora or Ubuntu. Details for other distros can be found on the [getting Flatpak page](getting.html).

  If you are using Fedora, run:
  
  <pre>
  <span class="unselectable">$ </span>sudo dnf install flatpak
  </pre>

  On Ubuntu, Flatpak is available through a PPA. To install it, run:

  <pre>
  <span class="unselectable">$ </span>sudo add-apt-repository ppa:alexlarsson/flatpak
  <span class="unselectable">$ </span>sudo apt update
  <span class="unselectable">$ </span>sudo apt install flatpak
  </pre>

  ## 2. Install a runtime

  Flatpak requires every app to specify a runtime that it uses for its dependencies. We'll use the GNOME 3.22 development platform runtime for this. To install the runtime, we first need to add the repository that provides it. Run:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --from gnome https://sdk.gnome.org/gnome.flatpakrepo
  </pre>

  And then install the runtime itself:

  <pre>
  <span class="unselectable">$ </span>flatpak install gnome org.gnome.Platform//3.22
  </pre>
          
  ## 3. Create your app

  First we need to create the directory structure for the app:

  <pre>
  <span class="unselectable">$ </span>mkdir hello
  <span class="unselectable">$ </span>mkdir hello/files
  <span class="unselectable">$ </span>mkdir hello/files/bin
  <span class="unselectable">$ </span>mkdir hello/export
  </pre>

  Now let's add something simple: create a file in `hello/files/bin/` called `hello.sh`. Then add the following to the file and save it:

  <pre>
  #!/bin/sh
  echo "Hello world, from a sandbox"
  </pre>

  Now we need to provide some information about the application. In Flatpak this is specified in a key-value file called `metadata`, which goes in the `hello` directory.

  For a simple app this doesn't contain much, so we can create it manually:

  <pre>
  [Application]
  name=org.test.Hello
  runtime=org.gnome.Platform/x86_64/3.22
  command=hello.sh
  </pre>

  This specifies the application identifier (`org.test.Hello`) as well as the runtime the application uses and the command to start the app with.

  ## 4. Put the app in a repository

  Congratulations, you've made an app! To be able to install it, you need to put it in a repository. This is done with the build-export command. Make sure you are in the parent directory of `hello/` and run the following:

  <pre>
  <span class="unselectable">$ </span>flatpak build-export repo hello
  </pre>

  This will initialize a local repository in the "repo" directory and export the app to it.

  ## 5. Install

  Now we're ready to add the repository that was just created and install the app. This is done with two commands:

  <pre>
  <span class="unselectable">$ </span>flatpak --user remote-add --no-gpg-verify tutorial-repo repo
  <span class="unselectable">$ </span>flatpak --user install tutorial-repo org.test.Hello
  </pre>

  This will install the remote and the app in the user's home directory due to the `--user` argument. This is useful for test builds and other local things.

  ## 6. Run

  All that's left is to run the app. This can be done with:

  <pre>
  <span class="unselectable">$ </span>flatpak run org.test.Hello
  </pre>

  This will print `Hello world, from a sandbox`.

  Ta da! That's it: you've successfully built, installed and run your first Flatpak. Many of these steps are simplified by Flatpak's built in tools. For information on how to use them, as well as how to build and distribute more complex apps see the [developer documentation](http://docs.flatpak.org/).

</div></div></div></section>
