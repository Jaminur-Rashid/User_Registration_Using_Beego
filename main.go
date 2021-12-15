package main

import (
	_ "User_Registration_Using_Beego/routers"
	beego "github.com/beego/beego/v2/server/web"
)

func main() {
	beego.Run()
}

