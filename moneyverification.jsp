

<%@ page language='java' import='java.sql.*,java.text.*' %>
    
<center>
      <%
		    Connection cn=null;
     		PreparedStatement pst=null;
			ResultSet rs=null;
          try
         {
			
 			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 			cn=DriverManager.getConnection("jdbc:odbc:account");
  
          String s1=request.getParameter("accountname");
          String s2=request.getParameter("accountnumber");
          String s3=request.getParameter("ifsccode");
          Integer s4=Integer.parseInt(request.getParameter("money"));
	  String name=(String)session.getAttribute("username");  

		 if(s1.length()!=0)
		 {
	        if(s2.length()!=0)
	        {
			 if(s3.length()!=0)
		     	 {
	              if(s4!=0)
	        	    {

				pst=cn.prepareStatement("update acctinfo set Balance=Balance+(?)  where accountnumber=(?)");
				pst.setInt(1,s4);
				pst.setString(2,s2);
  				int x=pst.executeUpdate();
				if(x==1)
				{
				pst=cn.prepareStatement("update acctinfo set Balance=Balance-(?)  where firstname=(?)");
				pst.setInt(1,s4);
				pst.setString(2,name);
				pst.executeUpdate();
				out.println("<body bgcolor=lightblue> <center><h1> Money Transfer Succesfully");


				}
				else
					{
						out.println("<body bgcolor=lightblue> <center><h1> Invalid Detials");
					}
      		
	       	    }
	        else
	        {
				out.println("<body bgcolor=lightblue><center><h1>Amount Not Specified");
	        }
		}
		else
		{
			out.println(" <body bgcolor=lightblue><center><h1>IFSC Code not Specified");
		}
		}
			else
			{
				out.println(" <body bgcolor=lightblue> <center><h1>Account Number not Specified");
			}
		}
		else
		{
			out.println(" <body bgcolor=lightblue> <center><h1>Account Holder Name not Specified");
		}
    }
    catch(Exception e)
    {
	out.println(e);
   	}


%>