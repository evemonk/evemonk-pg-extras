# evemonk-pg-extras

[![RSpec](https://github.com/evemonk/evemonk-pg-extras/actions/workflows/rspec.yml/badge.svg)](https://github.com/evemonk/evemonk-pg-extras/actions/workflows/rspec.yml)
[![DeepSource](https://static.deepsource.io/deepsource-badge-light-mini.svg)](https://deepsource.io/gh/evemonk/evemonk-pg-extras/?ref=repository-badge)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)

Service container for running [rails-pg-extras](https://github.com/pawurb/rails-pg-extras).

## Configure

| Environment variable               | Description                                                                    | Default       | Default in container |
|------------------------------------|--------------------------------------------------------------------------------|---------------|----------------------|
| `RAILS_ENV`                        | Rails environment                                                              | `development` | `production`         |
| `SECRET_KEY_BASE`                  | Rails secret                                                                   | not set       | not set              |
| `WEB_CONCURRENCY`                  | Number of CPU                                                                  | not set       | not set              |
| `RAILS_MAX_THREADS`                | Rails max threads                                                              | `3`           | as default           |
| `DATABASE_URL`                     | Database configuration. Example: `postgres://user:password@localhost/database` | not set       | not set              |
| `RAILS_PG_EXTRAS_USER`             | User name for auth. Always set!                                                | not set       | not set              |
| `RAILS_PG_EXTRAS_PASSWORD`         | User password for auth. Always set!                                            | not set       | not set              |
| `RAILS_PG_EXTRAS_PUBLIC_DASHBOARD` | Public dashboard?                                                              | not set       | not set              |

## Example `docker-compose.yml`

```yaml
services:
  pg-extras:
    image: "docker.io/biow0lf/evemonk-pg-extras:main"
    container_name: "evemonk_pg_extras"
    restart: "unless-stopped"
    environment:
      SECRET_KEY_BASE: "secret-key-base" # run `rails secret` for generate new
      DATABASE_URL: "postgres://user:password@localhost/database"
      RAILS_MAX_THREADS: "1"
      RAILS_PG_EXTRAS_USER: "root"
      RAILS_PG_EXTRAS_PASSWORD: "password"
```
