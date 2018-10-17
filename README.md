# [Docker PostGIS](https://github.com/kartoza/docker-postgis) + [PointCloud](https://github.com/pgpointcloud/pointcloud)

Repo containing the code for a Docker image containing PostGIS and PointCloud, based on PostgreSQL 9.6.

## How to run

```
docker pull bobleujr/pointcloudpostgis
```

To build the image yourself without apt-cacher (also consumes more bandwidth
since deb packages need to be refetched each time you build) do:

```
docker build -t your_image_name git://github.com/bobleujr/docker-postgis-pointcloud
```

To create a running container do:

```
docker run --name container_name -p 25432:5432 -d -t bobleujr/pointcloudpostgis
```

## Environment variables

You can also use the following environment variables to pass a 
user name, password and/or default database name.

* -e POSTGRES_USER=<PGUSER> 
* -e POSTGRES_PASS=<PGPASSWORD>
* -e POSTGRES_DBNAME=<PGDBNAME>