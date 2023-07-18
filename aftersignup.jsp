<body bgcolor=lightblue>
    <%@ page language='java' import='java.sql.*,java.text.*' %>
    
      <%
        Connection cn=null;
         PreparedStatement pst=null;
          try
         {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      	cn=DriverManager.getConnection("jdbc:odbc:user");    
         	String s1=request.getParameter("username1");
         	String s2=request.getParameter("username2");
          	String s3=request.getParameter("email");
          	String s4=request.getParameter("mobile");
          	String s5=request.getParameter("password");

    	if(s1.length()!=0)
	{

		if(s2.length()!=0)	
		{
			if(s3.length()!=0)	
			{
				if(s4.length()!=0)	
				{
					if(s5.length()!=0)	
				        {
					pst=cn.prepareStatement("insert into userreg values(?,?,?,?)");
					pst.setString(1,s1);

       					pst.setString(2,s3);
        				pst.setString(3,s4);
        				pst.setString(4,s5);

					pst.executeUpdate();
    					response.sendRedirect("signuppage.jsp");
				        }
					else
			  		{
					out.println("<center><h1>Password Not Specified");
					}
				}
				else
				{
				out.println("<center><h1>Phone Number Not Specified");
				}
			
			}
			else
			{
				out.println("<center><h1>Email Not Specified");
			}

			}

			else
			{
				out.println("<center><h1>Last Name Not Specified");
			}
			}
			else
			{
				out.println("<center><h1>First Name Not Specified");
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