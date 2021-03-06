#!/bin/bash 

sudo apt-get update -qq && sudo apt-get install -qq devscripts build-essential equivs python-software-properties

yes | sudo mk-build-deps -i

yes | debuild -uc -us

sudo dpkg -i ../zk-flock*.deb || sudo apt-get install -f
