<!DOCTYPE html>

<html>
<head>
  <title>Beego</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Add Bootstrap CDN-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Lora&family=Roboto:wght@100&display=swap" rel="stylesheet">
  <style type="text/css">
  .container .register-btn{
    background-color:teal;
    height:40px;
    width:100px;
    color:#ffe6e6;
    border:none;
    margin-left:100px;
  }
  body{
    background-color:	#ffe6e6;
  }
  .container{
    background-color:#ffffff;
    color:black;
    font-family: 'Lora', serif;
    height:1000px;
  }
  .container .heading-container{
    text-align:center;
  }
  </style>
</head>

<body>
  <header>
    <h1></h1>
    <div >
    </div>
  </header>
  <div class="container">
    <form action="/add-user" method="post" >
      <div class="heading-container">
      <h1>Register Here</h1>
      <p>Please fill in this form to create an account.</p>
      </div>
      <div class="form-group">
        <label for="firstName">First Name</label>
        <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter First Name">
      </div>
      <div class="form-group">
        <label for="lastName">Last Name</label>
        <input type="text" class="form-control" id="lastName" name="lastName" placeholder=" Enter Last Name">
      </div>
      <div class="form-group">
        <label for="email">Email address</label>
        <input type="email" class="form-control" id="email" name="email"  placeholder=" Enter Email">
      </div>
      <div class="form-group">
        <label for="phone">Phone number</label>
        <input type="text" class="form-control" id="phone" name="phone"  placeholder="Enter Phone number">
      </div>
      <div class="form-group">
        <label for="dob">Date of birth</label>
        <input type="date" id="dob" name="dob" class="form-control">
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
      </div>
      <button type="submit" class="register-btn">Submit</button>
    </form>
  </div>
 
</body>
</html>
