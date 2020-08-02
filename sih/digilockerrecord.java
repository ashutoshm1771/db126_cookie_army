package sih;
import java.sql.*;
public class digilockerrecord {
	public String docname;
	public Blob doc;
	public String userid;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getDocname() {
		return docname;
	}
	public void setDocname(String docname) {
		this.docname = docname;
	}
	public Blob getDoc() {
		return doc;
	}
	public void setDoc(Blob doc) {
		this.doc = doc;
	}

}
