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
    <div align="text-center"><h2>RESPONSE TO TENDER</h2></div>
			<td class="page_content" valign="top">
							<!-- Page content starts here -->
	<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tbody><tr>
			<td valign="top" height="100%">
				<!-- Page Content -->
					<!-- Content Area -->
					<table width="100%" cellspacing="0" cellpadding="0" border="0" height="100%">
						<tbody><tr>
							<td class="page_content" height="100%" valign="top">
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody><tr>
										<td>
											<!-- interface_elements -->
												<table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
													
													<tbody><tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td valign="left">
															<table width="100%" cellpadding="0" cellspacing="0">
																<tbody><tr>
																	<td valign="bottom" class="pageheader" align="left">Tender Status</td>
																	<td align="right" width="80"><a id="PageLink_14" title="Back" class="customButton_link" value="Back" href="tenderslist.jsp">Back</a></td>
																</tr>
															</tbody></table>
														</td>
													</tr>
																																						
													<tr>
														<td align="center" class="td_space">
															
														</td>
													</tr>
													
													<tr>
														<td>														
															<table width="100%" cellspacing="0" cellpadding="0">
																<tbody><tr>
																	<td>
						
																				<td colspan="6" class="list_header">Respond to tender</td>
																																					
																				</tr><tr>
																					<td class="td_caption" width="15%">Enter Quotation Ref.No:<span class="mandatory">#</span></td>
																						<td class="td_caption" width="50%" colspan="3">
																							<input type="text" name="quotationRefNo" value="" id="qutationRefNo" style="width:150px;" maxlength="30">
																						</td>				
																					<tr>
																					<td class="td_caption" width="15%">Currency in which you are quoting:<span class="mandatory">#</span></td>
																						<td class="td_caption" width="50%" colspan="3">
																							<input type="text" name="currency" value="" id="currency" style="width:150px;" maxlength="30">
																						</td>
																					</tr>
																																						<tr>																									
																				<td>&nbsp;</td>
																			</tr>
																			<tr class="list_header">
																				<td colspan="6" class="list_header">ITEM CODE</td>
                                                                                   </tr><tr>  
                                                                                   		
                                                                          															
																					</tr>																	
																					
																					<tr colspan="6">
																						<td class="td_caption" width="15%">RATE:<span class="mandatory">#</span></td>
																						<td class="td_caption" width="50%" colspan="3">
																							<input type="text" name="quotationRefNo" value="" id="qutationRefNo" style="width:150px;" maxlength="30">
																						</td>																																																										
																					</tr>
																					<tr>
																						<td class="td_caption" width="15%">GRAND TOTAL:<span class="mandatory">#</span></td>
																						<td class="td_caption" width="50%" colspan="3">
																							<input type="text" name="quotationRefNo" value="" id="qutationRefNo" style="width:150px;" maxlength="30">
																						</td>
																						
																																							<tr>																									
																				<td>&nbsp;</td>
																			</tr>	
																			<tr class="list_header">
																				<td colspan="6" class="list_header">REMARKS</td>
																					</tr><tr>
																						<td class="td_caption" width="15%" align="right">WRITE REMARKS <span class="mandatory">*</span></td>
																						<td class="td_caption" width="85%" colspan="5">
																							<input type="text" name="tenderId" value="" id="tenderId" style="width:150px;" maxlength="30">
																						</td>
																					</tr>
																			
																			<tr>																									
																				<td>&nbsp;</td>
																			</tr>	
																			<td>&nbsp;</td>
																			</tr>	
																			<tr class="list_header">
																				<td colspan="6" class="list_header">TERMS AND CONDITIONS</td>
																					</tr><tr>
																						<td class="notes" colspan="6" align="left">100% Payment will be made in advance through TT/International Demand Draft along with the order</span></td>
																						<td class="td_caption" width="60%" colspan="5">
																							
																						</td>
																						<tr>

																						<td colspan="6" class="list_header">UPLOAD DOCUMENTS</td>
																					</tr><tr>
																						<td class="td_caption" width="25%" align="right">UPLOAD FILES IN DIGILOCKER <span class="mandatory">*</span></td>
																						<td class="td_caption" width="75%" colspan="5">
																						<p><a href="JavaScript:newPopup('digilocker/index.jsp');">Click Here</a></p>
																					<!--  		<a onclick="window.open(\"digilocker/index.jsp\")" class="button">CLICK HERE</a>   -->
																						</td>
																						</tr>
																			 				</tbody></table>
																				</td>
																			 </tr>
																			
																			
																			<tr>
																				<td colspan="6" class="notes">Read the terms and conditions carefully and upload the documents .
																				</td>
																			</tr>
																			<tr>
																				
																			</tr>																				
																		</tbody></table>
																	</td>
																</tr>
															</tbody></table>															
														</td>
													</tr>		
													<tr>
														<td>&nbsp;</td>
													</tr>
													
																					
													<tr> 
													  <td>
															
													  </td>
													</tr>
														
													<tr>
														<td>&nbsp;</td>
													</tr>													
											  </tbody></table>
											  <!-- END: interface_elements -->
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>								
					</tbody></table>
					<!-- End : Content Area -->
			</td>
		</tr>
	</tbody></table>
</form>	

							<!-- Page content ends here -->	
							</td>
</div>

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