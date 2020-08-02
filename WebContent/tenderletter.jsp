<!-- Cookie Army -->
<%@ page import = "java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Etender</title>
  <link rel="stylesheet" href="css/global.css">
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
 <style>
   body{
        background-color: beige;
    }
    
 </style>
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
    
<div class="jumbotron" style="width: 50%; margin-left: 500px;"><br>
    <td align="right" width="80"><a  title="Back" class="customButton_link" value="Back" href="index.jsp"></a></td>
<!--Main starts from here-->
<div class="card" align="center">
<%
String s=request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/etendering","root","tulasidevi@11");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from tenderdetails where referenceno=\""+s+"\" ");
rs.next();
String compname1 = rs.getString(8),location1=rs.getString(5),closedate1=rs.getString(3),classification1=rs.getString(7),tendertitle1=rs.getString(1),biddingopeningdate1=rs.getString(4);
con.close();

%>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3307/etendering","root","tulasidevi@11");
Statement st1 = con1.createStatement();
ResultSet rs1;
rs1 = st1.executeQuery("select * from bidder where bidderid=\""+session.getAttribute("username")+"\" ");
rs1.next();
String bname1=rs1.getString(2);
con1.close();

%>
<div align="center"><h2><%=compname1 %></h2></div><div align="right"><H5> 
<% //out.print(session.getAttribute("refer")); 
out.print(s);

%> </H5> </div>
<div align="center"><%=location1 %></div><div align="right"><H5><%= (new java.util.Date()).toLocaleString()%></H5> </div><br>
		<main>
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<form method="post" action="/eprocure/app" id="TendersByOrganisationForm"></form>

									<tbody><tr>
										<td>
											<!-- interface_elements -->
												<span id="If_0_22">	
														</span><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
													<tbody><tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td valign="left">
															<table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																	<td valign="bottom" class="pageheader" align="left"><h3>Tender Letter</h3></td>
																	
																	
																</tr>
															</tbody></table><br><br>
															
															<h6><p>M/s,Mr. <%=bname1 %></p>
															<br>
															<p>Dear sir/madam,</p><br>
															<p>Please send us your best offer giving all terms and conditions in detail for items mentioned here below.</p>
															<p>Your Offer must reach us on or before <%=closedate1 %> and 12:00 PM positively.</p>
															 
															</h6>
															
														</td>
													</tr>
													<tr>																									
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													
													<tr>
														<td>
															
														
														
														</td>
													</tr>	
													<tr><td>&nbsp;</td></tr>
												
												
													
																								
													
													<tr>
															<td >
															<table border="0" bgcolor="#f7f7f7" cellpadding="0" width="100%" cellspacing="1" id="table" class="list_table">
	
																	<tbody><tr class="list_header">																		
																		<td width="5%" class='tid'>SL.No</td>
																		<td width="15%" align="center" class='tid'>ITEM_CODE</td>
																		<td width="40%" align="center" style="white-space: nowrap;" class='tid'>ITEM_DESCRIPTION</td>
																		<td width="40%" align="center" class='tid' style="white-space: nowrap;">QUANTITY</td>																																														
																	</tr>																												
																	




	          <tr >
			
																		<td width="5%" class='tid'>1</td>																	        																												
       																	<td width="15%" align="center" class='tid'><%=classification1%></td> 
       																	<td width="40%" align="center" class='tid'><%=tendertitle1 %></td> 
       																	<td  width="40%" align="center" class='tid'>1</td> 
       																	
       																	      																	         																	
       																	     																																													       																								
       																
	</tr>


																	<tr>																		
																	</tr>
																
</tbody></table>
<br>
<table id="tid" bgcolor="#f7f7f7" cellspacing="1" class="list_table" id="table" width="100%">
<tr><td class='tid'>TRANSIT INSURANCE  </td>              <td class='tid'>As per the tender document</td></tr>
<tr><td class='tid'>Delivery payment  </td>            <td class='tid'>   As per the tender document</td></tr>
<tr><td class='tid'>ITEM CODE       </td>                  <td class='tid'> As per the tender document</td></tr>
<tr><td class='tid'>C/e Building Construction</td>         <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>Acceptance/Warranty payment</td>       <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>TERMS OF PAYMENT         </td>         <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>eye test terms and conditions </td>    <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>Technical detail          </td>        <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>Terms and Conditions     </td>         <td class='tid'>  As per the tender document</td></tr>
<tr><td class='tid'>Specific tetris puns    </td>          <td class='tid'>  As per the tender document</td></tr></table>


															</td>
														</tr>
													
													
													<tr>
														<td>&nbsp;</td>
													</tr>
											  </tbody></table>
<table align="center" border="0" bgcolor="#f7f7f7" cellpadding="0" width="92%" cellspacing="1" id="table" class="list_table">
	
																	<tbody><tr class="list_header">																		
																		<td width="5%" class='tid'>SL.No</td>
																		<td width="15%" align="center" class='tid'>Document</td>
																		<td width="40%" align="center" style="white-space: nowrap;" class='tid'>SIZE</td>
																		<td width="40%" align="center" style="white-space: nowrap;" class='tid'>Uploaded Date</td>																																														
																	</tr>																												
																	




	          <tr >
			
																		<td class='tid'  width="5%">1</td>																	        																												
       																	<td class='tid' align="center">   
       																	<a id="DirectLink" class="link2" href="Digilocker.jsp">     																	 
       																	  <h6>Doc.doc</h6>
       																	  </a>
       																	 </td> 
       																	<td  class='tid' width="40%" align="center">??size variable??</td> 
       																	<td   class='tid' width="40%" align="center"><%=biddingopeningdate1 %></td> 
       																	
       																	      																	         																	
       																	     																																													       																								
       																
	</tr>


																	<tr>																		
																	</tr>
																
</tbody></table>
<table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																<div align="center">
													
	<button background-color:#4CAF50; border:"0"; onclick="window.print()">Print<img src="print.png" width="20" height="20" border="0"></button> &nbsp;<a id="PageLink_14" title="CLOSE" class="customButton_link" value="CLOSE" href="index.jsp"><B>CLOSE</B></a></td>
																	</div>
																</tr>
															</tbody></table><br><br>
											  <!-- END: interface_elements -->
										</td>
									</tr>
									
								</tbody></table>    
</div>

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