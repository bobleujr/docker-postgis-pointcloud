#!/usr/bin/env bash

mkdir pointcloud
cd /pointcloud
chmod 700 /etc/postgresql/9.6/main/postgresql.conf
wget -O pointcloud.tar.gz "https://github.com/pgpointcloud/pointcloud/archive/master.tar.gz" \
   && apt-get update && apt-get -y install autoconf zlib1g-dev build-essential libpq-dev libxml2-dev postgresql-server-dev-9.6 \
   && mkdir -p /usr/src/pointcloud \
   && tar \
       --extract \
       --file pointcloud.tar.gz \
       --directory /usr/src/pointcloud \
       --strip-components 1 \
   && rm pointcloud.tar.gz \
   && cd /usr/src/pointcloud \
   && ./autogen.sh \
   && ./configure --with-pgconfig=/usr/bin/pg_config \
   && make \
   && make install

 cd /