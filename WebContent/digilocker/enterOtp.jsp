<!-- Cookie Army -->
<%@ page import = "java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@page  import ="java.io.BufferedReader,java.util.Random,java.io.InputStreamReader,java.net.HttpURLConnection,java.net.URL,java.io.*,java.util.Scanner"
%>
<script>

</script>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/etendering","root","tulasidevi@11");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select aphno from aadhar where ano='"+session.getAttribute("ano")+"'");
rs.next();
String bphno=rs.getString(1);
if(bphno == null)
{
	response.sendRedirect("error.jsp");
}

con.close();

%>



<%
int otttp;
try {
// Construct data
Random rand = new Random();

otttp = rand.nextInt(10000);
String s = Integer.toString(otttp);
session.setAttribute("ootp",s); 
String apiKey = "apikey=" + "qbgAjg/MTKQ-bTkeWfcroxm7WV1FdZaeCSHSBibftp";
String message = "&message=" + "Your Etendering Otp: "+s+"\nDon't share with anyone" ;
String sender = "&sender=" + "TXTLCL";
String numbers = "&numbers=" + bphno;

// Send data
HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
String data = apiKey + numbers + message + sender;
conn.setDoOutput(true);
conn.setRequestMethod("POST");
conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
conn.getOutputStream().write(data.getBytes("UTF-8"));
final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
final StringBuffer stringBuffer = new StringBuffer();
String line;
while ((line = rd.readLine()) != null) {
stringBuffer.append(line);
}
rd.close();

 
} catch (Exception e) {
System.out.println("Error SMS "+e);

}

%>
<!DOCTYPE html>
<html>
<head>
	<title>Etender</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script src="js/cities.js"></script>
<script type="text/javascript" src="js/preferential.js"></script>
<script type="text/javascript" src="js/bidderTypeLoc.js"></script>
<script type="text/javascript">
	var onloadCallback = function() {
	  grecaptcha.render('html_element', {
		'sitekey' : '6Lenzu0UAAAAANwru86INC1KaBKQ-llAVyRItx-s'
	  });
	};
  </script>
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
<script>
let cTime = 60;
function myTimer(){
  if(cTime == 0){
    document.getElementById("timerButton").innerHTML = "Resend code";
  } else{
    document.getElementById("timerButton").innerHTML = "Resend code in "+cTime+" seconds.";
    cTime = cTime - 1;
    setTimeout(myTimer, 1000);
  }
}
</script>
  <link rel="stylesheet" href="css/global.css">
</head>
<body>



<div class="navbar">
	<div class="flex item-12"><img class="logo" src="images/satya3.png" alt="goi-logo" class="left-img"></div>
    <div class="flex item-13"><img class="logo" src="images/topbanb.png" alt="goi-logo" class="img-ban" style="width: 144%;"></div>
    <div class="flex item-14"><img class="logo1" src="images/satya3.png" alt="goi-logo" class="right-img"></div>
</div>

<div class="datass">    
<div class="flex datas1" id="date1"></div>
<div class="flex datas2"><marquee>eTendering System - Government of India
</marquee></div>
</div>
<div class="menu">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span id="If">
        <span id="For">
          
            <span>
              <a id="link1" name="link1" title="Search" class="Menu" href="/eprocure/app?page=FrontEndAdvancedSearch&amp;service=page" target="_self">Search</a>
          </span>
          <span class="divider1" id="Insert_2">|</span>
      </span><span id="For_0">
          
            <span>
              <a id="link1" name="link1" title="Active Tenders" class="Menu" href="/eprocure/app?page=FrontEndLatestActiveTenders&amp;service=page" target="_self">Active Tenders</a>
          </span>
          <span class="divider1" id="Insert_2_0">|</span>
      </span><span id="For_1">
          
            <span>
              <a id="link1" name="link1" title="Tenders by Closing Date" class="Menu" href="/eprocure/app?page=FrontEndListTendersbyDate&amp;service=page" target="_self">Tenders by Closing Date</a>
          </span>
          <span class="divider1" id="Insert_2_1">|</span>
      </span><span id="For_2">
          
            <span>
              <a id="link1" name="link1" title="Corrigendum" class="Menu" href="/eprocure/app?page=FrontEndLatestActiveCorrigendums&amp;service=page" target="_self">Corrigendum</a>
          </span>
          
          
      </span>		
</span>
</div>
	<div class="main-body">
<!--Aside starts from here-->	

<!--Main starts from here-->
			<div class="jumbotron" style="width: 50%; margin-left: 500px;">
                <h1 class="display-4">Enter The OTP you received.</h1>
                <p class="lead">OTP verification.</p>
                <hr class="my-4">
                <p class="lead">
                  <form method="POST" action="otpVeri.jsp">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm">
                                 <div class="form-group">
                                    <label for="exampleInputPoy1">Enter the OTP you received</label>
                                    <input type="text" class="form-control" name="otp" id="exampleInputClg1"  aria-describedby="colHelp" placeholder="OTP Number" required>
                                    <small id="emailHelp" class="form-text text-muted">Received in Your Phone Number</small>
                             </div>
                             <div class="col-sm">
                                 <div class="form-group">
                                    <button id = "timerButton" class="btn btn-primary" onclick = "myTimer()"><a style="color:white" href="enterOtp.jsp">Resend code</a></button>
                             </div>
                          </div>
                     </div>
                    </div>  
                    &nbsp; &nbsp; <hr class="my-4">
                       <div class="g-recaptcha" data-sitekey="6Lenzu0UAAAAANwru86INC1KaBKQ-llAVyRItx-s"></div><br>
                      &nbsp;&nbsp;&nbsp;&nbsp;	<button type="submit" class="btn btn-primary">Submit</button>
                  </form>
                </p>
            </div>

<!--Login starts from here-->	

<footer class="footer-box">
    <div class="container">
      <span class="text-muted">Contents owned and maintained by concerned Departments in coordination with Finance Department and Information Technology Department, Government of India.</span>
    </div>
  </footer>
<script>
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();
    today = mm + '/' + dd + '/' + yyyy;
    document.getElementById("date1").innerHTML=today;
</script>
</body>
</html>