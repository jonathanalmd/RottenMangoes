# README

A Rotten Tomatoes clone using Ruby on Rails!

## Ruby version
* 2.3.3

## Run bundle
* bundle install

## Database creation
* rake db:migrate 

## Insert data from seed (using ActiveRecord) 
* edit 'db/seeds.rb' file
* bin/rails db:seed

## Check Database
* bin/rails console
* Enter: Movie.all

## Start server
* bin/rails server -b 0.0.0.0

## Access the awesome Rotten Mangoes website!
* localhost:3000/movies	

## Problems with bcrypt? Try this:
* Stop the server
* gem install bcrypt --platform-ruby
* Check your bcrypt version:
* gem list bcrypt
* Check bcrypt version in Gemfile (if different, update with the correct bcrypt version)
* bundle install
* Check bcrypt in Gemfile.lock 
* Start the server
* Have fun!