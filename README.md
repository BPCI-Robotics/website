bpci-robotics.github.io
======

Overview
--------

This repository is the source code to our website running at https://bpci-robotics.github.io.
It is a fork of mpv.io.

Setup a local development environment
-------------------------------------

The website is created using a static website generator called
[Middleman](http://middlemanapp.com/). Here's what you need to do to get a
copy of the website running on your local machine.

- Optional: have ``rbenv`` or ``rvm`` installed. These tools will automatically
  select the correct version of Ruby based on the ``.ruby-version`` file.
  Alternatively you will need to install Ruby 2.7 (**not** 3.x) manually.
- ``gem install bundler:1.17.3``
- ``bundle _1.17.3_ install``
- ``rbenv rehash`` (only if using ``rbenv``)
- ``bundle exec middleman server``
- See the website running at: http://localhost:4567/
