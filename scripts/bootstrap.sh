#!/bin/bash 

# Install rvm and ruby:
RUBY=ruby-2.2.2

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby=$RUBY --with-default-gems="bundler rails"
echo 'gem: --no-document' >> ~/.gemrc
echo "Sourcing RVM.."
source ~/.rvm/scripts/rvm

# Set the application up
echo "Going to Vagrant directory..."
cd /vagrant

if [ -f Gemfile ]; then
	echo "Doing bundle install..."
        if [ -f .ruby-gemset ]; then
                GEMSET=`cat .ruby-gemset`
                rvm use $RUBY@$GEMSET --create
        fi
	bundle install
	rake db:setup
else
	echo "Initializing Rails app..."
	mv .gitignore backup.gitignore
	rails new . --database=postgresql
	cat backup.gitignore >> .gitignore
	rm backup.gitignore
fi

gem install foreman

# For convenience:
echo 'cd /vagrant' >> ~/.bash_profile
