## MinIO for Windows

### Install from link
`https://min.io/download#/windows`

### Start MinIO server
`minio.exe server E:\minio-data`

## Other Links
`https://naomiaro.hashnode.dev/using-minio-with-django-storages`

## Run Minio Conatiner
`docker run -p 9000:9000 -d -p 9001:9001 -e "MINIO_ROOT_USER=minio123" -e "MINIO_ROOT_PASSWORD=minio123" minio/minio server /data --console-address ":9001"`