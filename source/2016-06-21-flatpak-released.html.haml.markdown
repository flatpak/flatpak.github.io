<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Announcing Flatpak – Next Generation Linux Applications

  Stockholm, Sweden – 20th June 2016 – The development team behind Flatpak is excited to announce the general availablity of their new framework for desktop applications on Linux. Previously named xdg-app, [Flatpak is available on a range of major Linux distributions](http://flatpak.org/docs/basics/getting.html).

  ## Build once, run anywhere

  <img alt="" src="/img/logo2.svg" class="fright">

  The Linux desktop has long been held back by platform fragmentation. This has been a burden on developers, and creates a high barrier to entry for third party application developers. Flatpak aims to change all that. From the very start its primary goal has been to allow the same application to run across a myriad of Linux distributions and operating systems. In doing so, it greatly increases the number of users that application developers can easily reach.

  Speaking about the goals behind Flatpak, Alexander Larsson, its lead developer, said: “Application developers on Linux have always been prevented from having a direct relationship with their users. With Flatpak we're aiming to change that, so developers know exactly what their users are getting. With this launch we are making that goal a reality.”

  Flatpak has been available for a range of Linux distributions for several weeks. It allows application developers to build against a series of stable platforms (known as runtimes), as well as to bundle libraries directly within their applications. Flatpak is also standards compliant, offering support for the [Open Container Initiative](https://www.opencontainers.org/) specification.

  A growing range of applications are already available as Flatpaks, including Firefox, LibreOffice, the GIMP, InkScape, MyPaint, Darktable, and a large number of stock GNOME applications. [flatpak.org provides instructions on how to easily try these yourself](/apps.html). Linux desktops are also adopting Flatpak. A fully functional GNOME runtime has been available since March: this allows application developers to build and distribute Flatpaks using the GNOME development stack. Work on a similar runtime for KDE is proceeding.

  Not only does Flatpak provide cross-distribution installation, but it also allows forward compatibility. Michael Meeks, Director of [The Document Foundation](https://www.documentfoundation.org/), said: “Until now, building a LibreOffice that works for every Linux user has involved some horrible compromises caused by the need to build our binaries on an ancient Linux version to get good forward compatibility. Flatpak will enable us (as a Linux ISV) to distribute a better LibreOffice, with up-to-date dependencies and a platform that can run on many systems. I'm excited to see that happen.”

  ## Security first

  Another area where the Linux desktop has been weak is security: it has never had a viable model for isolating applications, or for gatekeeping access to user data. This is another area where Flatpak aims to upset the status quo. To this end, it has been built from the ground up with security in mind.

  Flatpak apps are sandboxed. From within the sandbox, the only things the app can “see” are itself and a limited set of libraries and operating system interfaces. This effectively isolates apps from each other as well as from the host system and makes it much harder for applications to steal user data or exploit one another.

  Initial Flatpak releases have concentrated on application building, distribution and installation, and while the foundations of sandboxing are in place, there are still missing pieces. “The next major Flatpak release will be all about sandboxing”, says Larsson. “Application authors will see a much more complete set of interfaces for interacting with the operating system from within a sandbox.”

  Another major part of this work is the widescale move towards the Wayland display server on Linux. X11 is inherently insecure, which makes it impossible to sandbox applications that are using it. In that sense, the growing maturity of Wayland complements Flatpak's emergence, and paves the way for much more complete security model for Linux distributions.

  ## Background to Flatpak

  [![Alexander Larsson. Photo by Garrett LeSage](/img/CC-BY-SA-4.0-Garrett-LeSage-sm.jpg "Alexander Larsson. Photo by Garrett LeSage")](/img/CC-BY-SA-4.0-Garrett-LeSage.jpg)

  Flatpak is the brainchild of Alexander Larsoon, Principal Software Engineer at Red Hat. Larson has been working in the Linux desktop space for 18 years. He was the principal author of GVfs (GNOME's Virtual Filesystem) and has done critical work on Docker, the SPICE protocol, the Gecko rendering engine, GLib and GTK+. He has considerable experience in the area of application bundling.

  Flatpak builds on several cutting edge technologies. Under the hood, it makes significant use of [OSTree](https://ostree.readthedocs.org), which can be described as “Git for large binaries”. This provides much of the functionality for hosting software repositories. It also makes Flatpak extremely efficient: applications and libraries that are installed with Flatpak are de-duplicated, saving disk space; “static deltas” reduce the size of downloads for software updates.

  For sandboxing, Flatpak makes use of the [Bubblewrap](https://github.com/projectatomic/bubblewrap) utilty, as well as several Linux kernel features (such as cgroups and namespaces), which helps to make it portable across distributions.

  ## Rapid community growth and adoption

  It is well known that Fedora is making plans around Flatpak. Commenting on Flatpak, Christian F.K. Schaller (Senior Manager at Red Hat and member of the Fedora Workstation Working Group) stated: “The Fedora Workstation team are very excited about Flatpak and the prospects it brings for making the Linux desktop easier to develop for. We plan to continue supporting this effort going forward and help advocate it to a wider audience."

  There is also interest from other parties. One early adopter of Flatpak is [Endless Computers](https://endlessm.com/). Speaking about the launch of Flatpak, Jonathan Blandford (VP of Software Engineering at Endless) said: “The Flatpak launch represents a major milestone in providing a unified context for Linux developers. At Endless, we’re proud to be a part of this movement and have fully embraced Flatpak by readily converting all of our applications for our upcoming release and continuing to build new Flatpak apps. We encourage others to do so as well in what we hope to be a revolution among Linux app creation and adoption.”

  ![Endless Computers and its App ecosystem](/img/endless-apps.png "Endless Computers and its App ecosystem")

  Other distributions are showing interest, as well as other Free Software companies. Simon McVittie is Senior Software Engineer at Collabora and a Debian developer, and is himself looking to Flatpak: “Bringing Flatpak technology into Debian enables us to run applications in a predictable environment with their most suitable library stack, without compromising the base OS's stability and flexibility. Flatpak also retains the ability to deploy security updates, making it a significant enhancement for the many Debian-based desktop and embedded distributions, both in the community and in commercial products.”

  One reason for the increasing interest in Flatpak is due to its adaptability and the fact that it is a genuinely upstream project. It can be used and adapted as part of downstream and bespoke solutions, is hosted on Freedesktop.org and Github, and is licensed with the LGPL, with no copyright assignment or contributor license agreement required.

  Larsson is obviously pleased by the momentum behind Flatpak. “It's exciting to see the growing interest in what we are doing, as developers realise the possibilities of the technology,” he said.

  More information about Flatpak can be found on [flatpak.org](http://flatpak.org/).

</div></div></div></section>

