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
            margin-left: 1175px;
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
<form action='aftersignin.jsp'>
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
  <h3> <a href="user.jsp" style="text-decoration: none;">User Login </a> |  <a href="about.jsp" style="text-decoration: none;">About </a> | <a href="admin.jsp" style="text-decoration: none;">Admin Login </a></h3>
</div>

<div class="sign">
<center>
 

</center>

<div class="middle1">
        <br>
        
    <h2>User SignIn </h2>
    <center>
    <table border="0" class="center">
       
    <tr>
    <th>Username: </th> 
    <td><input type="text" name="username"> </td>
    </tr>
  
    	
    <th>Password: </th>
    <td><input type="password" name="password"> </td>
    </tr>

     </center>
</table>


<button class="button1" username=link> Submit </button>
<p> Don't have an account? <a href="signup.jsp">Click here </a><p>
   </div>




</div>

</form>

</body>
</html>