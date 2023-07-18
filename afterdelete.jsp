<body bgcolor=lightblue>
    <%@ page language='java' import='java.sql.*,java.text.*' %>
    
      <%
        Connection cn=null;
         PreparedStatement pst=null;
          try
         {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      	cn=DriverManager.getConnection("jdbc:odbc:account");    
         	String s1=request.getParameter("Accnumber");
          	String s2=request.getParameter("ifsc");


    	if(s1.length()!=0)
	{

		if(s2.length()!=0)	
		{	
			
			pst=cn.prepareStatement("delete from acctinfo where accountnumber = (?) and ifsccode=(?)");
			pst.setString(1,s1);
        		pst.setString(2,s2);
			pst.executeUpdate();
    			out.println("<center><h1> Account Deleted");
							
		}
		else
		{
			out.println("<center><h1>IFSC Code Not Specified");
		}
	}
	else
	{
		out.println("<center><h1>Account Number Not Specified");
	}


    
		  pst.close();
   		  cn.close();
}
catch(Exception e)
{
	out.println(e);
}
%>


</body>












