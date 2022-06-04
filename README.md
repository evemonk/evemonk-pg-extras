# evemonk-pg-extras

[![RSpec](https://github.com/evemonk/evemonk-pg-extras/actions/workflows/rspec.yml/badge.svg)](https://github.com/evemonk/evemonk-pg-extras/actions/workflows/rspec.yml)
[![DeepSource](https://static.deepsource.io/deepsource-badge-light-mini.svg)](https://deepsource.io/gh/evemonk/evemonk-pg-extras/?ref=repository-badge)

Service container for running [rails-pg-extras-web](https://github.com/defkode/rails-pg-extras-web).

## Configure

| Environment variable                           | Description                                                                    | Default       | Default in container |
|------------------------------------------------|--------------------------------------------------------------------------------|---------------|----------------------|
| `RAILS_ENV`                                    | Rails environment                                                              | `development` | `production`         |
| `SECRET_KEY_BASE`                              | Rails secret                                                                   | not set       | not set              |
| `RAILS_LOG_TO_STDOUT`                          | Log everything to stdout                                                       | not set       | `true`               |
| `RAILS_SERVE_STATIC_FILES`                     | Serve static assets from /public                                               | not set       | `true`               |
| `RAILS_MAX_THREADS`                            | Rails max threads                                                              | `2`           | as default           |
| `RAILS_MIN_THREADS`                            | Rails min threads                                                              | `2`           | as default           |
| `DATABASE_URL`                                 | Database configuration. Example: `postgres://user:password@localhost/database` | not set       | not set              |
| `RAILS_PG_EXTRAS_USER`                         | User name for auth. Always set!                                                | not set       | not set              |
| `RAILS_PG_EXTRAS_PASSWORD`                     | User password for auth. Always set!                                            | not set       | not set              |

## Example `docker-compose.yml`

```yaml
# TODO: write
```
