package sih;
import java.sql.*;
import java.util.*;


public class bidderenrolldbconnection {
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
	public bidderenrollrecord getEnrolledBidder(String id) throws Exception
	{
		Connection con = getDatabaseConnection();
		String inputQuery = "SELECT * FROM company WHERE (regno = ?)";
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();

		if(rs.next()) 
		{
			bidderenrollrecord custRec = new bidderenrollrecord();
			custRec.setRegno(rs.getString("REGNO"));
			custRec.setComname(rs.getString("COMNAME"));
			custRec.setNpd(rs.getString("NPD"));
			custRec.setBiddertype(rs.getString("BIDDERTYPE"));
			custRec.setCcity(rs.getString("CCITY"));
			custRec.setCstate(rs.getString("CSTATE"));
			custRec.setCpcode(rs.getString("CPCODE"));
			custRec.setCpan(rs.getString("CPAN"));
			ps.close();
			closeConnection(con);
			return custRec;
		}
		
		ps.close();
		closeConnection(con);
		
		
		return null;
	}
	public ArrayList getEnrolledBidders(String inputQuery) throws Exception
	{
		Connection con = getDatabaseConnection();
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ResultSet rs = ps.executeQuery();

		ArrayList resultList = new ArrayList();
		while(rs.next())
		{
			bidderenrollrecord custRec = new bidderenrollrecord();
			custRec.setRegno(rs.getString("regno"));
			custRec.setComname(rs.getString("comname"));
			custRec.setPbidder(rs.getString("pbidder"));
			custRec.setPcategory(rs.getString("pcategory"));
			custRec.setEyear(rs.getString("eyear"));
			custRec.setNatureofb(rs.getString("natureofb"));
			custRec.setLegalstatus(rs.getString("legalstatus"));
			custRec.setComcat(rs.getString("comcat"));
			custRec.setNpd(rs.getString("npd"));
			custRec.setBiddertype(rs.getString("biddertype"));
			custRec.setCountry(rs.getString("country"));
			custRec.setSc(rs.getString("sc"));
			custRec.setPostalcode(rs.getString("postalcode"));
			custRec.setCstate(rs.getString("cstate"));
			custRec.setCcity(rs.getString("ccity"));
			custRec.setCpcode(rs.getString("cpcode"));
			custRec.setCdist(rs.getString("cdist"));
			custRec.setCpan(rs.getString("cpan"));
			custRec.setMobile(rs.getString("mobile"));
			custRec.setCname(rs.getString("cname"));
			custRec.setDob(rs.getString("dob"));
			custRec.setDesignation(rs.getString("designation"));
			custRec.setCsign(rs.getString("csign"));
			resultList.add(custRec);
		}
		
		ps.close();
		closeConnection(con);
		return resultList;
	}
	public void insertEnrolledBidder(bidderenrollrecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String insertStatement = ""; 
	   insertStatement += "INSERT INTO company(regno,comname,pbidder,pcategory,eyear,natureofb,legalstatus,comcat,npd,biddertype,country,sc,postalcode,cstate,ccity,cpcode,cdist,cpan,mobile,cname,dob,designation,csign) VALUES ";
	   insertStatement += "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(insertStatement);
		ps.setString(1, custRec.getRegno());
		ps.setString(2, custRec.getComname());
		ps.setString(3, custRec.getPbidder());
		ps.setString(4, custRec.getPcategory());
		ps.setString(5, custRec.getEyear());
		ps.setString(6, custRec.getNatureofb());
		ps.setString(7, custRec.getLegalstatus());
		ps.setString(8, custRec.getComcat());
		ps.setString(9, custRec.getNpd());
		ps.setString(10, custRec.getBiddertype());
		ps.setString(11, custRec.getCountry());
		ps.setString(12, custRec.getSc());
		ps.setString(13, custRec.getPostalcode());
		ps.setString(14, custRec.getCstate());
		ps.setString(15, custRec.getCcity());
		ps.setString(16, custRec.getCpcode());
		ps.setString(17, custRec.getCdist());
		ps.setString(18, custRec.getCpan());
		ps.setString(19, custRec.getMobile());
		ps.setString(20, custRec.getCname());
		ps.setString(21, custRec.getDob());
		ps.setString(22, custRec.getDesignation());
		ps.setString(23, custRec.getCsign());
		ps.execute();
		ps.close();
		closeConnection(con);
		
	}
	public void updateemp(emprecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "UPDATE govtemp "
	   		+ "SET  ename= ?,"
	   		+ "eadhar = ?,"
	   		+ "esign = ?,"
	   		+ "govtid = ?,"
	   		+ "ephno = ?,"
	   		+ "email = ?,"
	   		+ "state = ?,"
	   		+ "dist = ?,"
	   		+ "pincode = ?,"
	   		+ "pass = ?,"
	   		+ " WHERE (empid = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getEname());
		ps.setString(2, custRec.getEadhar());
		ps.setString(3, custRec.getEsign());
		ps.setString(4, custRec.getGovtid());
		ps.setString(5, custRec.getEphno());
		ps.setString(6, custRec.getEmail());
		ps.setString(7, custRec.getState());
		ps.setString(8, custRec.getDist());
		ps.setString(9, custRec.getPincode());
		ps.setString(10, custRec.getPass());
		ps.setString(11, custRec.getEmpid());
		ps.execute();


		
		ps.close();
		closeConnection(con);
	}
	public void deleteemp(emprecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String updateStatement = ""; 
	   updateStatement += "DELETE FROM govtemp "
	   		+ " WHERE (empid = ?) ";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(updateStatement);
		ps.setString(1, custRec.getEmpid());
		ps.execute();


		
		ps.close();
		closeConnection(con);
   }
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		bidderenrolldbconnection dbdemo = new bidderenrolldbconnection();
		ArrayList resultList = dbdemo.getEnrolledBidders("select * from company ");
		System.out.println(resultList.size());
		
		System.out.println("Working");
	}

}
