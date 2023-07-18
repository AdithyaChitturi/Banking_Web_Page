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
                height: 220px;
                margin-left: 200px;

            }
</style>
</head>


<body bgcolor=lightblue>
<form action="afterdelete.jsp">
<div class="middle1">
        <br>
        
    <h2>Delete Account </h2>
    <center>
	    <table border="0" class="center">
       
    



    	<tr>
    <th>Account Number: </th>
    <td><input type="text" name="Accnumber"> </td>
    </tr>


    	<tr>
    <th>IFSC Code: </th>
    <td><input type="text" name="ifsc"> </td>
    </tr>



	

     </center>
</table>
<br>

<button class="button1"> Delete</button>
   </div>
</form>



</body>
</html>