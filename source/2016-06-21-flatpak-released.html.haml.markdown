<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Announcing Flatpak – Next Generation Linux Applications

  Stockholm, Sweden – 20th June 2016 – The development team behind Flatpak is excited to announce the general availablity of their new framework for desktop applications on Linux. Previously named xdg-app, [Flatpak is available on a range of major Linux distributions](http://flatpak.org/getting.html).

  ## Build once, run anywhere

  The Linux desktop has long been held back by platform fragmentation. This has been a burden on developers, and creates a high barrier to entry for third party application developers. Flatpak aims to change all that. From the very start its primary goal has been to allow the same application to run across a myriad of Linux distributions and operating systems. In doing so, it greatly increases the number of users that application developers can easily reach.

  Speaking about the goals behind Flatpak, Alexander Larsson, its lead developer, said: “Application developers on Linux have always been prevented from having a proper relationship with their users. With Flatpak we're aiming to change that, so developers can have direct contact with their users, and so they know exactly what their users are getting. With this launch we are making that goal a reality.”

  Flatpak has already been available for major Linux distributions for several weeks. It allows application developers to build against a series of stable platforms (known as runtimes), as well as to bundle libraries directly within their applications. Flatpak is also standards compliant, offering support for the [Open Container Initiative](https://www.opencontainers.org/) specification.

  A [growing range of applications](http://flatpak.org/apps.html) are already available as Flatpaks, including Firefox, LibreOffice, the GIMP, InkScape, MyPaint, Darktable, and a large number of stock GNOME applications. The flatpak.org website provides instructions on how to easily try these yourself. Linux desktops have also been keen to adopt Flatpak. A fully functional GNOME runtime has been available since March: this allows application developers to build and distribute Flatpaks using the GNOME development stack. Work on a similar runtime for KDE is proceeding.

  Not only does Flatpak provide cross-distribution installation, but it also allows forward compatibility. Michael Meeks, Director of [The Document Foundation](https://www.documentfoundation.org/), said: “Until now, building a LibreOffice that works for every Linux user has involved some horrible compromises caused by the need to build our binaries on an ancient Linux version to get good forward compatibility. Flatpak will enable us (as a Linux ISV) to distribute a better LibreOffice, with up-to-date dependencies and a platform that can run on many systems. I'm excited to see that happen.”

  ## Security first

  Flatpak has been built from the ground up with security in mind. Flatpak apps are sandboxed, effectively isolating them from each other as well as from the host system. This greatly reduces the means through which applications can steal user data or seek to exploit one another. This will be a major step up for the Linux desktop, which has not had any kind of application isolation until now.

  Sandboxing will be the next major step forward for Flatpak: initial releases have concentrated on application building, distribution and installation, and while the foundations of sandboxing are in place, there are still missing pieces. It should be noted that, due to the insecure nature of X11, applications must use the Wayland display server in order to be fully sandboxed.

  ## Background

  Flatpak is the brainchild of Alexander Larsoon, Principal Software Engineer at Red Hat. Larson has been working in the Linux desktop space for 18 years. He was the principal author of GVFS (GNOME's Virtual Filesystem), and has done critical work on Docker, the SPICE protocol, the Gecko rendering engine, GLib and GTK+. He has considerable experience in the area of application bundling.

  Flatpak builds on several cutting edge technologies. Under the hood, it makes significant use of [OSTree](https://ostree.readthedocs.org), which can be described as "Git for large binaries". This provides much of the functionality for hosting software repositories. It also makes Flatpak very efficient: applications and libraries that are installed with Flatpak are de-duplicated, saving disk space, and “static deltas” reduce the size of update downloads.

  Much of the sandboxing functionality found in Flatpak makes use of Linux kernel features (such as cgroups and namespaces), which helps to make it portable across distributions.

  ## Rapid community growth and adoption

  Flatpak is hosted on Freedesktop.org and Github, and is licensed with the LGPL (no copyright assignment or contributor license agreement is required). It is a flexible system that can be used as part of downstream and bespoke solutions, is already attracting contributions from a range of companies and in the process has started to grow a community of its own.

  One early adopter of Flatpak is [Endless Computers](https://endlessm.com/). Speaking about the launch of Flatpak, Jonathan Blandford (VP of Software Engineering at Endless) said: “The Flatpak launch represents a major milestone in providing a unified context for Linux developers. At Endless, we’re proud to be a part of this movement and have fully embraced Flatpak by readily converting all of our applications for our upcoming release and continuing to build new Flatpak apps. We encourage others to do so as well in what we hope to be a revolution among Linux app creation and adoption.”

  Fedora is making major plans around Flatpak. Commenting on the Flatpak release, Christian F.K. Schaller (Senior Manager at Red Hat and member of the Fedora Workstation Working Group) stated: “The Fedora Workstation team are very excited about Flatpak and the prospects it brings for making the Linux desktop easier to develop for. We plan to continue supporting this effort going forward and help advocate it to a wider audience."

  Others are also showing interest, such as Collabora and Debian. One person who has a foot in each of these organisations is Simon McVittie, Senior Software Engineer at Collabora and Debian developer. He's said: “Bringing Flatpak technology into Debian enables us to run applications in a predictable environment with their most suitable library stack, without compromising the base OS's stability and flexibility. Flatpak also retains the ability to deploy security updates, making it a significant enhancement for the many Debian-based desktop and embedded distributions, both in the community and in commercial products.”

  Larsson is obviously pleased by the momentum behind Flatpak. “It's exciting to see the growing interest in what we are doing, as developers realise the possibilities of the technology,” he said.

  More information about Flatpak can be found on [flatpak.org](http://flatpak.org/).

</div></div></div></section>

