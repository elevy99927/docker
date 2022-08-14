# Running Docker Containers, without docker command

Running docker containers using REST API calls


1. pulling your docker image
```
$ docker pull nginx
```
2. create NGINX container
``` 
$ curl -XPOST --unix-socket /var/run/docker.sock -d '{"Image":"nginx"}' -H 'Content-Type: application/json' http://localhost/containers/create

{"Id":"ffc891622c19d5aebae9cd1254d417ca11509a2b424df03b9e45cc9df385da25","Warnings":[]}

```

3. start your container

```
curl -XPOST --unix-socket /var/run/docker.sock http://localhost/containers/ffc891622c19d5aebae9cd1254d417ca11509a2b424df03b9e45cc9df385da25/start
```
4. View your container
```
docker ps
```
5. stop your container
```
curl -XPOST --unix-socket /var/run/docker.sock http://localhost/containers/ffc891622c19d5aebae9cd1254d417ca11509a2b424df03b9e45cc9df385da25/stop
```
