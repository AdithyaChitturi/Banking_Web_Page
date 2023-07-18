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
            margin-left: 50px;
        }

        .sign
        {
            margin-top: 50px;
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
<br>
<div class="link">
<%

String name=(String)session.getAttribute("username");  
out.print(" <h2>Welcome "+name);  
  %>

  <br>
<br>
<br>
    <h3> <a href="viewaccount.jsp" style="text-decoration: none;  target=f3">View Account  </a> </h3>
  <h3>  <a href="addbalance.jsp" style="text-decoration: none;"  target=f3> Add Balance </a> </h3>
 <h3>   <a href="tranfermoney.jsp" style="text-decoration: none;  target=f3">Tranfer Money</a> </h3> 
    <h3><a href="accsetting.jsp" style="text-decoration: none;  target=f3">Account Settings</a> </h3>
  </div>


</body>