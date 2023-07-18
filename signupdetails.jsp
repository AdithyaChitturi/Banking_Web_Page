<body bgcolor=lightblue>
    <%@ page language='java' import='java.sql.*,java.text.*' %>
    
      <%
        Connection cn=null;
         PreparedStatement pst=null;
		ResultSet rs=null;
          try
         {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      	cn=DriverManager.getConnection("jdbc:odbc:account");    
		String s1=request.getParameter("username");

		String s2=request.getParameter("Accnumber");
		String s3=request.getParameter("ifsc");
		
     if(s1.length()!=0)
		 {
	        if(s2.length()!=0)
	        {
			        if(s3.length()!=0)
	        {
		
			
				pst=cn.prepareStatement("select * from acctinfo where firstname =(?) and accountnumber=(?) and ifsccode=(?)");
				pst.setString(1,s1);
				pst.setString(2,s2);
				pst.setString(3,s3);

  				rs=pst.executeQuery();
      				if(rs.next())
       				{
					session.setAttribute("firstname",rs.getString(1));
					session.setAttribute("accountnumber",rs.getString(2));
					session.setAttribute("ifsccode",rs.getString(3));
    					response.sendRedirect("userpage1.jsp");

        			}
                 		else
	      			{
					out.println("<center><h1>Invalid Details");
	         		}
	      		  }
	        	  else
	        		{
				out.println("<center><h1>IFSC not Specified");
	        		}
		}
		else
		{
			out.println("<center><h1>Account NUmber not Specified");
		}

		}
		else
		{
			out.println("<center><h1>User Name not Specified");
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












