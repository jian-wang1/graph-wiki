Installation:

+ Login Registry

```
docker login quay.io
```

+ build image

```
docker build . -t quay.io/wework/graph-wiki
```

+ push image

```
docker push quay.io/wework/graph-wiki
```

+ data prep / migration

prepare wiki files, or import files to the server.

Everything can be imported into this wiki in a drag and drop maner. 


+ local launch

```
sudo docker-compose up
```
