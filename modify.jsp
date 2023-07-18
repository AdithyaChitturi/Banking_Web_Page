<html>
<%@ page import='java.sql.*,java.text.*'%>

<head>
<style>
               .middle1
            {
                
                background-color: white;
                width: 40%;
                font-size: 20px;
                color: rgb(0,0,98);
                border-radius: 20px; 
                height: 390px;
		    margin-left:290px
                

            }
</style>
</head>
<body bgcolor=lightblue>



<%
String s1=request.getParameter("t1");
out.println("<br>");
session.setAttribute("acctnumber",s1);

%>

<form action="modify1.jsp">

<div class="middle1">
<br>
<h2 style="text-align: center;">UPDATION FORM </h2>
        
        
    <center>
	    <table border="0">
       
		<tr>
	<th>Account Number :</th>
	<td><input type='text' name="t1"  size=20 value=<%=s1%> disabled></td>
    </tr>	

	
    <tr>
    <th>First Name: </th> 
    <td><input type="text" name="fname"> </td>
    </tr>
  
    	<tr>
    <th>Last Name: </th>
    <td><input type="text" name="lname"> </td>
    </tr>
	    	<tr>
    <th>Email: </th>
    <td><input type="text" name="email"> </td>
    </tr>



    <tr>
    <th>Mobile: </th>
    <td><input type="text" name="mobile"> </td>
    </tr>

	
	




    	<tr>
    <th>Branch: </th>
    <td><input type="text" name="branch"> </td>
    </tr>


		<tr>
    <th>Amount: </th>
    <td><input type="text" name="amount"> </td>
    </tr>


    	<tr>
    <th>Address: </th>
    <td><textarea name="address" rows=3 cols=20></textarea></td>
    </tr>
	
</table>

<button class="button1"> Enter</button>
   </div>
</form>




</body>
