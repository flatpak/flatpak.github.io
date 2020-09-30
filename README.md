# Flatpak.org website
# Let's begin
## Installation and setup

To set up middleman locally on Fedora:

    dnf install ruby rubygems rubygem-bundler rubygem-json

In the git checkout, do a `bundle install`. This installs all
the needed modules in their appropriate vesions.

Add the middleman binary location (probably ~/bin) to $PATH.

## Testing

To run a local web server to test the site:

    bundle exec middleman server

Edit the haml/scss files and commit your changes, pushing to
origin/source.

## Deployment

Pushing new commits automatically causes to trigger new build
and deployment on OpenShift. It usually takes few minutes for
changes to become visible. Files used for build can be found
in `oscp` directory.
