Flatpak.org website
===================

To set up middleman locally on Fedora:

    dnf install ruby rubygems rubygem-bundler rubygem-json

In the git checkout, do a `bundle install`. This installs all 
the needed modules in their appropriate vesions.

Add the middleman binary location (probably ~/bin) to $PATH.

To run a local web server to test the site:

    bundle exec middleman server

Edit the haml/scss files and commit your changes, pushing to 
origin/source.

Then, to deploy your changes:

    bundle exec middleman build
    bundle exec middleman deploy

This will push the site from ./build into origin/master branch.
