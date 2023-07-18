<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
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
<body bgcolor=lightblue>
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
<h3>

<div class="link">
Welcome Administrator,
<%


 Date date = new Date();
  out.print( "<h5>" +date.toString()+"<h5>");  
  %>
</div>
</html>