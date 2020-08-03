function indianForeignBidderEnable() {	
		var formObject = document.getElementById("CorporateTendererForm");			
		var divIndianValue = document.getElementById("IndianBidderDetails");	
		var divIndianPanValue = document.getElementById("IndianBidderDetailsPan");
		var divForeignValue = document.getElementById("ForeignBidderDetails");	
		
		if (formObject.bidderTypeIndian.checked)
		{
			divIndianValue.style.display = "";	
			divIndianPanValue.style.display = "";
		} else {
			divIndianValue.style.display = "none";	
			divIndianPanValue.style.display = "none";
		}
		if (formObject.bidderTypeForeign.checked)
		{
			divForeignValue.style.display = "";	
		} else {
			divForeignValue.style.display = "none";	
		}	

	}