package controllers

import (
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

type JSONS struct {
	//Must write
	Code string
	Msg  string
	User []string `json:"user_info"` //Key is renamed, the outermost is the trick
	Like LIKE
}

func (c *UserRegistration) Get() {
    /*
	data := &JSONS{"100", "Get successful",
		[]string{"maple", "18"}, LIKE{"cake", "Movie", "music"}}
	c.Data["json"] = data
	c.ServeJSON()
    */
	c.TplName = "user_registration.tpl"
}
