<!DOCTYPE html>
<html>
<head>
    <title>DigiLocker</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script type="text/javascript">
	var onloadCallback = function() {
	  grecaptcha.render('html_element', {
		'sitekey' : '6Lenzu0UAAAAANwru86INC1KaBKQ-llAVyRItx-s'
	  });
	};
  </script>
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
.jumbotron {
    margin-top: 10%;
  background-color: beige;
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
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4" id="header"align="center">Digilocker Upload</h1>
            <br>
            <div align="right"><a class="btn btn-light btn-lg" href="digiPortal.jsp" role="button">Back</a></div>
            <br>
            <hr class="my-4">
            <br>
            <form method="post" action="uploadNew2.jsp">
                <div class="container">
                    <div class="row">
                         <div class="col-sm">
                                 <div class="form-group">
                                      <label for="exampleInputReg1">Document Name*</label>
                                      <input type="text" class="form-control" name="did" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Enter the document name " required>
                                      <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                 </div>
                         </div>
                      </div>
                 </div>
                 <div class="container">
                    <div class="row">
                        <div class="col-sm">
                                 <div class="form-group">
                                    <label for="exampleFormControlFile1">Upload the Document ( .pdf format) *</label>
                                    <input type="file" name="doc" accept=".pdf" class="form-control-file" id="exampleFormControlFile1">
                                  </div>
                         </div>
                      </div>
                 </div>
                 <br>
               <div class="text-center">
              <button type="submit" class="btn btn-primary">Upload</button>
              </div>
            </form>
        </div>
    </div>
</body>
</html>