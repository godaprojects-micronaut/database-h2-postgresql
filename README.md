# Micronaut Database App
Setting up database micronaut app from scratch

Before anything install the database (postgresql)
```
docker run -it --rm     -p 5432:5432     -e POSTGRES_USER=dbuser     -e POSTGRES_PASSWORD=theSecretPassword     -e POSTGRES_DB=micronaut     postgres:11.5-alpine
```

1. Create the app
```
mn create-app database-h2-postgresql --build maven
```
2. Update the pom.xml - Annotation processing is critical, java version to 11
3. Setup the application.yml file - database related stuff and the package to scan
4. Thats it! Run the systems
5. Run these commands 
```
mvn clean package
mvn mn:run
```
6. Calls are (test them) 
```
GET /friend/1 HTTP/1.1
Host: localhost:8080
Cache-Control: no-cache
Postman-Token: 2ea71bed-0967-fdec-57ed-f93f151868fa
```
```
POST /friend HTTP/1.1
Host: localhost:8080
Content-Type: application/json
Cache-Control: no-cache
Postman-Token: 2944af07-ed66-c6ca-1bff-f3b744fc83dc

{
	"name" : "goda"
}
```
## Feature http-client documentation

- [Micronaut Micronaut HTTP Client documentation](https://docs.micronaut.io/latest/guide/index.html#httpClient)

