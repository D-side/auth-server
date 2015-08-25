# Auth server

Part of a job interview. You could call this an "OAuth2 proxy" that is able to
serve as a central authentication server for a ton of websites, writing all of
which to Facebook is not feasible.

To see it working in its entirety, you need
[`auth-client`](https://github.com/D-side/auth-client)
or any other OAuth2 client implementation.

## Prerequisites:

* Rails 4.2.3 (and whatever it requires)
* PostgreSQL (or, given more time, any other RDBMS)
  * Ubuntu and derivatives may need `libpq-dev`
* Copy `config/*.example.yml` into `config/*.yml` and fill in with your data
  * You need your own Facebook application for that

## When it's finally running...

You'll need to register a client. Yes, I know, for a ton of websites, but it's
our own database, we can do whatever we want.
