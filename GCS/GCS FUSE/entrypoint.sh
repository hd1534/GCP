# https://github.com/GoogleCloudPlatform/gcsfuse/blob/master/docs/mounting.md

#!/bin/bash

# Credentials
echo $GOOGLE_APPLICATION_CREDENTIALS
cat $GOOGLE_APPLICATION_CREDENTIALS

# Static Mounting
mkdir ./mount
gcsfuse $BUCKET_NAME ./mount

# Test
mkdir ./mount/test-gcs-fuse
echo "hello?" > ./mount/test-gcs-fuse/hello.txt
