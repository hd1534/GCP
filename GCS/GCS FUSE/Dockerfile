FROM ubuntu:20.04

# install gcsfuse
# https://github.com/GoogleCloudPlatform/gcsfuse/blob/master/docs/installing.md
RUN apt-get update && apt-get install -y --no-install-recommends \ 
    gnupg2 ca-certificates curl \
    && echo "deb http://packages.cloud.google.com/apt gcsfuse-focal main" | tee /etc/apt/sources.list.d/gcsfuse.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -


RUN apt-get update && apt-get install -y --no-install-recommends gcsfuse \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /gcs-fuse-test


COPY ./entrypoint.sh ./service-account-file.json /gcs-fuse-test/
ENV BUCKET_NAME test
ENV GOOGLE_APPLICATION_CREDENTIALS /gcs-fuse-test/service-account-file.json


CMD ["./entrypoint.sh"]