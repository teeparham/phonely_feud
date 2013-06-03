# Phonely Feud

This is a Rails 4 web application where you enter a phone number and see if it is a scam or not.

## [See it here](http://phonely-feud.heroku.com)

### Development

Install these things:

* MRI ruby 2.0
* Postgresql 9.2

```sh
cp config/database.yml.template config/database.yml
# edit config/database.yml with your username
rake db:create
rake db:migrate
rake
```
