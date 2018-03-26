---
title: Flatpak Frequently Asked Questions
description: FAQ about the Flatpak project.
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown

  # Frequently Asked Questions
  
  <ul id="toc" data-toc data-toc-headings="h3"></ul>
  
  ### Why the name Flatpak?

  IKEA is a world-wide known brand whose success was partly built upon having developed and refined the idea of flatpacking
  their furniture, which allowed them huge cost savings and efficiencies compared to their competitors. So when we needed
  a new name for the packaging technology that had been developed by Alex Larsson, a native Swede, we thought that Flatpak would
  both be a nice play on his nationality and pay homage to the success of IKEA and at the same time send a strong signal
  about how revolutionary we thought this new packaging technology could be for the Linux desktop.

  ### What is the origin of the Flatpak technology?

  Flatpak is a technology that brings together many of the lessons learned by its creator Alexander Larsson during his long tenure
  as a Linux desktop developer and having spent time inside Red Hat working on container technologies. Flatpak builds upon existing
  technologies such as cgroups, namespaces, bind mounts and seccomp in the Linux kernel, OSTree from [Project Atomic](http://www.projectatomic.io/)
  and the OCI format that is developed by the [Open Container Initiative](https://www.opencontainers.org/).
  It has also spawned new technologies such as Bubblewrap which is shared between Flatpak and Project Atomic.

  ### Is Flatpak tied to GNOME?

  No. While Flatpak has been developed by people with a long involvement in the GNOME community it is not tied
  to any desktop. In fact, it was designed with the explicit goal of allowing it to build applications using any library stack or
  programming language an application author might want.

  ### Is Flatpak tied to Fedora?

  No. In fact, Flatpak and even [Flathub](https://flathub.org) are enabled by default on Endless OS and Linux Mint.
  The people developing Flatpak have a long history in contributing to and building Linux distributions like Debian,
  Fedora, and others, and solving the problems that arise when shipping applications for these platforms. Flatpak
  was built to be distribution agnostic and allow deployment on any Linux operating system out there.

  ### Is Flatpak tied to Linux?

  Yes. We are explicitly using many features of the linux kernel (bind mounts, namespaces, seccomp, etc) to create the sandbox that
  Flatpak apps are running in. It may be possible to use equivalent technologies on other kernels, but that would be a non-trivial
  amount of work, and we don’t consider this one of our priorities.

  ### Is Flatpak tied to systemd?

  No. Versions of Flatpak before 0.6.10 relied on systemd for cgroups setup, but this is no longer required.

  ### Is Flatpak the same as xdg-app?

  Yes, while xdg-app was a fine name to use during development we wanted something with wider appeal and more sparkle
  to it than xdg-app could provide. So as part of formally launching Flatpak as ready for use we decided to pick a more accessible
  and fun name.

  ### Is Flatpak a container technology?

  It can be, but it doesn’t have to be. Since a desktop application would require quite extensive changes in order to
  be usable when run inside a container you will likely see Flatpak mostly deployed as a convenient library bundling technology
  early on, with the sandboxing or containerization being phased in over time for most applications. In general though we
  try to avoid using the term container when speaking about Flatpak as it tends to cause comparisons with Docker and rkt,
  comparisons which quickly stop making technical sense due to the very different problem spaces these technologies
  try to address. And thus we prefer using the term sandboxing.

  ### How does Flatpak relate to freedesktop.org technologies such as desktop files and AppStream metadata?

  These standards are incorporated as mandatory parts in the Flatpak definition. By relying on these standards
  we are building on years of investment and support under Linux.

  ### Can Flatpak be used on servers too?
  
  Flatpak is designed to run inside a desktop session and relies on certain session services, such as a D-Bus session bus
  and, optionally, a systemd `--user` instance. This makes Flatpak not a good match for a server.

  However, the build features of Flatpak run fine outside a session, so you can build things on a server.

  ### Is Flatpak compatible with other desktop isolation frameworks?

  In general unprivileged container systems can’t stack, because anything running inside the sandbox does not have the necessary privileges to set up a sandbox, nor does it have the ability to raise its privileges in any way. For instance, Firejail can never work inside Flatpak, because it is setuid. That being said, using multiple sandboxing frameworks at once does not really make anything more secure, so there is little point in trying to nest things like that.

  It is certainly possible for Flatpak and Flatpak applications to coexist with applications that are packaged in other ways, on the same host system.

  ### Are there any IDEs that support Flatpak?

  Yes!

  Version 3.22.4 and newer of [GNOME Builder](https://wiki.gnome.org/Apps/Builder) includes support for `flatpak-builder` manifests. This ensures your project is built using your selected Flatpak runtime and any external dependencies. Support for running your application inside Flatpak is also supported. By developing your application within the exact same environment as your users you can squash those “Works for me” bugs before they reach your users!

  ### Can I host my Flatpak app on GitHub?

  Flatpak repositories can’t (currently) be put on GitHub in a convenient way.
  As an alternative, you can create a single-file bundle, and put that up on GitHub
  as a “release.” Note that bundles have some drawbacks, compared to a repository.
  Another option you have is to get your app on [Flathub](https://flathub.org/)
  which will allow your users to get updates.

</div></div></div></section>
