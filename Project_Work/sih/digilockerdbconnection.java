package sih;
import java.sql.*;
import java.util.ArrayList;

public class digilockerdbconnection {
	public Connection getDatabaseConnection() throws Exception
	{
	    Class.forName("com.mysql.cj.jdbc.Driver");

	    Connection con = DriverManager.getConnection(
	    		"jdbc:mysql://localhost:3306/sih",
	    		"root", "mysqlpassword");

	    return con;
	}
	
	public void closeConnection(Connection con) throws Exception
	{
		con.close();
	}
	public ArrayList getdigilockerdocs(String inputQuery) throws Exception
	{
		Connection con = getDatabaseConnection();
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ResultSet rs = ps.executeQuery();

		ArrayList resultList = new ArrayList();
		while(rs.next())
		{
			digilockerrecord custRec = new digilockerrecord();
			custRec.setDocname(rs.getString("docname"));
			custRec.setDoc(rs.getBlob("doc"));
			resultList.add(custRec);
		}
		
		ps.close();
		closeConnection(con);
		return resultList;
	}
	public void insertdigilockerdoc(digilockerrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String insertStatement = ""; 
	   insertStatement += "INSERT INTO digilocker(docname,doc,userid) VALUES ";
	   insertStatement += "(?,?,?)";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(insertStatement);
		ps.setString(1, custRec.getDocname());
		ps.setBlob(2, custRec.getDoc());
		ps.setString(3, custRec.getUserid());
		ps.execute();
		ps.close();
		closeConnection(con);
	}
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		digilockerdbconnection dbdemo = new digilockerdbconnection();
		System.out.println("Working");
	}
	

}
