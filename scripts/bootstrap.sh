#!/bin/bash 

# Install rvm and ruby:
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby=ruby-2.2.1 --with-default-gems="bundler"
echo 'gem: --no-document' >> ~/.gemrc
echo "Sourcing RVM.."
source ~/.rvm/scripts/rvm

# Set the application up
echo "Going to Vagrant directory..."
cd /vagrant

echo "Doing bundle install..."
bundle install
rake db:setup
gem install foreman

# For convenience:
echo 'cd /vagrant' >> ~/.bash_profile
