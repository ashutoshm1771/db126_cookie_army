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
  <link rel="stylesheet" href="css/global1.css">
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
<!--Aside starts from here-->	
        
<!--Main starts from here-->	
<div class="jumbotron" style="width: 50%; margin-left: 500px;"><br>
    <h1 class="display-4" id="header" align="center">Publish A Tender</h1> 
    <div align="right"><a class="btn btn-light btn-lg" href="empPortal.jsp" role="button">Back</a></div>
    <br>
    <hr class="my-4">
    <h3 class="display-6" id="header" align="left">Tender Information</h3><br>
          <form method="post" action="publishTender2.jsp">
              <div class="container">
                  <div class="row">
                      <div class="col-sm">
                               <div class="form-group">
                                   <label for="exampleInputName1">Tender Title*</label>
                                    <input type="text" class="form-control" name="title" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Enter the tender title" required>
                                    <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                </div>
                       </div>
                    </div>
               </div>
               <div class="container">
                  <div class="row">
                      <div class="col-sm">
                           <div class="form-group">
                            <label for="exampleInputPoy1">Tender Start Date*</label>
                            <input type="text" class="form-control" name="tstartDate" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Starting Date of the Tender" required>
                             <small id="emailHelp" class="form-text text-muted">Format - DD/MM/YYYY </small>
                            </div>
                       </div>
                       <div class="col-sm">              
                             <div class="form-group">
                                    <label for="exampleInputPoy1">Tender Closing Date*</label>
                                    <input type="text" class="form-control" name="tcloseDate" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Closing Date of the Tender" required>
                                     <small id="emailHelp" class="form-text text-muted">Format - DD/MM/YYYY </small> 
                              </div>
                       </div>
                    </div>
               </div>
               <div class="container">
                  <div class="row">
                      <div class="col-sm">
                           <div class="form-group">
                            <label for="exampleFormControlFile1">Tender Document*</label>
                            <input type="file" name="tdetails" class="form-control-file" id="exampleFormControlFile1">
                             <small id="emailHelp" class="form-text text-muted">Format - .pdf</small>
                            </div>
                       </div>
                       <div class="col-sm">              
                             <div class="form-group">
                                    <label for="exampleInputPoy1">Company Name*</label>
                                    <input type="text" class="form-control" name="tcomp" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Company Name (complete)" required>
                                     <small id="emailHelp" class="form-text text-muted">The Company that released the Tender.</small> 
                              </div>
                       </div>
                    </div>
               </div>
               <div class="container">
                  <div class="row">
                      <div class="col-sm">
                           <div class="form-group">
                            <label for="exampleInputPoy1">Bid Opening Date*</label>
                            <input type="text" class="form-control" name="bOpenDate" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Starting Date of the Bid Process" required>
                             <small id="emailHelp" class="form-text text-muted">Format - DD/MM/YYYY </small>
                            </div>
                       </div>
                       <div class="col-sm">              
                             <div class="form-group">
                                    <label for="exampleInputPoy1">Expected Cost*</label>
                                    <input type="text" class="form-control" name="tcost" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Expected Cost of the Tender" required>
                                     <small id="emailHelp" class="form-text text-muted">Currency -INR </small> 
                              </div>
                       </div>
                    </div>
               </div>
               <div class="container">
                  <div class="row">
                      <div class="col-sm">
                               <div class="form-group">
                                  <label for="exampleInputPoy1">Class*</label>
                                  <select class="form-control" name="tclass" id="exampleFormControlSelect2">
                                          <option value="Piece-work">Piece-work</option>
                                          <option value="Lump-sum">Lump-sum</option>
                                          <option value="Multi-stage">Multi-stage</option>
                                          <option value="Supply">Supply</option>
                                          <option value="Fixed-rate">Fixed-rate</option>
                                          <option value="Turn-key">Turn-key</option>
                                          <option value="Buy">Buy</option>
                                          <option value="Works">Works</option>
                                          <option value="EPC Contract">EPC Contract</option>
                                          <option value="QCBS">QCBS</option>
                                          <option value="Tender cum Auction">Tender cum Auction</option>
                                          <option value="Sale">Sale</option>
                                          <option value="Percentage">Percentage</option>
                                          <option value="PPP-BoT-Annuity">PPP-BoT-Annuity</option>
                                          <option value="PPP-BoT-Toll">PPP-BoT-Toll</option>
                                          <option value="PPP-BoT-HAM">PPP-BoT-HAM</option>
                                          <option value="PPP-BoT-ToT">PPP-BoT-ToT</option>
                                          <option value="Item Rate">Item Rate</option>
                                          <option value="EOI">EOI</option>
                                          <option value="Empanelment">Empanelment</option>
                                          <option value="PPP-DBFOT">PPP-DBFOT</option>
                                          <option value="PPP-DBFO">PPP-DBFO</option>
                                  </select>
                                </div>
                       </div>
                       <div class="col-sm">              
                             <div class="form-group">
                                    <label for="exampleInputPoy1">Reference No*</label>
                                    <input type="text" class="form-control" name="did" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Expected Cost of the Tender" required>
                                     
                              </div>
                       </div>
                    </div>
               </div>
               <hr class="my-4">
      <h3 class="display-6" id="header" align="left">Tender Location</h3><br>
               <div class="container">
                  <div class="row">
                      <div class="col-sm">
                           <div class="form-group">
                            <label for="exampleInputPoy1">State*</label>
                              <select onchange="print_city('state', this.selectedIndex);" id="sts" name ="tstate" class="form-control" required></select><br>
                              <label for="exampleInputPoy1">District*</label>
                              <select id ="state" name="tdist" class="form-control" required></select>
                              <script language="javascript">print_state("sts");</script>
                       </div>
                    </div>
               </div>
              </div>
           <div class="container">
            <div class="row">
                <div class="col-sm">
                         <div class="form-group">
                             <label for="exampleInputName1">Postal Code*</label>
                              <input type="text" class="form-control" name="tpostalCode" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="PIN Code" required>
                              <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                          </div>
                 </div>
                 <div class="col-sm">
                    <div class="form-group">
                      <label for="exampleInputPoy1">City*</label>
                      <input type="text" class="form-control" name="bcity" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="City" required>
                    </div>
                 </div> 
                 
              </div>
         </div>
           <hr class="my-4">
           <br>

             <div class="text-center">
            <button type="submit" class="btn btn-primary">Publish Tender</button>
            </div>
              
          </form>
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