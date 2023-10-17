# Flatpak.org website

## Installation and setup

To set up middleman locally on Fedora:

```shell
dnf install ruby rubygems rubygem-bundler rubygem-json
```

In the git checkout, do a `bundle install`. This installs all
the needed modules in their appropriate versions.

Add the middleman binary location (probably ~/bin) to $PATH.

## Testing

To run a local web server to test the site:

```sh
bundle exec middleman server
```

Edit the haml/scss files and commit your changes, pushing to
origin/source.

## Devcontainer

You can also use the devcontainer, for e.g. with VSCode. It should setup automatically and just expects you to run the testing command from above or command you would like to run.

## Deployment

Pushing new commits automatically causes to trigger new build
and deployment on OpenShift. It usually takes few minutes for
changes to become visible. Files used for build can be found
in `oscp` directory.
