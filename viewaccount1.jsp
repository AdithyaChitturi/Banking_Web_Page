<%@ page language='java' import='java.sql.*,java.text.*' %>

<html>
<head>
<style>
       .middle1
            {
                
                background-color: white;
                width: 70%;
                font-size: 10px;
                color: rgb(0,0,98);
                border-radius: 20px; 
                height: 450px;
                margin-left: 50px;

            }
td{
            border: 20px;
            border-radius: 10px;
            background-color: rgb(223, 223, 223);
        }   
			
</style>
</head>
<body bgcolor="lightblue">

<br>
<br>
<div class="middle1">
<center>
<table border=0 width=500 cellpadding="6" style="font-size: 27px;">

<%

String name=(String)session.getAttribute("firstname");  
     Connection cn=null;
     PreparedStatement pst=null;
     ResultSet rs=null;
      try
     {
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  cn=DriverManager.getConnection("jdbc:odbc:account");
  pst=cn.prepareStatement("select * from acctinfo where firstname=?");
pst.setString(1,name);
   rs=pst.executeQuery();

  if(rs.next())
   {

out.println("<tr> <br> <br>");
out.println("<th> First Name:-</td>");
out.println("<td>"+rs.getString(1)+"</td>");
out.println("</tr>");


out.println("<tr>");
out.println("<th> Last Name:-</td>");
out.println("<td>"+rs.getString(2)+"</td>");
out.println("</tr>");



out.println("<tr>");
out.println("<th> Email Id:-</td>");
out.println("<td>"+rs.getString(3)+"</td>");
out.println("</tr>");




out.println("<tr>");
out.println("<th> Mobile:-</td>");
out.println("<td>"+rs.getString(4)+"</td>");
out.println("</tr>");


out.println("<tr>");
out.println("<th> Account Number:-</td>");
out.println("<td>"+rs.getString(5)+"</td>");
out.println("</tr>");



out.println("<tr>");
out.println("<th> IFSC Code:-</td>");
out.println("<td>"+rs.getString(6)+"</td>");
out.println("</tr>");






out.println("<tr>");
out.println("<th> Branch:-</td>");
out.println("<td>"+rs.getString(7)+"</td>");
out.println("</tr>");



out.println("<tr>");
out.println("<th> Balance:-</td>");
out.println("<td>"+rs.getString(8)+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th> Address:-</td>");
out.println("<td>"+rs.getString(9)+"</td>");
out.println("</tr>");
















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

</div>

</center>


</body>
</html>