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
			<div class="jumbotron">
			<h1 class="display-4" id="header" align="center">Online Bidder Enrollment</h1> 
      <div align="right"><a class="btn btn-light btn-lg" href="index.jsp" role="button">Back</a></div>
      <br>
      <hr class="my-4">
            <form method="post" action="onlineBidderEnrollment2.jsp" id="CorporateTendererForm" autocomplete="off">
				<div class="jumbotron">
					<div class="container">
						<div class="row">
							<div class="col-sm">
									<div class="form-group">
										<label for="exampleInputName1">Login ID*</label>
										<input type="text" class="form-control" name="bid" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Enter your Login ID" required>
										<small id="emailHelp" class="form-text text-muted">Enter Login Id
	(Care may be taken to enter valid e-mail ID. This information will be kept confidential. The login ID cannot be modified once registered.)</small> 
									</div>
							</div>
							<div class="col-sm">
									<div class="form-group">
										<label for="exampleInputReg1">Correspondence email*</label>
										<input type="text" class="form-control" name="cemail" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Correspondence email" required>
										<small id="emailHelp" class="form-text text-muted">(Correspondence Email ID can be same as your Login ID.)</small> 
									</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-sm">
									<div class="form-group">
										<label for="exampleInputReg1">Aadhar Number*</label>
										<input type="text" class="form-control" name="aadhar" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Enter your aadhar number" required>
										<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									</div>
							</div>
						</div>
					</div>
				</div>
				<div class="jumbotron">
					<h3 class="display-6" id="header" align="left">Company Details</h3><br>
					<hr class="my-4">
					<div class="container">
						<div class="row">
							<div class="col-sm">
									 <div class="form-group">
										 <label for="exampleInputName1">Company Name*</label>
										  <input type="text" class="form-control" name="cname" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Enter the company name" required>
										  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									  </div>
							 </div>
							 <div class="col-sm">
									 <div class="form-group">
										  <label for="exampleInputReg1">Registration number*</label>
										  <input type="text" class="form-control" name="regno" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Enter the registration number" required>
										  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									 </div>
							 </div>
						  </div>
					 </div>
					 <div class="container">
						<div class="form-group">
							   <label for="exampleInputClg1">Preferential Bidder : </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							   <input type="checkbox" class="form-check-input" name="privilegeYes" id="privilegeYes" onclick="javascript: setMultiCurrencyCheckBox(this, 1);">
							   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
						</div>
					  </div>
					  <div id="multiCu">
							<div class="container">
								<div class="form-group">
									<label for="exampleInputClg1">Preferential Category*</label>
										<select class="form-control" name="pcate" id="exampleFormControlSelect2">
											<option value="msme">MSME</option>
											<option value="mii">Make in India</option>
										</select>
										<small id="emailHelp" class="form-text text-muted">If you have selected MSME or Startup Company in Preference Category, visit MSME or Startup India icon under My Accounts--> Privileges menu and complete registration process.</small>
								</div>
							</div>
					  </div>
					  <div class="container">
						<div class="row">
							<div class="col-sm">
									 <div class="form-group">
										 <label for="exampleInputName1">Establishment Year*</label>
										 	<select class="form-control" name="estdyear" id="exampleFormControlSelect2">
												<option value="0">2020</option>
												<option value="1">2019</option>
												<option value="2">2018</option>
												<option value="3">2017</option>
												<option value="4">2016</option>
												<option value="5">2015</option>
												<option value="6">2014</option>
												<option value="7">2013</option>
												<option value="8">2012</option>
												<option value="9">2011</option>
												<option value="10">2010</option>
												<option value="11">2009</option>
												<option value="12">2008</option>
												<option value="13">2007</option>
												<option value="14">2006</option>
												<option value="15">2005</option>
												<option value="16">2004</option>
												<option value="17">2003</option>
												<option value="18">2002</option>
												<option value="19">2001</option>
												<option value="20">2000</option>
												<option value="21">1999</option>
												<option value="22">1998</option>
												<option value="23">1997</option>
												<option value="24">1996</option>
												<option value="25">1995</option>
												<option value="26">1994</option>
												<option value="27">1993</option>
												<option value="28">1992</option>
												<option value="29">1991</option>
												<option value="30">1990</option>
												<option value="31">1989</option>
												<option value="32">1988</option>
												<option value="33">1987</option>
												<option value="34">1986</option>
												<option value="35">1985</option>
												<option value="36">1984</option>
												<option value="37">1983</option>
												<option value="38">1982</option>
												<option value="39">1981</option>
												<option value="40">1980</option>
												<option value="41">1979</option>
												<option value="42">1978</option>
												<option value="43">1977</option>
												<option value="44">1976</option>
												<option value="45">1975</option>
												<option value="46">1974</option>
												<option value="47">1973</option>
												<option value="48">1972</option>
												<option value="49">1971</option>
												<option value="50">1970</option>
												<option value="51">1969</option>
												<option value="52">1968</option>
												<option value="53">1967</option>
												<option value="54">1966</option>
												<option value="55">1965</option>
												<option value="56">1964</option>
												<option value="57">1963</option>
												<option value="58">1962</option>
												<option value="59">1961</option>
												<option value="60">1960</option>
												<option value="61">1959</option>
												<option value="62">1958</option>
												<option value="63">1957</option>
												<option value="64">1956</option>
												<option value="65">1955</option>
												<option value="66">1954</option>
												<option value="67">1953</option>
												<option value="68">1952</option>
												<option value="69">1951</option>
												<option value="70">1950</option>
												<option value="71">1949</option>
												<option value="72">1948</option>
												<option value="73">1947</option>
												<option value="74">1946</option>
												<option value="75">1945</option>
												<option value="76">1944</option>
												<option value="77">1943</option>
												<option value="78">1942</option>
												<option value="79">1941</option>
												<option value="80">1940</option>
												<option value="81">1939</option>
												<option value="82">1938</option>
												<option value="83">1937</option>
												<option value="84">1936</option>
												<option value="85">1935</option>
												<option value="86">1934</option>
												<option value="87">1933</option>
												<option value="88">1932</option>
												<option value="89">1931</option>
												<option value="90">1930</option>
												<option value="91">1929</option>
												<option value="92">1928</option>
												<option value="93">1927</option>
												<option value="94">1926</option>
												<option value="95">1925</option>
												<option value="96">1924</option>
												<option value="97">1923</option>
												<option value="98">1922</option>
												<option value="99">1921</option>
												<option value="100">1920</option>
												<option value="101">1919</option>
												<option value="102">1918</option>
												<option value="103">1917</option>
												<option value="104">1916</option>
												<option value="105">1915</option>
												<option value="106">1914</option>
												<option value="107">1913</option>
												<option value="108">1912</option>
												<option value="109">1911</option>
												<option value="110">1910</option>
												<option value="111">1909</option>
												<option value="112">1908</option>
												<option value="113">1907</option>
												<option value="114">1906</option>
												<option value="115">1905</option>
												<option value="116">1904</option>
												<option value="117">1903</option>
												<option value="118">1902</option>
												<option value="119">1901</option>
												<option value="120">1900</option>
												<option value="121">1899</option>
												<option value="122">1898</option>
												<option value="123">1897</option>
												<option value="124">1896</option>
												<option value="125">1895</option>
												<option value="126">1894</option>
												<option value="127">1893</option>
												<option value="128">1892</option>
												<option value="129">1891</option>
												<option value="130">1890</option>
												<option value="131">1889</option>
												<option value="132">1888</option>
												<option value="133">1887</option>
												<option value="134">1886</option>
												<option value="135">1885</option>
												<option value="136">1884</option>
												<option value="137">1883</option>
												<option value="138">1882</option>
												<option value="139">1881</option>
												<option value="140">1880</option>
												<option value="141">1879</option>
												<option value="142">1878</option>
												<option value="143">1877</option>
												<option value="144">1876</option>
												<option value="145">1875</option>
												<option value="146">1874</option>
												<option value="147">1873</option>
												<option value="148">1872</option>
												<option value="149">1871</option>
												<option value="150">1870</option>
												<option value="151">1869</option>
												<option value="152">1868</option>
												<option value="153">1867</option>
												<option value="154">1866</option>
												<option value="155">1865</option>
												<option value="156">1864</option>
												<option value="157">1863</option>
												<option value="158">1862</option>
												<option value="159">1861</option>
												<option value="160">1860</option>
												<option value="161">1859</option>
												<option value="162">1858</option>
												<option value="163">1857</option>
												<option value="164">1856</option>
												<option value="165">1855</option>
												<option value="166">1854</option>
												<option value="167">1853</option>
												<option value="168">1852</option>
												<option value="169">1851</option>
												<option value="170">1850</option>
											</select>
										  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									  </div>
							 </div>
							 <div class="col-sm">
									 <div class="form-group">
										  <label for="exampleInputReg1">Nature of Business*</label>
										  <input type="text" class="form-control" name="compnature" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Enter the nature of your Business" required>
										  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									 </div>
							 </div>
						  </div>
					 </div>
					 <div class="container">
						<div class="row">
							<div class="col-sm">
									 <div class="form-group">
										 <label for="exampleInputName1">Legal Status*</label>
										 	<select class="form-control" name="legalstatus" id="exampleFormControlSelect2">
												<option value="1">Limited Company</option>
												<option value="2">Undertaking</option>
												<option value="3">Jointventure</option>
												<option value="4">Partnership</option>
												<option value="5">Others</option>
											</select>
										  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									  </div>
							 </div>
							 <div class="col-sm">
									 <div class="form-group">
										  <label for="exampleInputReg1">Company Category*</label>
										  		<select class="form-control" name="comcat" id="exampleFormControlSelect2">
													<option value="1">Micro Unit as per MSME</option>
													<option value="2">Small Unit as per MSME</option>
													<option value="3">Medium Unit as per MSME</option>
													<option value="4">Ancillary Unit</option>
													<option value="5">Project Affected Person of this Company</option>
													<option value="6">SSI</option>
													<option value="7">Others</option>
												</select>
										  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									 </div>
							 </div>
						  </div>
					 </div>
					 <div class="container">
             			<div class="form-group">
							   <label for="exampleInputClg1">Name of Partners / Directors</label>
							   <input type="text" class="form-control" name="nameOfPartners" id="exampleInputClg1"  aria-describedby="colHelp">
							   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
						</div>
				  	</div>
						 <hr class="my-4">
						 <h4>Bidder Type*</h4><br>
					 	<div class="container">
							<div class="row">
								<div class="col-sm">
										 <div class="form-group">
											 <label for="exampleInputName1">Indian</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											 <input type="radio" name="bidderType" id="bidderTypeIndian" checked="checked" value="0" onclick="tapestry.byId('bidderType').onChange(0);" onChange="indianForeignBidderEnable();" class="form-check-input" />
										  </div>
								 </div>
								 <div class="col-sm">
										 <div class="form-group">
											  <label for="exampleInputReg1">Foreign</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											  <input type="radio" name="bidderType" id="bidderTypeForeign" value="1" onclick="tapestry.byId('bidderType').onChange(1);" onChange="indianForeignBidderEnable();" class="form-check-input" />
										 </div>
								 </div>
							  </div>
						 </div>
						 <div id="IndianBidderDetails" >
							<div class="container">
								<div class="row">
									<div class="col-sm">
										 <div class="form-group">
										  <label for="exampleInputPoy1">State*</label>
											<select onchange="print_city('state', this.selectedIndex);" id="sts" name ="cstate" class="form-control" ></select><br>
											<label for="exampleInputPoy1">District*</label>
											<select id ="state" name="cdist" class="form-control" ></select>
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
										<input type="number" class="form-control" name="cpincode" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Pin Code" >
										 <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
										</div>
								   </div>
								   <div class="col-sm">              
										 <div class="form-group">
												<label for="exampleInputPoy1">City*</label>
												<input type="text" class="form-control" name="ccity" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="District" >
												 <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
										  </div>
								   </div>
								</div>
						   </div>
						 </div>
						 <div id="ForeignBidderDetails">
							<div class="container">
								<div class="row">
									<div class="col-sm">
										 <div class="form-group">
										  <label for="exampleInputPoy1">Country*</label>
										  <select class="form-control" name="ccountry" id="exampleFormControlSelect2">
												<option value="1">Afghanistan</option>
												<option value="2">Albania</option>
												<option value="3">Algeria</option>
												<option value="4">Andorra</option>
												<option value="5">Angola</option>
												<option value="6">Antarctica</option>
												<option value="7">Argentina</option>
												<option value="8">Armenia</option>
												<option value="9">Aruba</option>
												<option value="10">Australia</option>
												<option value="11">Austria</option>
												<option value="12">Azerbaijan</option>
												<option value="13">Bahrain</option>
												<option value="14">Bangladesh</option>
												<option value="15">Belarus</option>
												<option value="16">Belgium</option>
												<option value="17">Belize</option>
												<option value="18">Benin</option>
												<option value="19">Bhutan</option>
												<option value="20">Bolivia</option>
												<option value="21">Bosnia and Herzegovina</option>
												<option value="22">Botswana</option>
												<option value="23">Brazil</option>
												<option value="24">British lndian Ocean Territory</option>
												<option value="25">Brunei Darussalam</option>
												<option value="26">Bulgaria</option>
												<option value="27">Burkina Faso</option>
												<option value="28">Burundi</option>
												<option value="29">Cambodia</option>
												<option value="30">Cameroon</option>
												<option value="31">Canada</option>
												<option value="32">Cape Verde</option>
												<option value="33">Central African Republic</option>
												<option value="34">Chad</option>
												<option value="35">Chile</option>
												<option value="36">China</option>
												<option value="37">Christmas Island</option>
												<option value="38">Cocos (Keeling) Islands</option>
												<option value="39">Colombia</option>
												<option value="40">Comoros</option>
												<option value="41">Congo</option>
												<option value="42">Cook Islands</option>
												<option value="43">Costa Rica</option>
												<option value="44">Croatia (Hrvatska)</option>
												<option value="45">Cuba</option>
												<option value="46">Cyprus</option>
												<option value="47">Czech Republic</option>
												<option value="48">Denmark</option>
												<option value="49">Djibouti</option>
												<option value="50">East Timor</option>
												<option value="51">Ecuador</option>
												<option value="52">Egypt</option>
												<option value="53">El Salvador</option>
												<option value="54">Equatorial Guinea</option>
												<option value="55">Eritrea</option>
												<option value="56">Estonia</option>
												<option value="57">Ethiopia</option>
												<option value="58">Falkland Islands (Malvinas)</option>
												<option value="59">Faroe Islands</option>
												<option value="60">Fiji</option>
												<option value="61">Finland</option>
												<option value="62">France</option>
												<option value="63">French Guiana</option>
												<option value="64">French Polynesia</option>
												<option value="65">Gabon</option>
												<option value="66">Gambia</option>
												<option value="67">Georgia</option>
												<option value="68">Germany</option>
												<option value="69">Ghana</option>
												<option value="70">Gibraltar</option>
												<option value="71">Greece</option>
												<option value="72">Greenland</option>
												<option value="73">Guadeloupe</option>
												<option value="74">Guatemala</option>
												<option value="75">Guinea</option>
												<option value="76">Guinea-Bissau</option>
												<option value="77">Guyana</option>
												<option value="78">Haiti</option>
												<option value="79">Honduras</option>
												<option value="80">Hong Kong</option>
												<option value="81">Hungary</option>
												<option value="82">Iceland</option>
												<option value="83">India</option>
												<option value="84">Indonesia</option>
												<option value="85">Iran (Islamic Republic of)</option>
												<option value="86">Iraq</option>
												<option value="87">Ireland</option>
												<option value="88">Israel</option>
												<option value="89">Italy</option>
												<option value="90">Ivory Coast</option>
												<option value="91">Japan</option>
												<option value="92">Jordan</option>
												<option value="93">Kazakhstan</option>
												<option value="94">Kenya</option>
												<option value="95">Kiribati</option>
												<option value="96">Korea  Republic of</option>
												<option value="97">Kosovo</option>
												<option value="98">Kuwait</option>
												<option value="99">Kyrgyzstan</option>
												<option value="100">Latvia</option>
												<option value="101">Lebanon</option>
												<option value="102">Lesotho</option>
												<option value="103">Liberia</option>
												<option value="104">Libyan Arab Jamahiriya</option>
												<option value="105">Liechtenstein</option>
												<option value="106">Lithuania</option>
												<option value="107">Luxembourg</option>
												<option value="108">Macau</option>
												<option value="109">Macedonia</option>
												<option value="110">Madagascar</option>
												<option value="111">Malawi</option>
												<option value="112">Malaysia</option>
												<option value="113">Maldives</option>
												<option value="114">Mali</option>
												<option value="115">Malta</option>
												<option value="116">Marshall Islands</option>
												<option value="117">Martinique</option>
												<option value="118">Mauritania</option>
												<option value="119">Mauritius</option>
												<option value="120">Mayotte</option>
												<option value="121">Mexico</option>
												<option value="122">Monaco</option>
												<option value="123">Mongolia</option>
												<option value="124">Montenegro</option>
												<option value="125">Morocco</option>
												<option value="126">Mozambique</option>
												<option value="127">Myanmar</option>
												<option value="128">Namibia</option>
												<option value="129">Nauru</option>
												<option value="130">Nepal</option>
												<option value="131">Netherlands</option>
												<option value="132">Netherlands Antilles</option>
												<option value="133">New Caledonia</option>
												<option value="134">New Zealand</option>
												<option value="135">Nicaragua</option>
												<option value="136">Niger</option>
												<option value="137">Nigeria</option>
												<option value="138">Niue</option>
												<option value="139">Norway</option>
												<option value="140">Oman</option>
												<option value="141">Pakistan</option>
												<option value="142">Palau</option>
												<option value="143">Panama</option>
												<option value="144">Papua New Guinea</option>
												<option value="145">Paraguay</option>
												<option value="146">Peru</option>
												<option value="147">Philippines</option>
												<option value="148">Pitcairn</option>
												<option value="149">Poland</option>
												<option value="150">Portugal</option>
												<option value="151">Qatar</option>
												<option value="152">Reunion</option>
												<option value="153">Romania</option>
												<option value="154">Russian Federation</option>
												<option value="155">Rwanda</option>
												<option value="156">Saint Helena</option>
												<option value="157">Saint Pierre and Miquelon</option>
												<option value="158">Samoa</option>
												<option value="159">San Marino</option>
												<option value="160">Sao Tome and Principe</option>
												<option value="161">Saudi Arabia</option>
												<option value="162">Senegal</option>
												<option value="163">Serbia</option>
												<option value="164">Seychelles</option>
												<option value="165">Sierra Leone</option>
												<option value="166">Singapore</option>
												<option value="167">Slovakia</option>
												<option value="168">Slovenia</option>
												<option value="169">Solomon Islands</option>
												<option value="170">Somalia</option>
												<option value="171">South Africa</option>
												<option value="172">Spain</option>
												<option value="173">Sri Lanka</option>
												<option value="174">Sudan</option>
												<option value="175">Suriname</option>
												<option value="176">Svalbard</option>
												<option value="177">Swaziland</option>
												<option value="178">Sweden</option>
												<option value="179">Switzerland</option>
												<option value="180">Syria</option>
												<option value="181">Taiwan</option>
												<option value="182">Tajikistan</option>
												<option value="183">Tanzania</option>
												<option value="184">Thailand</option>
												<option value="185">Togo</option>
												<option value="186">Tokelau</option>
												<option value="187">Tonga</option>
												<option value="188">Tunisia</option>
												<option value="189">Turkey</option>
												<option value="190">Turkmenistan</option>
												<option value="191">Tuvalu</option>
												<option value="192">Uganda</option>
												<option value="193">Ukraine</option>
												<option value="194">United Arab Emirates</option>
												<option value="195">United Kingdom</option>
												<option value="196">United States</option>
												<option value="197">Uruguay</option>
												<option value="198">Uzbekistan</option>
												<option value="199">Vanuatu</option>
												<option value="200">Venezuela</option>
												<option value="201">Vietnam</option>
												<option value="202">Wallis and Futuna</option>
												<option value="203">Western Sahara</option>
												<option value="204">Yemen</option>
												<option value="205">Zambia</option>
												<option value="206">Zimbabwe</option>
										 	</select>
										   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
										  </div>
									 </div>
									 <div class="col-sm">              
										   <div class="form-group">
												  <label for="exampleInputPoy1">State / City*</label>
												  <input type="text" class="form-control" name="cscity" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Enter the City or State" >
												   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
											</div>
									 </div>
								  </div>
							 </div>
							 <div class="container">
             					<div class="form-group">
									   <label for="exampleInputClg1">Postal Code*</label>
									   <input type="number" class="form-control" name="cpostalcode" id="exampleInputClg1"  aria-describedby="colHelp"  placeholder="Enter your postal code" >
									   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
								</div>
						  </div>
						 </div>
						 <div id="IndianBidderDetailsPan" >
							<div class="container">
             					<div class="form-group">
									   <label for="exampleInputClg1">PAN / TAN Number*</label>
									   <input type="text" class="form-control" name="cpanno" id="exampleInputClg1"  aria-describedby="colHelp"  placeholder="PAN/TAN number must have 10 characters. For eg: AESTG2458A" >
									   <small id="emailHelp" class="form-text text-muted">For Bidders who do not have PAN/TAN number may enter TEMPZ9999Z as the PAN/TAN number.</small> 
								</div>
						  </div> 
						</div>
				</div>
				<div class="jumbotron">
					<h3 class="display-6" id="header" align="left">Company Details</h3>
					<small id="emailHelp" class="form-text text-muted">Enter Company's Contact Person Details</small>
					<hr class="my-4">
					<div class="container">
						<div class="row">
							<div class="col-sm">
								 <div class="form-group">
								  <label for="exampleInputPoy1">Title*</label>
								  		<select class="form-control" name="ccountry" id="exampleFormControlSelect2">
											<option value="1">Mrs</option>
											<option value="2">Mr</option>
											<option value="3">Ms</option>
											<option value="4">Dr</option>
											<option value="5">Sri</option>
										</select>
								  </div>
							 </div>
							 <div class="col-sm">              
								   <div class="form-group">
										  <label for="exampleInputPoy1">Contact Name*</label>
										  <input type="text" class="form-control" name="ccname" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Enter Contact Name" required>
										   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
									</div>
							 </div>
						  </div>
					 </div>
					 <div class="container">
						<div class="row">
							<div class="col-sm">
								 <div class="form-group">
									<label for="exampleInputContact1">Date of Birth*</label>
									<input type="text" class="form-control" name="ccdob" id="exampleInputDes1"  aria-describedby="phoneHelp"  placeholder="Format - DD/MM//YYYY" required>
								   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
								  </div>
							 </div>
							 <div class="col-sm">              
								   <div class="form-group">
										  <label for="exampleInputPoy1">Designation*</label>
										  <input type="text" class="form-control" name="disignation" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Enter the contact person's designation" required>
										   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small> -->
									</div>
							 </div>
						  </div>
					 </div>
					 <div class="container">
						<div class="row">
							<div class="col-sm">
									<div class="form-group">
										<label for="exampleInputName1">Mobile Number ISD Code*</label>
										<select class="form-control" name="ccisdcode" id="exampleFormControlSelect2">
											<option value="0">-Select-</option>
											<option value="1">ABW (297)</option>
											<option value="2">AFG (93)</option>
											<option value="3">AGO (244)</option>
											<option value="4">ALB (355)</option>
											<option value="5">AND (376)</option>
											<option value="6">ANT (599)</option>
											<option value="7">ARE (971)</option>
											<option value="8">ARG (54)</option>
											<option value="9">ARM (374)</option>
											<option value="10">ATA (672)</option>
											<option value="11">AUS (61)</option>
											<option value="12">AUT (43)</option>
											<option value="13">AZE (994)</option>
											<option value="14">BDI (257)</option>
											<option value="15">BEL (32)</option>
											<option value="16">BEN (229)</option>
											<option value="17">BFA (226)</option>
											<option value="18">BGD (880)</option>
											<option value="19">BGR (359)</option>
											<option value="20">BHR (973)</option>
											<option value="21">BIH (387)</option>
											<option value="22">BLR (375)</option>
											<option value="23">BLZ (501)</option>
											<option value="24">BOL (591)</option>
											<option value="25">BRA (55)</option>
											<option value="26">BRN (673)</option>
											<option value="27">BTN (975)</option>
											<option value="28">BWA (267)</option>
											<option value="29">CAF (236)</option>
											<option value="30">CAN (1)</option>
											<option value="31">CCK (672)</option>
											<option value="32">CHE (41)</option>
											<option value="33">CHL (56)</option>
											<option value="34">CHN (86)</option>
											<option value="35">CIV (225)</option>
											<option value="36">CMR (237)</option>
											<option value="37">COG (242)</option>
											<option value="38">COK (682)</option>
											<option value="39">COL (57)</option>
											<option value="40">COM (269)</option>
											<option value="41">CPV (238)</option>
											<option value="42">CRI (506)</option>
											<option value="43">CUB (53)</option>
											<option value="44">CXR (61)</option>
											<option value="45">CYP (357)</option>
											<option value="46">CZE (420)</option>
											<option value="47">DEU (49)</option>
											<option value="48">DJI (253)</option>
											<option value="49">DNK (45)</option>
											<option value="50">DZA (213)</option>
											<option value="51">ECU (593)</option>
											<option value="52">EGY (20)</option>
											<option value="53">ERI (291)</option>
											<option value="54">ESH (212)</option>
											<option value="55">ESP (34)</option>
											<option value="56">EST (372)</option>
											<option value="57">ETH (251)</option>
											<option value="58">FIN (358)</option>
											<option value="59">FJI (679)</option>
											<option value="60">FLK (500)</option>
											<option value="61">FRA (33)</option>
											<option value="62">FRO (298)</option>
											<option value="63">GAB (241)</option>
											<option value="64">GBR (44)</option>
											<option value="65">GEO (995)</option>
											<option value="66">GHA (233)</option>
											<option value="67">GIB (350)</option>
											<option value="68">GIN (224)</option>
											<option value="69">GLP (590)</option>
											<option value="70">GMB (220)</option>
											<option value="71">GNB (245)</option>
											<option value="72">GNQ (240)</option>
											<option value="73">GRC (30)</option>
											<option value="74">GRL (299)</option>
											<option value="75">GTM (502)</option>
											<option value="76">GUF (594)</option>
											<option value="77">GUY (592)</option>
											<option value="78">HKG (852)</option>
											<option value="79">HND (504)</option>
											<option value="80">HRV (385)</option>
											<option value="81">HTI (509)</option>
											<option value="82">HUN (36)</option>
											<option value="83">IDN (62)</option>
											<option value="84">IND (91)</option>
											<option value="85">IOT (246)</option>
											<option value="86">IRL (353)</option>
											<option value="87">IRN (98)</option>
											<option value="88">IRQ (964)</option>
											<option value="89">ISL (354)</option>
											<option value="90">ISR (972)</option>
											<option value="91">ITA (39)</option>
											<option value="92">JOR (962)</option>
											<option value="93">JPN (81)</option>
											<option value="94">KAZ (7)</option>
											<option value="95">KEN (254)</option>
											<option value="96">KGZ (996)</option>
											<option value="97">KHM (855)</option>
											<option value="98">KIR (686)</option>
											<option value="99">KOR (82)</option>
											<option value="100">KWT (965)</option>
											<option value="101">LBN (961)</option>
											<option value="102">LBR (231)</option>
											<option value="103">LBY (218)</option>
											<option value="104">LIE (423)</option>
											<option value="105">LKA (94)</option>
											<option value="106">LSO (266)</option>
											<option value="107">LTU (370)</option>
											<option value="108">LUX (352)</option>
											<option value="109">LVA (371)</option>
											<option value="110">MAC (853)</option>
											<option value="111">MAR (212)</option>
											<option value="112">MCO (377)</option>
											<option value="113">MDG (261)</option>
											<option value="114">MDV (960)</option>
											<option value="115">MEX (52)</option>
											<option value="116">MHL (692)</option>
											<option value="117">MKD (389)</option>
											<option value="118">MLI (223)</option>
											<option value="119">MLT (356)</option>
											<option value="120">MMR (95)</option>
											<option value="121">MNE (382)</option>
											<option value="122">MNG (976)</option>
											<option value="123">MOZ (258)</option>
											<option value="124">MRT (222)</option>
											<option value="125">MTQ (596)</option>
											<option value="126">MUS (230)</option>
											<option value="127">MWI (265)</option>
											<option value="128">MYS (60)</option>
											<option value="129">MYT (269)</option>
											<option value="130">NAM (264)</option>
											<option value="131">NCL (687)</option>
											<option value="132">NER (227)</option>
											<option value="133">NGA (234)</option>
											<option value="134">NIC (505)</option>
											<option value="135">NIU (683)</option>
											<option value="136">NLD (31)</option>
											<option value="137">NOR (47)</option>
											<option value="138">NPL (977)</option>
											<option value="139">NRU (674)</option>
											<option value="140">NZL (64)</option>
											<option value="141">OMN (968)</option>
											<option value="142">PAK (92)</option>
											<option value="143">PAN (507)</option>
											<option value="144">PCN (64)</option>
											<option value="145">PER (51)</option>
											<option value="146">PHL (63)</option>
											<option value="147">PLW (680)</option>
											<option value="148">PNG (675)</option>
											<option value="149">POL (48)</option>
											<option value="150">PRT (351)</option>
											<option value="151">PRY (595)</option>
											<option value="152">PYF (689)</option>
											<option value="153">QAT (974)</option>
											<option value="154">REU (262)</option>
											<option value="155">ROM (40)</option>
											<option value="156">RUS (70)</option>
											<option value="157">RWA (250)</option>
											<option value="158">SAU (966)</option>
											<option value="159">SDN (249)</option>
											<option value="160">SEN (221)</option>
											<option value="161">SGP (65)</option>
											<option value="162">SHN (290)</option>
											<option value="163">SJM (47)</option>
											<option value="164">SLB (677)</option>
											<option value="165">SLE (232)</option>
											<option value="166">SLV (503)</option>
											<option value="167">SMR (378)</option>
											<option value="168">SOM (252)</option>
											<option value="169">SPM (508)</option>
											<option value="170">SRB (381)</option>
											<option value="171">STP (239)</option>
											<option value="172">SUR (597)</option>
											<option value="173">SVK (421)</option>
											<option value="174">SVN (386)</option>
											<option value="175">SWE (46)</option>
											<option value="176">SWZ (268)</option>
											<option value="177">SYC (248)</option>
											<option value="178">SYR (963)</option>
											<option value="179">TCD (235)</option>
											<option value="180">TGO (228)</option>
											<option value="181">THA (66)</option>
											<option value="182">TJK (992)</option>
											<option value="183">TKL (690)</option>
											<option value="184">TKM (993)</option>
											<option value="185">TLS (670)</option>
											<option value="186">TON (676)</option>
											<option value="187">TUN (216)</option>
											<option value="188">TUR (90)</option>
											<option value="189">TUV (688)</option>
											<option value="190">TWN (886)</option>
											<option value="191">TZA (255)</option>
											<option value="192">UGA (256)</option>
											<option value="193">UKR (380)</option>
											<option value="194">URY (598)</option>
											<option value="195">USA (1)</option>
											<option value="196">UZB (998)</option>
											<option value="197">VEN (58)</option>
											<option value="198">VNM (84)</option>
											<option value="199">VUT (678)</option>
											<option value="200">WLF (681)</option>
											<option value="201">WSM (684)</option>
											<option value="202">XKX (383)</option>
											<option value="203">YEM (967)</option>
											<option value="204">ZAF (27)</option>
											<option value="205">ZMB (260)</option>
											<option value="206">ZWE (263)</option>
									  </select>
										<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									</div>
							</div>
							<div class="col-sm">
									<div class="form-group">
										<label for="exampleInputReg1">Mobile number*</label>
										<input type="text" class="form-control" name="ccphno" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Enter your phone number" required>
										<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									</div>
							</div>
						</div>
						<div class="container">
						
                   </div>
                   </div>
						
						
					</div>
				
		  	<center><div class="g-recaptcha" data-sitekey="6Lenzu0UAAAAANwru86INC1KaBKQ-llAVyRItx-s"></div><center><br>
		
				<div class="text-center">
              <button type="submit" class="btn btn-primary">Submit</button>
              </div>
                
				
			</form>
		</div>
			</div>
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