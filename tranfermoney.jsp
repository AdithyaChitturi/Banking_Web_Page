<head>
    
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
                margin-left: 250px;

            }
    </style>
</head>

<body bgcolor="lightblue">
<form action='moneyverification.jsp'>


<div class="middle1">
        <br>
        <center>
    <h2>Money Transfer </h2>
    <center>
    <table border="0" class="center" style="width:100%">
       
    <tr>
    <th>Enter Account Holder Name </th> 
    <td><input type="text" name="accountname"> </td>
    </tr>

	<tr>
    <th>Enter Account Number </th> 
    <td><input type="text" name="accountnumber"> </td>
    </tr>
  	<tr>
    <th>Enter IFSC Code </th> 
    <td><input type="text" name="ifsccode"> </td>
    </tr>
    	
   
	<tr>
    <th>Enter Transfer Amount </th> 
    <td><input type="text" name="money"> </td>
    </tr>
     </center>
</table>
<br>

<button class="button1"> Transfer </button>
   </div>



</div>
</form>

</body>