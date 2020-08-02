package sih;
import java.sql.*;
import java.util.ArrayList;

public class adhardbconnection {
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
	public adharrecord getmobileno(String id) throws Exception
	{
		Connection con = getDatabaseConnection();
		String inputQuery = "SELECT * FROM adhar WHERE (adharno = ?)";
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();

		if(rs.next()) 
		{
			adharrecord custRec = new adharrecord();
			custRec.setAdharno(rs.getString("adharno"));
			custRec.setMobile(rs.getString("mobile"));
			ps.close();
			closeConnection(con);
			return custRec;
		}
		
		ps.close();
		closeConnection(con);
		return null;
	}
	public ArrayList getmobilenos(String inputQuery) throws Exception
	{
		Connection con = getDatabaseConnection();
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ResultSet rs = ps.executeQuery();

		ArrayList resultList = new ArrayList();
		while(rs.next())
		{
			adharrecord custRec = new adharrecord();
			custRec.setAdharno(rs.getString("adharno"));
			custRec.setMobile(rs.getString("mobile"));
			resultList.add(custRec);
		}
		
		ps.close();
		closeConnection(con);
		return resultList;
	}
	public void insertadhar(adharrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String insertStatement = ""; 
	   insertStatement += "INSERT INTO adhar(adharno,mobile) VALUES ";
	   insertStatement += "(?,?)";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(insertStatement);
		ps.setString(1, custRec.getAdharno());
		ps.setString(2, custRec.getMobile());
		ps.execute();
		ps.close();
		closeConnection(con);
	}
	public void updatemobileno(adharrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "UPDATE adhar "
	   		+ "SET  mobile= ?,"
	   		+ " WHERE (adharno = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getMobile());
		ps.setString(2, custRec.getAdharno());
		ps.execute();


		
		ps.close();
		closeConnection(con);
	}
	public void deleteadhar(adharrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "DELETE FROM adhar "
	   		+ " WHERE (adharno = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getAdharno());
		ps.execute();


		
		ps.close();
		closeConnection(con);
   }
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		adhardbconnection dbdemo = new adhardbconnection();
		System.out.println("Working");
	}
	

}
