# Auth server

Part of a job interview. You could call this an "OAuth2 proxy" that is able to
serve as a central authentication server for a ton of websites. By "a ton" meant
"so many so it's useless to keep a list of these".

## Prerequisites:

* Rails 4.2.3 (and whatever it requires)
* PostgreSQL (or, given more time, any other RDBMS)
  * Ubuntu and derivatives may need `libpq-dev`
* Copy `config/*.example.yml` into `config/*.yml` and fill in with your data
  * You need your own Facebook application for that
