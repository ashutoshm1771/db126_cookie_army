<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

<style type="text/css">
    body{
			background: beige;
      font-family: 'Roboto', sans-serif;
}
#form{
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;
    border:solid gray;
    background:white;
    width:300px;
    border-radius:5px;
    margin:60px auto;
    padding:20px;
}
.input-name{
    flex:1;
}
.input-paswd{
    flex:1;
    margin:15px 0px;
}
.input-button{
    flex:1;
    margin:5px 0px;
}
.log{
    margin: 5px;
}
.top-ban{
    display: flex;
    justify-content: center;
    align-items: center;
}
#button
{
color:#fff;
background:#337ab7;
padding:5px;
margin-left:69;
width: 100px;
border-radius: 25px;
border-color: #337ab7;
}
</style>
</head>
<body>
    <div class="top-ban">
        <img  class="topban" src="digilocker.jpg">
    </div>
    <div id='form'>
        <form action="#" method="POST">
        <center><h3>Login</h3></center>
        <div class="log input-uname">
            <b>Username</b>&nbsp&nbsp<input type='text' id="username" name="user" placeholder="Username"  required />
        </div>
        <div class="log input-pswd">
            <b>Password</b>&nbsp&nbsp&nbsp<input type='password' id="password" name="pass" placeholder="Password" required />
        <div>
        <div class="log input-button"></div>
           <center> <input type='submit' id='button' value='Login'/><br><br>
            <a href="newUserReg.jsp">New User? Register Here!</a>
        </center>
        </div>
        
    </div>
</div>
</body>
</html>