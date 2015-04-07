# rails-box

Barebones Vagrant box for Rails development.

## Usage:

1. Clone the repository
2. Change the folder name to your app's name and delete the .git folder to clear the history
2. `vagrant up` to boot the machine
3. `vagrant ssh` to connect (note that the box is configured to `cd` into the `/vagrant` folder after login)
4. `rails new . --database=postgresql` to initialize the project
