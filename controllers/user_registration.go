package controllers

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"

	beego "github.com/beego/beego/v2/server/web"
)

type UserRegistration struct {
	beego.Controller
}

/*
user data type
*/
type LIKE struct {
	Food   string
	Watch  string
	Listen string
}
type User struct {
	FirstName   string `json:"FirstName"`
	LastName    string `json:"LastName"`
	Phone       string `json:"Phone"`
	Email       string `json:"Email"`
	Password    string `json:"Password"`
	DateOfBirth string `json:"DoB"`
}

func (c *UserRegistration) Get() {
	c.TplName = "user_registration.tpl"
	/*
		data := &JSONS{"100", "Get successful",
			[]string{"maple", "18"}, LIKE{"cake", "Movie", "music"}}
		c.Data["json"] = data
		c.ServeJSON()
	*/
}
func (u *UserRegistration) Post() {
	var obj User
	email := u.GetString("email")
	phone := u.GetString("phone")
	dateOfBirth := u.GetString("dob")
	password := u.GetString("password")
	firstName := u.GetString("firstName")
	lastName := u.GetString("lastName")

	obj.FirstName = firstName
	obj.LastName = lastName
	obj.Email = email
	obj.Phone = phone
	obj.DateOfBirth = dateOfBirth
	obj.Password = password

	userData, _ := json.Marshal(map[string]string{
		"FirstName":   firstName,
		"LastName":    lastName,
		"Phone":       phone,
		"Email":       email,
		"Password":    password,
		"DoB": dateOfBirth,
	})
	responseBody := bytes.NewBuffer(userData)
	fmt.Println(responseBody)
	/*
		call Beego_Restful_Api with user data
	*/
	resp, err := http.Post("http://127.0.0.1:8080/v1/object", "application/json", responseBody)
	if err != nil {
		log.Fatalf("An Error Occured %v", err)
	}
	defer resp.Body.Close()
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}
	sb := string(body)
	fmt.Println(sb)
	//fmt.Println(postBody)

	u.TplName = "user_registration.tpl"
}
