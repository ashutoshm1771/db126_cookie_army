package sih;
import java.sql.*;
import java.util.ArrayList;

public class tenderdetailsdbconnection {
	public Connection getDatabaseConnection() throws Exception
	{
	    Class.forName("com.mysql.cj.jdbc.Driver");

	    Connection con = DriverManager.getConnection(
	    		"jdbc:mysql://localhost:3306/sih",
	    		"root","mysqlpassword");

	    return con;
	}
	
	public void closeConnection(Connection con) throws Exception
	{
		con.close();
	}
	
	
	public tenderdetailsrecord getTenderdetail(String id) throws Exception
	{
		Connection con = getDatabaseConnection();
		String inputQuery = "SELECT * FROM tenderdetails WHERE (referenceno = ?)";
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();

		if(rs.next()) 
		{
			tenderdetailsrecord custRec = new tenderdetailsrecord();
			custRec.setReferenceno(rs.getString("referenceno"));
			custRec.setTendertitle(rs.getString("tendertitle"));
			custRec.setClosingdate(rs.getString("closingdate"));
			custRec.setBiddingopeningdate(rs.getString("biddingopeningdate"));
			custRec.setLocation(rs.getString("location"));
			custRec.setExpectedcost(rs.getString("expectedcost"));
			custRec.setClassification(rs.getString("classification"));
			custRec.setPublishcompany(rs.getString("publishcompany"));
			custRec.setTdetails(rs.getBlob("tdetails"));
			custRec.setStartdate(rs.getString("startdate"));
			
			ps.close();
			closeConnection(con);
			return custRec;
		}
		
		ps.close();
		closeConnection(con);
		return null;
	}
	
	public ArrayList gettendersdetails(String inputQuery) throws Exception
	{
		Connection con = getDatabaseConnection();
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ResultSet rs = ps.executeQuery();

		ArrayList resultList = new ArrayList();
		while(rs.next())
		{
			tenderdetailsrecord custRec = new tenderdetailsrecord();
			custRec.setReferenceno(rs.getString("referenceno"));
			custRec.setTendertitle(rs.getString("tendertitle"));
			custRec.setClosingdate(rs.getString("closingdate"));
			custRec.setBiddingopeningdate(rs.getString("biddingopeningdate"));
			custRec.setLocation(rs.getString("location"));
			custRec.setExpectedcost(rs.getString("expectedcost"));
			custRec.setClassification(rs.getString("classification"));
			custRec.setPublishcompany(rs.getString("publishcompany"));
			custRec.setTdetails(rs.getBlob("tdetails"));
			custRec.setStartdate(rs.getString("startdate"));
			resultList.add(custRec);
		}
		
		ps.close();
		closeConnection(con);
		return resultList;
	}
	
	public void inserttenderdetails(tenderdetailsrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String insertStatement = ""; 
	   insertStatement += "INSERT INTO tenderdetails( tendertitle,referenceno,closingdate,biddingopeningdate,location,expectedcost,classification,publishcompany,tdetails,startdate) VALUES ";
	   insertStatement += "(?,?,?,?,?,?,?,?,?,?)";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(insertStatement);
		ps.setString(1, custRec.getTendertitle());
		ps.setString(2, custRec.getReferenceno());
		ps.setString(3, custRec.getClosingdate());
		ps.setString(4, custRec.getBiddingopeningdate());
		ps.setString(5, custRec.getLocation());
		ps.setString(6, custRec.getExpectedcost());
		ps.setString(7, custRec.getClassification());
		ps.setString(8, custRec.getPublishcompany());
		ps.setBlob(9, custRec.getTdetails());
		ps.setString(10, custRec.getStartdate());
		ps.execute();
		ps.close();
		closeConnection(con);
	}
	public void updatetenderdetails(tenderdetailsrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "UPDATE tenderdetails "
	   		+ "SET  tendertitle= ?,"
	   		+ "closingdate = ?,"
	   		+ "biddingopeningdate = ?,"
	   		+ "location = ?,"
	   		+ "expectedcost = ?,"
	   		+ "classification = ?,"
	   		+ "publishcompany = ?,"
	   		+ "tdetails=?,"
	   		+ "startdate = ?,"
	   		+ " WHERE (referenceno = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getTendertitle());
		ps.setString(2, custRec.getClosingdate());
		ps.setString(3, custRec.getBiddingopeningdate());
		ps.setString(4, custRec.getLocation());
		ps.setString(5, custRec.getExpectedcost());
		ps.setString(6, custRec.getClassification());
		ps.setString(7, custRec.getPublishcompany());
		ps.setBlob(8,custRec.getTdetails());
		ps.setString(9, custRec.getStartdate());
		ps.setString(10, custRec.getReferenceno());
		ps.execute();


		
		ps.close();
		closeConnection(con);
	}
	public void deletetenderdetails(tenderdetailsrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "DELETE FROM tenderdetails "
	   		+ " WHERE (referenceno = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getReferenceno());
		ps.execute();


		
		ps.close();
		closeConnection(con);
   }
	
	
	
	
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		tenderdetailsdbconnection dbdemo = new tenderdetailsdbconnection();
		ArrayList resultList = dbdemo.gettendersdetails("select * from tenderdetails");
		System.out.println(resultList.size());
		System.out.println("Working");
	}

}
