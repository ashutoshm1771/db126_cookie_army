function setMultiCurrencyCheckBox(obOpt, bFlag){
			var obInst = document.getElementById("multiCu");

			// Online banks should be displayed when bFlag = 1
			if(obOpt.checked){
				if(bFlag){
					obInst.style.display = "";
					}
				else{
					obInst.style.display = "none";	
				}
				
					
			}
			else{
				if(bFlag){
					obInst.style.display = "none";
				}else
					obInst.style.display = "none";				
			}
		}