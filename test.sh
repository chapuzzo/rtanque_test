#!/bin/bash

gem install bundler

bundle exec rtanque new_bot test
bundle exec rtanque start bots/test.rb:x2 --max-ticks 50 --gui=false
bundle exec rtanque start bots/test.rb:x2 --max-ticks 50
