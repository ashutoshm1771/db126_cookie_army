package sih;
import java.sql.*;
import java.util.ArrayList;



public class dbconnection {
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
	public emprecord getEmployee(String id) throws Exception
	{
		Connection con = getDatabaseConnection();
		String inputQuery = "SELECT * FROM govtemp WHERE (empid = ?)";
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();

		if(rs.next()) 
		{
			emprecord custRec = new emprecord();
			custRec.setEmpid(rs.getString("EMPID"));
			custRec.setEname(rs.getString("ENAME"));
			custRec.setEadhar(rs.getString("EADHAR"));
			custRec.setEsign(rs.getString("ESIGN"));
			custRec.setGovtid(rs.getString("GOVTID"));
			custRec.setEphno(rs.getString("EPHNO"));
			custRec.setEmail(rs.getString("EMAIL"));
			custRec.setPass (rs.getString("PASS"));
			custRec.setState(rs.getString("STATE"));
			custRec.setDist(rs.getString("DIST"));
			custRec.setPincode(rs.getString("PINCODE"));
			ps.close();
			closeConnection(con);
			return custRec;
		}
		
		ps.close();
		closeConnection(con);
		return null;
	}
	public ArrayList getEmployes(String inputQuery) throws Exception
	{
		Connection con = getDatabaseConnection();
		PreparedStatement ps = con.prepareStatement(inputQuery);
		ResultSet rs = ps.executeQuery();

		ArrayList resultList = new ArrayList();
		while(rs.next())
		{
			emprecord custRec = new emprecord();
			custRec.setEmpid(rs.getString("EMPID"));
			custRec.setEname(rs.getString("ENAME"));
			custRec.setEadhar(rs.getString("EADHAR"));
			custRec.setEsign(rs.getString("ESIGN"));
			custRec.setGovtid(rs.getString("GOVTID"));
			custRec.setEphno(rs.getString("EPHNO"));
			custRec.setEmail(rs.getString("EMAIL"));
			custRec.setPass (rs.getString("PASS"));
			custRec.setState(rs.getString("STATE"));
			custRec.setDist(rs.getString("DIST"));
			custRec.setPincode(rs.getString("PINCODE"));
			resultList.add(custRec);
		}
		
		ps.close();
		closeConnection(con);
		return resultList;
	}
	public void insertemp(emprecord custRec) throws Exception
	{
		Connection con = getDatabaseConnection();

	   String insertStatement = ""; 
	   insertStatement += "INSERT INTO govtemp(empid,ename,eadhar,esign,govtid,ephno,email,state,dist,pincode,pass) VALUES ";
	   insertStatement += "(?,?,?,?,?,?,?,?,?,?,?)";
	   
	   	    
		PreparedStatement ps = con.prepareStatement(insertStatement);
		ps.setString(1, custRec.getEmpid());
		ps.setString(2, custRec.getEname());
		ps.setString(3, custRec.getEadhar());
		ps.setString(4, custRec.getEsign());
		ps.setString(5, custRec.getGovtid());
		ps.setString(6, custRec.getEphno());
		ps.setString(7, custRec.getEmail());
		ps.setString(8, custRec.getState());
		ps.setString(9, custRec.getDist());
		ps.setString(10, custRec.getPincode());
		ps.setString(11, custRec.getPass());
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
		dbconnection dbdemo = new dbconnection();
		emprecord resultList = dbdemo.getEmployee("1");
		System.out.println(resultList.getEname());
		System.out.println("Working");
	}

}
