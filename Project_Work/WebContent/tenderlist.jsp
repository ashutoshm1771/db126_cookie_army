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
			<div align="center">
	
                <h2>AVAILABLE TENDERS</h2></div><br>
                        <table border="0" bgcolor="#f7f7f7" cellpadding="0" width="100%" cellspacing="1" id="table" class="list_table">
                        
                        
                        
                
                                                                                <tbody><tr class="list_header">																		
                                                                                    <td width="10%" class='tid'>SL.No</td>
                                                                                    <td width="20%" align="center" class='tid'>TENDER NO</td>
                                                                                    <td width="40%" align="center" style="white-space: nowrap;" class='tid'>LASTDATE TO RESPOND</td>
                                                                                    <td width="30%" align="center" class='tid' style="white-space: nowrap;">OPERATION</td>																																														
                                                                                </tr>																												
                                                                                
                                                                        <% 	
                                                                        session.getAttribute("username");
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/etendering","root","tulasidevi@11");
                                        Statement st = con.createStatement();
                                        ResultSet rs;
                                        rs = st.executeQuery("select * from tenderdetails ");
                                        int a=1;
                                        while(rs.next())
                                        {
                                            session.setAttribute("refer",rs.getString(2) );
                                            %>
                                            <tr>
                                            <td width="10%" class='tid'><%=a %></td>
                                            <td width="20%" align="center" class='tid'><%=rs.getString(2) %></td>
                                            <td width="40%" align="center" class='tid'><%=rs.getString(3) %></td>
                                            <td width="30%" align="center" class='tid'>
                                            <div class="dropdown">  <button class="dropbtn" >PROCEED HERE</button><div class="dropdown-content">
                                      <a href="tenderletter.jsp?id=<%=rs.getString(2) %>" >View tender letter</a> 
                                            <a href="onlineBidderEnrollment.jsp?id=<%=rs.getString(2) %>">Respond to Tender</a>
                                            </div></div></td></tr>
                                            
            
                                        <% 
                                       
                                        /* out.print
                                        (
                                                
                                                "<tr ><td width=\"10%\" class='tid'>"+  a   +"</td>	"+
                                                    "<td width=\"20%\" align=\"center\" class='tid'>"+rs.getString(2)+"</td> "+
                                                    "<td width=\"40%\" align=\"center\" class='tid'>"+rs.getString(3)+"</td>" +
                                                    "<td  width=\"30%\" align=\"center\" class='tid'><div class=\"dropdown\">  <button class=\"dropbtn\" >PROCEED HERE</button><div class=\"dropdown-content\">"+
                                                "<a href=\"tenderletter.jsp\">View tender letter</a>"+
                                                "<a href=\"tenderresponse.jsp\">Respond to Tender</a>"+
                                                "</div></div></td></tr>"
                                                
                                            );*/
                                            
                                        a=a+1;
                                        }
                                        
                                        con.close();
            
            %>
                                                                            
            </tbody></table>
        </div>
<!--Login starts from here-->	
		
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
