package sih;
import java.sql.*;

public class tenderdetailsrecord {
	
	public String tendertitle;
	public String referenceno;
	public String closingdate;
	public String  biddingopeningdate;
	public String  location;
	public String  expectedcost;
	public String  classification;
	public String publishcompany;
	public Blob tdetails;
	public String startdate;
	
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public Blob getTdetails() {
		return tdetails;
	}
	public void setTdetails(Blob tdetails) {
		this.tdetails = tdetails;
	}
	
	
	
	public String getPublishcompany() {
		return publishcompany;
	}
	public void setPublishcompany(String publishcompany) {
		this.publishcompany = publishcompany;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getExpectedcost() {
		return expectedcost;
	}
	public void setExpectedcost(String expectedcost) {
		this.expectedcost = expectedcost;
	}
	public String getTendertitle() {
		return tendertitle;
	}
	public void setTendertitle(String tendertitle) {
		this.tendertitle = tendertitle;
	}
	public String getReferenceno() {
		return referenceno;
	}
	public void setReferenceno(String referenceno) {
		this.referenceno = referenceno;
	}
	public String getClosingdate() {
		return closingdate;
	}
	public void setClosingdate(String closingdate) {
		this.closingdate = closingdate;
	}
	public String getBiddingopeningdate() {
		return biddingopeningdate;
	}
	public void setBiddingopeningdate(String biddingopeningdate) {
		this.biddingopeningdate = biddingopeningdate;
	}

}
