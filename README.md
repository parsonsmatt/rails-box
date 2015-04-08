# rails-box

Barebones Vagrant box for Rails development with PostgreSQL

## Usage:

### I already have a Rails app and I want to put it on Vagrant

1. Download the Vagrantfile and the scripts folder
2. Copy into your Rails project
3. `vagrant up` will boot the box.
4. It'll install all the stuff, run your `bundle install`, and setup the database.
5. `vagrant ssh` and `foreman start` will begin the Rails server, listening on `localhost:3000` :)

### I want to start a new Rails app

1. Clone the repository
2. Change the folder name to your app's name and delete the .git folder to clear the history
3. `vagrant up` to boot the machine
4. It'll install PostgreSQL, rvm, Ruby, Bundler, Rails and initialize the Rails app.
5. `vagrant ssh` and `foreman start` will begin the Rails server, listening on `localhost:3000` :)
