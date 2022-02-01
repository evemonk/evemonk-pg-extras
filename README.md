# evemonk-pg-extras

Service container for running [rails-pg-extras-web](https://github.com/defkode/rails-pg-extras-web).

## Configure

| Environment variable | Description | Default | Default in container |
|----------------------|-------------|---------|----------------------|
| `RAILS_ENV` | Rails environment | `development` | `production` |
| `SECRET_KEY_BASE` | Rails secret | not set | not set |
| `RAILS_LOG_TO_STDOUT` | Log everything to stdout | not set | `true` |
| `RAILS_SERVE_STATIC_FILES` | Serve static assets from /public | not set | `true` |
| `RAILS_MAX_THREADS` | Rails max threads | `2` | as default |
| `RAILS_MIN_THREADS` | Rails min threads | `2` | as default |
| `DATABASE_URL` | Database configuration. Example: `postgres://user:password@localhost/database` | not set | not set |
| `PG_EXTRAS_USER` | User name for auth. Always set! | not set | not set |
| `PG_EXTRAS_PASSWORD` | User password for auth. Always set! | not set | not set |
| `NEW_RELIC_LICENSE_KEY` | New Relic license key | not set | not set |
| `NEW_RELIC_AGENT_ENABLED` | New Relic Agent enabled? | not set | `false` |
| `NEW_RELIC_APP_NAME` | New Relic app name | not set | not set |
| `NEW_RELIC_LOG_FILE_PATH` | New Relic log file path | not set | `STDOUT` |
| `NEW_RELIC_BROWSER_MONITORING_AUTO_INSTRUMENT` | New Relic browser monitoring | not set | not set |

[More New Relic agent options](https://docs.newrelic.com/docs/apm/agents/ruby-agent/configuration/ruby-agent-configuration/)

## Example `docker-compose.yml`

```yaml
# TODO: write
```
