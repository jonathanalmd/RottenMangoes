# README

A Rotten Tomatoes clone using Ruby on Rails!

## Ruby version
* 2.3.3

## Run bundle
* bundle install

## Database creation
* rake db:create
* rake db:migrate

## Insert data from seed (using ActiveRecord)
1) edit 'db/seeds.rb' file (if you want, there are some examples to populate the database)
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
2)
* gem install bcrypt --platform-ruby
3) Check your bcrypt version:
* gem list bcrypt
3) Check bcrypt version in Gemfile (if different, update with the correct bcrypt version)
5)
* bundle install
4) Check bcrypt in Gemfile.lock
5) Start the server:
* bin/rails server -b 0.0.0.0
6) Access the awesome Rotten Mangoes website:
* localhost:3000
7) Have fun!

## Problems with rmagick (Mac)? Try this:
* brew install pkg-config
* brew install imagemagick
* brew install imagemagick@6
* brew link imagemagick@6 --force
* gem install rmagick

## Console not working? Try this:
* spring stop

## Problems to stop session? Try this:
* session.clear

## Problems to initialize server (address already in use)? Try this:
* lsof -wni tcp:3000
* kill -9 [PID]
