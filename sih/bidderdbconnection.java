package sih;
import java.sql.*;
import java.util.ArrayList;

public class bidderdbconnection {
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
	public bidderrecord getBidder(String id) throws Exception
	{
		Connection con = getDatabaseConnection();
		String inputQuery = "SELECT * FROM bidder WHERE (bidderid = ?)";
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();

		if(rs.next()) 
		{
			bidderrecord custRec = new bidderrecord();
			custRec.setBidderid(rs.getString("BIDDERID"));
			custRec.setBname(rs.getString("BNAME"));
			custRec.setBadhar(rs.getString("BADHAR"));
			custRec.setBpan(rs.getString("BPAN"));
			custRec.setBphno(rs.getString("BPHNO"));
			custRec.setBemail(rs.getString("BEMAIL"));
			custRec.setBpass (rs.getString("BPASS"));
			custRec.setBstate(rs.getString("BSTATE"));
			custRec.setBdist(rs.getString("BDIST"));
			custRec.setBpincode(rs.getString("BPINCODE"));
			ps.close();
			closeConnection(con);
			return custRec;
		}
		
		ps.close();
		closeConnection(con);
		return null;
	}
	public ArrayList getBidders(String inputQuery) throws Exception
	{
		Connection con = getDatabaseConnection();
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ResultSet rs = ps.executeQuery();

		ArrayList resultList = new ArrayList();
		while(rs.next())
		{
			bidderrecord custRec = new bidderrecord();
			custRec.setBidderid(rs.getString("BIDDERID"));
			custRec.setBname(rs.getString("BNAME"));
			custRec.setBadhar(rs.getString("BADHAR"));
			custRec.setBpan(rs.getString("BPAN"));
			custRec.setBphno(rs.getString("BPHNO"));
			custRec.setBemail(rs.getString("BEMAIL"));
			custRec.setBpass (rs.getString("BPASS"));
			custRec.setBstate(rs.getString("BSTATE"));
			custRec.setBdist(rs.getString("BDIST"));
			custRec.setBpincode(rs.getString("BPINCODE"));
			resultList.add(custRec);
		}
		
		ps.close();
		closeConnection(con);
		return resultList;
	}
	public void insertbidder(bidderrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String insertStatement = ""; 
	   insertStatement += "INSERT INTO bidder(bidderid,bname,badhar,bpan,bphno,bemail,bstate,bdist,bpincode,bpass) VALUES ";
	   insertStatement += "(?,?,?,?,?,?,?,?,?,?)";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(insertStatement);
		ps.setString(1, custRec.getBidderid());
		ps.setString(2, custRec.getBname());
		ps.setString(3, custRec.getBadhar());
		ps.setString(4, custRec.getBpan());
		ps.setString(5, custRec.getBphno());
		ps.setString(6, custRec.getBemail());
		ps.setString(7, custRec.getBstate());
		ps.setString(8, custRec.getBdist());
		ps.setString(9, custRec.getBpincode());
		ps.setString(10, custRec.getBpass());
		ps.execute();
		ps.close();
		closeConnection(con);
	}
	public void updatebidder(bidderrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "UPDATE bidder "
	   		+ "SET  bname= ?,"
	   		+ "badhar = ?,"
	   		+ "bpan = ?,"
	   		+ "bphno = ?,"
	   		+ "bemail = ?,"
	   		+ "bstate = ?,"
	   		+ "bdist = ?,"
	   		+ "bpincode = ?,"
	   		+ "bpass = ?,"
	   		+ " WHERE (bidderid = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getBname());
		ps.setString(2, custRec.getBadhar());
		ps.setString(3, custRec.getBpan());
		ps.setString(5, custRec.getBphno());
		ps.setString(6, custRec.getBemail());
		ps.setString(7, custRec.getBstate());
		ps.setString(8, custRec.getBdist());
		ps.setString(9, custRec.getBpincode());
		ps.setString(10, custRec.getBpass());
		ps.setString(11, custRec.getBidderid());
		ps.execute();


		
		ps.close();
		closeConnection(con);
	}
	public void deletebidder(bidderrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "DELETE FROM bidder "
	   		+ " WHERE (bidderid = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getBidderid());
		ps.execute();


		
		ps.close();
		closeConnection(con);
   }
	 public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		bidderdbconnection dbdemo = new bidderdbconnection();
		ArrayList resultList = dbdemo.getBidders("select * from bidder ");
		System.out.println(resultList.size());
	}


}
