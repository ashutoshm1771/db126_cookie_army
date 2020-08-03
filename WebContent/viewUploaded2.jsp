<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page import = "etendering.*" %>
<%

String sports[]=request.getParameterValues("yes");
/*for(int i=0;;choosesports+=sports[i]+",")*/
Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/etendering","root","tulasidevi@11");
							Statement st = con.createStatement();
							ResultSet rs;
							ResultSet rs1;
							//rs = st.executeQuery("select * from tenderdetails ");
try{

for(int i=0;i<sports.length;i++)
{
	out.print((String)session.getAttribute("referenceno"));
	st.execute("insert into selecteddocs(userid,tenderid,document) values(\""+(String)session.getAttribute("bidderusername")+"\",\""+(String)session.getAttribute("referenceno")+"\",\"select doc from digilocker where userid='hanifa@123' and docname='"+sports[i]+"'\")");
/*	out.print("hello");
	rs.next();
	out.print("hello");
	out.print(rs.getBlob(1));
	out.print("hello123");
	Blob blob = rs.getBlob(1);
	//blob.setBytes(1, rs.getBlob(1).getBytes());
    st.execute("insert into selecteddocs(userid,tenderno,document) values('hanifa','123456','"+blob+"')");
	*/
	out.print("Data Inserted\n");
	//dbdemo.insertdocs(record);
	
	}
out.println("Data is successfully inserted into database.");
}
catch(Exception e){
System.out.println(e);
}
%>

