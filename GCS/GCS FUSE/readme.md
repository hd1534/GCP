<!-- @format -->

```shell
docker build -t gcs-fuse .
```

```shell
docker run --name gcs-fuse-test -e BUCKET_NAME=BUCKET_NAME gcs-fuse -it /bin/bash
```
