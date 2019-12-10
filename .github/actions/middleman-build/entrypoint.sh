#!/bin/bash
set -x
set -e

cd $GITHUB_WORKSPACE
bundle install
middleman build
