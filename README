Flatpak.org website
===================

To set up middleman locally on Fedora:

install ruby, rubygems and rubygem-bundler

In the git checkout, do a `bundle install`. This installs all 
the needed modules in their appropriate vesions.

To run a local web server to test the site:

    bundle exec middleman server

Edit the haml/scss files and commit your changes, pushing to 
origin/master.

to deploy your changes:

    bundle exec middleman build
    bundle exec middleman deploy

This will push the site from ./build into origin/gh-pages branch.
