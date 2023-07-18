<%@ page language='java' import='java.sql.*,java.text.*' %>

<html>
<head>
<style>
       .middle1
            {
                
                background-color: white;
                width: 90%;
                font-size: 20px;
                color: rgb(0,0,98);
                border-radius: 20px; 
                height: 250px;
                margin-left: 50px;

            }
</style>
</head>
<body bgcolor="lightblue">

<br>
<br>

<center>
<table border=1 width=1000 cellpadding="6">
<tr>
     <th> First Name</th>
     <th> Last Name</th>
     <th> Email ID</th>
     <th> Mobile</th>
     <th> Account Number</th>
       <th>IFSC Code</th>
     <th> Branch</th>
	<th> Balance</th>
	<th> Address</th>
</tr>
<%
     Connection cn=null;
     PreparedStatement pst=null;
     ResultSet rs=null;
      try
     {
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  cn=DriverManager.getConnection("jdbc:odbc:account");
  pst=cn.prepareStatement("select *from acctinfo");
   rs=pst.executeQuery();

  while(rs.next())
   {
out.println("<tr>");
out.println("<td>"+rs.getString(1)+"</td>");
out.println("<td>"+rs.getString(2)+"</td>");
out.println("<td>"+rs.getString(3)+"</td>");
out.println("<td>"+rs.getString(4)+"</td>");
out.println("<td>"+rs.getString(5)+"</td>");
out.println("<td>"+rs.getString(6)+"</td>");
out.println("<td>"+rs.getString(7)+"</td>");
out.println("<td>"+rs.getString(8)+"</td>");
out.println("<td>"+rs.getString(9)+"</td>");
   }
   rs.close();
   pst.close();
   cn.close();
}
catch(Exception e)
{
	out.println(e);
}
%>



</center>


</body>
</html>