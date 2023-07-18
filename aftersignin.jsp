<%@ page language='java' import='java.sql.*,java.text.*' %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .link
        {
            margin-left: 1200px;
        }

        .sign
        {
            margin-top: 50px;
        }


        .middle1
            {
                text-align: center;
                background-color: white;
                width: 40%;
                font-size: 20px;
                color: rgb(0,0,98);
                border-radius: 20px; 
                height: 300px;
                margin-left: 450px;

            }

.container {
 display: grid;
 align-items: center; 
 grid-template-columns: 1fr 1fr 1fr;
 column-gap: 1px;
}


.text {
  font-size: 23px;
}
    </style>
</head>
<body bgcolor="lightblue">

<center>
<div class="container">
        <div class="image">
          <img src="SBI.png" width="80" height="80" style="align-items: center; margin-left: 520px;">
        </div>
        <div class="text">
          <h1 style="color: darkblue" >XBI NET BANKING </h1>
        </div>
      </div>
</center>   


<div class="link">
  <h3> <a href="user.jsp" style="text-decoration: none;">User Login </a> |  <a href="settings.jsp" style="text-decoration: none;">Settings </a> | <a href="index.html" style="text-decoration: none;">Sign out </a></h3>
</div>




<%@ page language='java' import='java.sql.*,java.text.*' %>
    
<center>
      <%
		    Connection cn=null;
     		PreparedStatement pst=null;
			ResultSet rs=null;
          try
         { 
			
 			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 			cn=DriverManager.getConnection("jdbc:odbc:user");
  
          String s1=request.getParameter("username");
          String s2=request.getParameter("password");
		 if(s1.length()!=0)
		 {
	        if(s2.length()!=0)
	        {
				pst=cn.prepareStatement("select * from userreg where username=(?) and password=(?)");
				pst.setString(1,s1);
				pst.setString(2,s2);
  				rs=pst.executeQuery();
      			if(rs.next())
       			{
					session.setAttribute("username",rs.getString(1));
					
    					response.sendRedirect("userpage.jsp");

        			}
                 		else
	      		{
					out.println("<center><h1>Invalid UserName/Pwd");
	         	}
	        }
	        else
	        {
				out.println("<center><h1>Password not Specified");
	        }
		}
		else
		{
			out.println("<center><h1>UserName not Specified");
		}
    }
    catch(Exception e)
    {
	out.println(e);
   	}


%>

</body>
</html>
