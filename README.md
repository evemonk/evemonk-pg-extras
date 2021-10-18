# evemonk-pg-extras

Service container for running `rails-pg-extras-web`.

## Configure

| Environment variable | Description | Default | Default in container |
|----------------------|-------------|---------|----------------------|
| `RAILS_ENV` | Rails environment | `development` | `production` |
| `RAILS_LOG_TO_STDOUT` | Log everything to stdout | not set | `true` |
| `RAILS_SERVE_STATIC_FILES` | Serve static assets from /public | not set | `true` |
| `RAILS_MAX_THREADS` | Rails max threads | `2` | as default |
| `RAILS_MIN_THREADS` | Rails min threads | `2` | as default |
| `PG_EXTRAS_USER` | User name for auth. Always set! | not set | not set |
| `PG_EXTRAS_PASSWORD` | User password for auth. Always set! | not set | not set |

## Example `docker-compose.yml`

```yaml
# TODO: write
```