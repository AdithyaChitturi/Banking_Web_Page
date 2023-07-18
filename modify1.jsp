<body bgcolor=lightblue>
    <%@ page language='java' import='java.sql.*,java.text.*' %>
    
      <%
        Connection cn=null;
         PreparedStatement pst=null;
          try
         {	
	     String acctno=(String)session.getAttribute("acctnumber");
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      	cn=DriverManager.getConnection("jdbc:odbc:account");    
         	String s1=request.getParameter("fname");
            String s2=request.getParameter("lname");
         	String s3=request.getParameter("email");
         	String s4=request.getParameter("mobile");
		String s5=request.getParameter("branch");
		String s6=request.getParameter("amount");
		String s7=request.getParameter("address");
		String s8=(String)session.getAttribute("acctnumber");
		
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
						if(s6.length()!=0)	
						{
					
							if(s7.length()!=0)	
							{
				String sql="update acctinfo set firstname=?,lastname=?,email=?,mobile=?,branch=?,Balance=?,Address=? where accountnumber=?";	
				pst=cn.prepareStatement(sql);

				pst.setString(1,s1);	
        			pst.setString(2,s2);
       			pst.setString(3,s3);
        			pst.setString(4,s4);
				pst.setString(5,s5);
        			pst.setString(6,s6);
       			pst.setString(7,s7);
				pst.setString(8,s8);
				pst.executeUpdate();
    				out.println("<center><h1> Account Updated Succesfully");
									
							}
							else
							{
							out.println("<center><h1>Address Not Specified");

							}
						}
								else
								{
									out.println("<center><h1>Amount Not Specified");
								}
							}
							else
							{
								out.println("<center><h1>Branch Not Specified");
							}
					


				}
				else
				{
					out.println("<center><h1>Mobile Not specified");

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












