## Introduction
This is Online education system,means students or freshers can enroll for any course at any time.and they can learn/work from home.
## Features
- User authentication and authorization
- CRUD operations for entities
- RESTful API integration
- Frontend with JSP
- validation
## Technologies Used

- Spring MVC
- Spring Boot
- Hibernate
- JSP
- HTML
- CSS
- MySQL 
- Maven
- JDBC
## Prerequisites
-Eclipse IDE
- Java 1.8
- spring boot 2.7.17
- MySQL 5.1.6 Server
## Import Project in Eclipse
open Eclipse->file->import->type git->click on projects from git(with smart import)->next->click on clone url->next->next->until you not got finish button->click on finish.
## Required Dependencies
## spring web.
Provide Apache Tomcat Server as  default Embedded container.
<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-web</artifactId>
		</dependency>
## Spring Boot devtools.
provide fast application restart or live Reload and increases development experience.
<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-devtools</artifactId>
			<scope>runtime</scope>
			<optional>true</optional>
		</dependency>
## MySQL Driver.
help to prived Database connection.
<dependency>
			<groupId>mysql</groupId>
			<artifactId>mysql-connector-java</artifactId>
			<version>5.1.6</version>
		</dependency>
## Spring Data JPA.
helps for Persist data in SQL stores with Java Persistence API using Spring Data and Hibernate.
	<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-data-jpa</artifactId>
		</dependency>
## tomcat-embed-jasper.
Allow spring application to return jsp pages as view.
<dependency>
			<groupId>org.apache.tomcat.embed</groupId>
			<artifactId>tomcat-embed-jasper</artifactId>
		</dependency>
## update application.properties 
Go to project ->go to src/main/resources folder->click on application.properties file

## Add below code in that file
spring.application.name=Vaishnavi.online.Education.System
spring.datasource.url = jdbc:mysql://localhost:3306/Your_DB_Name?createDatabaseIfNotExist=true
spring.datasource.username = Your_Username
spring.datasource.password = Your_Password
spring.datasource.driver-class-name=com.mysql.jdbc.Driver
spring.jpa.hibernate.ddl-auto = update
spring.jackson.serialization.fail-on-empty-beans=false
spring.mvc.view.prefix=/view/
spring.mvc.view.suffix=.jsp

# API Testing 
http://localhost:8080/             //this api for home page
http://localhost:8080/uLogin       //this api for user login
http://localhost:8080/CreateAccount  //this api for Create Account
http://localhost:8080/adlogin       //this api for admin login

# To login At admin and user side use below username and password
# user side
username ->Vaishnavi
Password-> 1111
# Admin side
username ->vaishnavi
Password-> 1111
# or u can create new account for only user.
## License
This project is licensed under the Apache License, Version 2.0
## Acknowledgements
.spring Framework
.Bootstrap
