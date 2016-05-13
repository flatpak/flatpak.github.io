<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown

  # Frequently Asked Questions

  This page lists the runtimes that are currently available for xdg-app.

  ## Why the name flatpak?

  IKEA is a world-wide known brand whose success was partly built upon having developed and refined the idea of flatpacking
  their furniture, which allowed them huge cost savings and efficiencies compared to their competitors. So when we needed
  a new name for the packaging technology that had been developed by Alex Larsson, a native Swede, we thought that flatpak would
  both be a nice play on his nationality and pay homage to the success of IKEA and at the same time send a strong signal
  about how revolutionary we thought this new packaging technology could be for the Linux desktop.

  ## What is the origin of the flatpak technology?

  Flatpak is a technology that brings toghether many of the lessons learned by its creator Alexander Larsson during his long tenure
  as a Linux desktop developer and having spent time inside Red Hat working on container technologies. Flatpak builds upon existing
  technologies such as namespaces, bind mounts and seccomp in the Linux kernel, OSTree from [Project Atomic](http://www.projectatomic.io/)
  and the OCI format that is developed by the [Open Container Initiative](https://www.opencontainers.org/).
  It has also spawned new technologies such as Bubblewrap which is shared between Flatpak and Project Atomic.

  ## Is flatpak tied to GNOME? Is it tied to Fedora?

  No. While flatpak has been developed by people with a long involvement in the GNOME and Fedora communities it is not tied
  to either, in fact it was designed with the explicit goal of allowing it to build applications using any library stack or
  programming language an application author might want. At the same we its was also built to be distribution agnostic and
  allow deployment on any Linux operating system out there, in fact we made sure to reach out and discuss flatpak with
  representatives of other distributions from very early on in the project.

  ## Is flatpak the same as xdg-app?

  Yes, while xdg-app was a fine name to use during development we wanted something with wider appeal and more sparkle
  to it than xdg-app could provide. So as part of formally launching flatpak as ready for use we decided to pick a new
  and more accessible and fun name.

  ## Is flatpak a container technology?

  It can be, but it doesn't have to be. Since a desktop application would require quite extensive changes in order to
  be usable when run inside a container you will likely see flatpak mostly deployed as a convenient library bundling technology
  early on, with the sandboxing or containerization being phased in over time for most applications. In general though we
  try to avoid using the term container when speaking about flatpak is it tends to cause comparisons with Docker and Rocket,
  comparisons which quickly stops making technical sense due to the very different problem spaces these technologies
  tries to address. And thus we prefer using the term sandboxing.

  ## How does flatpak relate to freedesktop.org technologies such as desktop files and appstream metadata?

  These standards are incorporated as mandatory parts in the flatpak definition. By relying on these standards
  we are building on years of investment and support under Linux.

</div></div></div></section>
