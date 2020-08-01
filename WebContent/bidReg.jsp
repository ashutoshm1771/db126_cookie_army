<!-- Cookie Army -->
<%@ page import = "java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
          <span class="divider1" id="Insert_2_2">|</span>
      </span><span id="For_3">
          
            <span>
              <a id="link1" name="link1" title="Results of Tenders" class="Menu" href="/eprocure/app?page=ResultOfTenders&amp;service=page" target="_self">Bid Awards</a>
          </span>
          <span class="divider1" id="Insert_2_3">|</span>
      </span><span id="For_4">
          <span id="If_0_4">
              <a id="link1" name="link1" title="CPPP Home" class="Menu" href="http://eprocure.gov.in/cppp/" target="_self">CPPP Home</a>
            </span>
            
          
      </span>		
</span>
</div>
	<div class="main-body">
<!--Aside starts from here-->	
	<div class="flex aside" style="margin-left: 50px;">
		<input type="button" class="links" value="Home" onclick="window.location.href = 'index.jsp';"></button><br>
		<input type="button" class="links" value="Nodal Officer Login" onclick="window.location.href = 'mislogin.jsp';"></button><br>
		<input type="button" class="links" value="Tender By Location" onclick="window.location.href = 'tenderByLocation.jsp';"></button><br>
		<input type="button" class="links" value="Tender By Organisation" onclick="window.location.href = 'tenderByOrg.jsp';"></button><br>
		<input type="button" class="links" value="Tender By Classification" onclick="window.location.href = 'tenderByClass.jsp';"></button><br>
		<input type="button" class="links" value="Tenders in Archive" onclick="window.location.href = 'tendersInArchive.jsp';"></button><br>
		<input type="button" class="links" value="Announcements" onclick="window.location.href = 'announcement.jsp';"></button><br>
		<input type="button" class="links" value="Cancelled/Retendered" onclick="window.location.href = 'cancelled.jsp';"></button><br>
    </div>
<!--Main starts from here-->	
		<div class="flex main">
            <div class="jumbotron"><br>
                <h1 class="display-4" id="header" align="center">Bidder Registration</h1> 
                <div align="right"><a class="btn btn-light btn-lg" href="index.jsp" role="button">Back</a></div>
                <br>
                <hr class="my-4">
                <h3 class="display-6" id="header" align="left">Personal Information</h3><br>
                      <form method="post" action="bidderReg2.jsp">
                          <div class="container">
                              <div class="row">
                                  <div class="col-sm">
                                           <div class="form-group">
                                               <label for="exampleInputName1">Full Name*</label>
                                                <input type="text" class="form-control" name="bname" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Enter your full name" required>
                                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                            </div>
                                   </div>
                                   <div class="col-sm">
                                           <div class="form-group">
                                                <label for="exampleInputReg1">Aadhar number*</label>
                                                <input type="text" class="form-control" name="badharno" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Enter your Aadhar number" required>
                                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                           </div>
                                   </div>
                                </div>
                           </div>
                           <div class="container">
                            <div class="row">
                                <div class="col-sm">
                                     <div class="form-group">
                                      <label for="exampleInputPoy1">Phone ISD Code*</label>
                                      <input type="number" class="form-control" name="bisdcode" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Phone ISD Code" required>
                                       <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
                                      </div>
                                 </div>
                                 <div class="col-sm">              
                                       <div class="form-group">
                                              <label for="exampleInputPoy1">Phone Number*</label>
                                              <div class="form-row">
                                              <input type="text" class="form-control" name="bphno" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Phone Number" required>
                                               <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small>
                                              </div>
                                        </div>
                                 </div>
                              </div>
                         </div>
                         <div class="container">
                            <div class="row">
                              <div class="col-sm">
                                       <div class="form-group">
                                             <label for="exampleInputmail1">Email Id*</label>
                                             <input type="email" class="form-control" name="bemail" id="exampleInputDes1" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" aria-describedby="phoneHelp"  placeholder="Eg : johndoe@gmail.com" required>
                                             <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                      </div>
                               </div>
                               <div class="col-sm">
                                     <div class="form-group">
                                         <label for="exampleInputName1">PAN Card Number*</label>
                                          <input type="text" class="form-control" name="bpanno" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Permanent Account Number" required>
                                          <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                      </div>
                             </div>
                        
                            </div>
                       </div>
                      
                       <hr class="my-4">
                       <h3 class="display-6" id="header" align="left">Address</h3><br>
                        <div class="container">
                              <div class="row">
                                  <div class="col-sm">
                                    <div class="form-group">
                                        <label for="exampleInputPoy1">State*</label>
                                          <select onchange="print_city('state', this.selectedIndex);" id="sts" name ="bstate" class="form-control" ></select><br>
                                          <label for="exampleInputPoy1">City*</label>
                                          <select id ="state" name="bdist" class="form-control" ></select>
                                          <script language="javascript">print_state("sts");</script>
                                   </div>
                                </div>
                           </div>
                          </div>
                          <div class="container">
                            <div class="row">
                                <div class="col-sm">
                                     <div class="form-group">
                                      <label for="exampleInputPoy1">Pin Code*</label>
                                      <input type="number" class="form-control" name="bpincode" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Pin Code" required>
                                       <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
                                      </div>
                                 </div>
                                 <div class="col-sm">              
                                       <div class="form-group">
                                              <label for="exampleInputPoy1">District*</label>
                                              <input type="text" class="form-control" name="bdist" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="District" required>
                                               <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
                                        </div>
                                 </div>
                              </div>
                         </div>
                         <hr class="my-4">
                         <h3 class="display-6" id="header" align="left">Login Details</h3><br>
                        <div class="container">
                          <div class="form-group">
                              <label for="exampleInputlink1">Login ID*</label>
                              <input type="text" class="form-control" id="exampleInputlink1" name="bid" aria-describedby="linkHelp"  placeholder="Choose a Login ID">
                              <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                          </div>
                        </div>
                        <div class="container">
                              <div class="row">
                                  <div class="col-sm">
                                           <div class="form-group">
                                                 <label for="exampleInputPasswrd1">Password*</label>
                                                 <input type="password" class="form-control" name="bpass" id="exampleInputPasswrd1"  placeholder="Enter your password" required>
                                            </div>
                                   </div>
                                   <div class="col-sm">
                                           <div class="form-group">
                                                 <label for="exampleInputCPasswrd1">Confirm Password*</label>
                                                 <input type="password" class="form-control" name="bcpass" id="exampleInputCPasswrd1" placeholder="Enter your confirm password" required>
                                           </div>
                                   </div>
                                </div>
                           </div>
                       <br>
                         <div class="text-center">
                        <button type="submit" class="btn btn-primary">Register as a bidder</button>
                        </div>
                          
                      </form>
                    </div>
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