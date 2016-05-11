<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Getting xdg-app

  Before you can use any apps you have to install xdg-app. This is the application sandboxing framework used to install, update and run the applications. To make this easy I have prepared binary packages for some common distributions.

  ### Fedora

  `xdg-app` is packaged in both Fedora 22 and Fedora 23, so it should be enough to run. Enable the updates-testing repo to make sure you get the latest version. To install run this (as root):

      dnf --enablerepo=updates-testing install xdg-app

  ### Ubuntu

  I have made a PPA with builds for Trusty, Vivid and Wily. To install you should just run this (as root):

      sudo add-apt-repository ppa:alexlarsson/xdg-app
      sudo apt-get update
      sudo apt-get install xdg-app

  ### Debian

  I made a custom apt repository for debian jesse, which probably also works for testing. To install run this (as root):

      wget -O - http://sdk.gnome.org/apt/debian/conf/alexl.gpg.key|apt-key add -
      echo "deb [arch=amd64] http://sdk.gnome.org/apt/debian/ jessie main" > /etc/apt/sources.list.d/xdg-app.list
      apt update
      apt install xdg-app

  This will install xdg-app, but by default debian disallows user-namespaces as non-root, which means xdg-app will not work. To enable this you can run:

      sysctl kernel.unprivileged_userns_clone=1

  And to make this change permanent (after reboot):

      echo 'kernel.unprivileged_userns_clone = 1' > /etc/sysctl.d/10-unpriv-ns.conf

  ### Arch

  Xdg-app is available in the AUR as `xdg-app`.

  ### Mageia

  `xdg-app` is available in Cauldron.

  #### Build from source

  The code for xdg-app lives in a freedesktop git repository. And the releases are available here.

  If your kernel supports unprivileged user namespaces, then a simple build should work. However, if your kernel has user namespaces disabled you need to make the xdg-app-helper binary setuid or setcap. The --with-priv-mode= configure switch can help you with this.

  #### After xdg-app installation

  The xdg-app packages install a scriptlet that sets up an environment variable for integration with the desktop environment. So after the first install you need to log out and in again to get applications to show up in your regular desktop. You can still manually run apps without this though. 

</div></div></div></section>
