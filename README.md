# jenkins-docker
Custom Jenkins Docker Image

## To build a image
```
docker build -t dalves/jenkins:v0.0.1 .
```

## To run a image
```
docker run -p 8080:8080 -p 50000:50000 -v .:/var/jenkins_home dalves/jenkins:v0.0.1
```