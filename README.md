# README

A Rotten Tomatoes clone using Ruby on Rails!

## Ruby version
* 2.3.3

## Run bundle
* bundle install

## Database creation
* rake db:migrate 

## Insert data from seed (using ActiveRecord) 
1) edit 'db/seeds.rb' file
2) Run:
* bin/rails db:seed
## Check Database
  bin/rails console
  Enter: Movie.all

## Start server
* bin/rails server -b 0.0.0.0

## Access the awesome Rotten Mangoes website!
* localhost:3000/movies	

## Problems with bcrypt? Try this:
1) Stop the server
* gem install bcrypt --platform-ruby
2) Check your bcrypt version:
* gem list bcrypt
3) Check bcrypt version in Gemfile (if different, update with the correct bcrypt version)
* bundle install
4) Check bcrypt in Gemfile.lock 
5) Start the server
* bin/rails server -b 0.0.0.0
6) Access the awesome Rotten Mangoes website
* localhost:3000/movies	
7) Have fun!
