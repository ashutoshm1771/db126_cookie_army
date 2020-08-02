package sih;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class digilockerlogindbconnection {
	
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
	public digilockerloginrecord getdigilockeruser(String id) throws Exception
	{
		Connection con = getDatabaseConnection();
		String inputQuery = "SELECT * FROM digilockerlogin WHERE (userid = ?)";
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();

		if(rs.next()) 
		{
			digilockerloginrecord custRec = new digilockerloginrecord();
			custRec.setFname(rs.getString("fname"));
			custRec.setUserid(rs.getString("userid"));
			custRec.setDpass(rs.getString("dpass"));
			ps.close();
			closeConnection(con);
			return custRec;
		}
		
		ps.close();
		closeConnection(con);
		return null;
	}
	public ArrayList getdigilockerusers(String inputQuery) throws Exception
	{
		Connection con = getDatabaseConnection();
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ResultSet rs = ps.executeQuery();

		ArrayList resultList = new ArrayList();
		while(rs.next())
		{
			digilockerloginrecord custRec = new digilockerloginrecord();
			custRec.setFname(rs.getString("fname"));
			custRec.setUserid(rs.getString("userid"));
			custRec.setDpass(rs.getString("dpass"));
			resultList.add(custRec);
		}
		
		ps.close();
		closeConnection(con);
		return resultList;
	}
	public void insertdigilockeruser(digilockerloginrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String insertStatement = ""; 
	   insertStatement += "INSERT INTO digilockerlogin(fname,userid,dpass) VALUES ";
	   insertStatement += "(?,?,?)";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(insertStatement);
		ps.setString(1, custRec.getFname());
		ps.setString(2, custRec.getUserid());
		ps.setString(3, custRec.getDpass());
		ps.execute();
		ps.close();
		closeConnection(con);
	}
	public void updatedigilockeruser(digilockerloginrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "UPDATE digilockerlogin "
	   		+ "SET  fname= ?,"
	   		+ "dpass = ?,"
	   		+ " WHERE (userid = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getFname());
		ps.setString(2, custRec.getDpass());
		ps.setString(3, custRec.getUserid());
		ps.execute();


		
		ps.close();
		closeConnection(con);
	}
	public void deleteemp(digilockerloginrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "DELETE FROM digilockerlogin "
	   		+ " WHERE (userid = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getUserid());
		ps.execute();


		
		ps.close();
		closeConnection(con);
   }
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		digilockerlogindbconnection dbdemo = new digilockerlogindbconnection();
		System.out.println("Working");
	}
}
