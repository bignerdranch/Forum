[![Build Status](https://magnum.travis-ci.com/bignerdranch/Forum.svg?token=eJs3yPt6XuqFzzXes9Eb&branch=master)](https://magnum.travis-ci.com/bignerdranch/Forum)

#Forum
An app for people to discuss Big Nerd Ranch books.

##Goal
Create a collaborative environment for readers of Big Nerd Ranch books.

##Requirements
* Ruby 2.2.1
* Postgresql
* Rails 4.2.1

##Bootstrap

Fork the repo:

* Visit the [BNR Forum](https://github.com/bignerdranch/forum) page
* Fork the repo by clicking the fork button in the top right hand corner of the page.

Clone your fork:

* Go to the the Github page for your BNR Forum fork. The URL should read as follows:
`https://www.github.com/YOUR-GITHUB-USERNAME/Forum`
* Click the clipboard icon on the right side of the page in order to get the SSH url of the repo.
* In your terminal, type
  `$ git clone` & paste SSH url
* Press enter

Install gems:

`$ bundle`


Set up database/schema:

`$ rake db:create`

`$ rake db:migrate`


Run application locally

`$ rails server`

Type [localhost:3000](http://localhost:3000) in browser


##Test application

`$ rake db:test:prepare`

`$ rspec spec`

##Application Environment Variables include:

* ENV["GMAIL_USERNAME"]
* ENV["GMAIL_PASSWORD"]
* ENV["GMAIL_DOMAIN"]
