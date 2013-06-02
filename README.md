# Phonely Feud

This is a Rails 4 web application where you enter a phone number and see if it is a scam or not.

## Development

Install these things:

* MRI ruby
* Postgresql

```sh
cp config/database.yml.template config/database.yml
# edit config/database.yml with your username
rake db:create
rake db:migrate
rake
```
