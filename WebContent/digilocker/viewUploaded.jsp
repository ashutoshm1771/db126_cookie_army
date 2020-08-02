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
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/sih","root","tulasidevi@11");
            Statement st = con.createStatement();
            String userid=(String)session.getAttribute("did");
			ResultSet rs;
			rs = st.executeQuery("select doc from digilocker where userid=\""+session.getAttribute("username1")+"\" ");
        %>
			<div class="jumbotron">
                <h1 class="display-4">Your Uploaded Documents</h1><br>
                <div align="right"><a class="btn btn-light btn-lg" href="digiPortal.jsp" role="button">Back</a></div>
                <br>
                <hr class="my-4">
                <div class="card">
                    <div class="home-container">
						<div class="flex item-2"> Document Name</div>
                    </div>
					<form method="post" action="submitDigi.jsp">
                        <div class="card-body">
							<%
							while(rs.next())
                            {
                                out.print
                                (
                                    "<div class='home-container-1'>"+
										"<div align='left'><input type='checkbox' name='yes' value='"+rs.getString(1)+"' class='form-check-input' id='exampleCheck1'></div><div align='left'>"+rs.getString(1)+"</div>"+
									"</div>"
                                );
							}
							%>
						</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
							</form>
                        </div>
                </div>
			</div>
</body>
</html>