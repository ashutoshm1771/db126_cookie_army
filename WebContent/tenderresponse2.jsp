<%@page import="java.sql.*" %>
<%@page import = "etendering.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/etendering","root","tulasidevi@11");
Statement st = con.createStatement();
st.execute("insert into bid(userid,tenderid,currency,amount) values ('"+(String)session.getAttribute("bidderusername")+"','"+(String)session.getAttribute("referenceno")+"','"+request.getParameter("currency")+"','"+request.getParameter("amount")+"') ");
%>
<html>
<Body>
<h1>Your Tender Bidding is Success</h1>

<h4>Back to List of Tenders</h4>
</Body>
</html>