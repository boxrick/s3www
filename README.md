# s3www
Serve up an S3 bucket fork and mod of https://github.com/harshavardhana/s3www/
Main difference is it takes ENV vars and it builds without needing GOLANG locally.

## Build
```
docker build . -t s3www
```

## Run
Modify env.list with correct ENV variables

```
docker run --env-file env.list  --rm -p 8080:8080 s3www
```

Access locally on https://127.0.0.1:8080
