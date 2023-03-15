# analyzer for postgresql and web logs
including pgbadger, goaccess

## postgres

* mount /logs/postgres/
* environment
 * pg_log_line_prefix
 * pg_log_format
 * pg_log_compress_after_days
 * pg_log_delete_after_days

### analyze
```pg-log-analyze.sh```
output in /output

### compress after n days
```pg-log-compress.sh [days]```

### delete after n days
```pg-log-delete.sh [days]```

### goaccess

* mount /logs/goaccess

## compress old

## remove old
