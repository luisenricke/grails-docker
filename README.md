# Grails with Docker

## Run the application in the container

### Build application
```powershell
.\gradlew clean assemble
```

### Build container
```powershell
docker build --tag=grails-docker:latest .
```

### Test container
```powershell
docker run --name grails-docker-test --rm -p 8080:8080 grails-docker:latest
```

### Dockerize Application
```powershell
docker-compose config
docker-compose build
docker-compose up
```

## Reference

- [Dockerizing a Spring Boot Application :: Baeldung](https://www.baeldung.com/dockerizing-spring-boot-application)
- [Deployment :: Grails Guide](https://docs.grails.org/latest/guide/deployment.html)
- [Basic Repository of Docker :: GitHub](https://github.com/platzi/docker)
