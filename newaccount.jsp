<html>

<head>
<style>
        .middle1
            {
                text-align: center;
                background-color: white;
                width: 40%;
                font-size: 20px;
                color: rgb(0,0,98);
                border-radius: 20px; 
                height: 400px;
                margin-left: 200px;

            }
</style>
</head>


<body bgcolor=lightblue>
<form action="addverification.jsp">
<div class="middle1">
        <br>
        
    <h2>Add Account </h2>
    <center>
	    <table border="0" class="center">
       
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
    <th>Account Number: </th>
    <td><input type="text" name="Accnumber"> </td>
    </tr>






    	<tr>
    <th>IFSC Code: </th>
    <td><input type="text" name="ifsc"> </td>
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
    <td><textarea name=address rows=3 cols=20></textarea></td>
    </tr>
	

     </center>
</table>

<button class="button1"> Enter</button>
   </div>
</form>



</body>
</html>