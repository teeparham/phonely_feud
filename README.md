# Phonely Feud

Phonely Feud is a web application where you enter a phone number and see if it is a scam or not.

This project was [created out of frustration](https://neighborland.com/ideas/bldr-a-better-phone-spam-websi) 
after receiving a fairly sophisticated scam phone call and not being able to easily report it to the FCC or 
other government agency.

Initial development was done as part of the [Boulder Civic Hackathon](http://bouldercivichackfest.org/) and
the [National Day of Civic Hacking](http://hackforchange.org/).

## [Visit the website](http://phonely-feud.herokuapp.com)

### Stack

* Rails 4.0
* Ruby 2.0
* Postgresql 9.2
* Zurb Foundation
* Hosted on [Heroku](https://heroku.com)

### Development

Install these things:

* ruby 2.0
* Postgresql 9.2

Fork/clone the repository.

Do this:

```sh
bundle
cp config/database.yml.template config/database.yml
# edit config/database.yml with your username
rake db:create
rake db:migrate
rake
```
