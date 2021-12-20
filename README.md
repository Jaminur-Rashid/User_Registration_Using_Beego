# User_Registration_Using_Beego
This is a simple user registration application using beego and postgresql.

### Project Features
* Register user with properties like First Name, Last Name, Email, Phone, Password, Date of birth
* Stores user hashed password
* Validated user data before inserting into the Database
* For form validation I have used regular expression, and hard coded the error message if have.
# Prerequisites
* Go
* Beego and bee
* Postgresql
* Install and configure golang

# How the run the project
To run the project follow the procedure below,
* After installing and configuring go, beego and bee in the system clone the github repository.

* After creating a database and user_info_table run,
``` bash
go mod tidy
```
The above command will import all the dependencies of the project.
* To run the application run,
 ``` bash
 bee run
```
Now go to the URL,
``` bash
http://localhost:8080/swagger/
```
Now you can test the api in the Object section
