<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Landing Page</title>
  </head>
<body bgcolor="silver" style="background-image: url('flight2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

<h2 style="text-align:center;">Welcome to airline system, please book your ticket</h2>
<br>
<center>
<form method="post" action="bookticket.jsp" id="form">
  <table border="0" width="30%" cellpadding="3">
    <tbody>
      <tr>
          <td for="fname">First name:</td>
          <td><input type="text" id="fname" name="fname" #fname></td>
      </tr>
      <tr>
          <td for="lname">Last name:</td>
          <td><input type="text" id="lname" name="lname" ></td>
      </tr>
      <tr>
        <td for="age">Age:</td>
        <td><input type="text" id="age" name="age" ></td>
      </tr>
      <tr>
        <td for="DateOfbirth">Date Of Birth:</td>
        <td><input type="text" id="DOB" name="DOB" ></td>
      </tr>
      <tr>
        <td for="PhoneNumber">Phone Number:</td>
        <td><input type="text" id="Phone" name="Phone" ></td>
      </tr>
      <tr>
        <td>
          <input type="checkbox" id="vip" name="type" value="vip" onClick="ckChange(this)" ><label>VIP </label>
          <input style="margin-left: 50px;"type="checkbox" id="nor" name="type" value="nor" onClick="ckChange(this)" ><label>Normal Class </label></td>
     </tr>
      <tr>
      <td for="From">From Location:</td>
      <td>  
      <select name="from" id="from" placeholder="From location" style="
      border-top-width: 2px;
      border-right-width: 2px;
      border-left-width: 2px;
      border-bottom-width: 2px;
      padding-top: 1px;
      padding-bottom: 1px;
      padding-left: 2px;
      padding-right: 2px;
      width: 183px;
  ">
        <option disabled selected value> --From Location--</option>
        <option value="Chennai">Chennai</option>
      </select>
      </td>
      </tr>
    <tr>
    <td for="To">To Location:</td>  
    <td>
      <select name="to" id="to" placeholder="To location" style="
      border-top-width: 2px;
      border-right-width: 2px;
      border-left-width: 2px;
      border-bottom-width: 2px;
      padding-top: 1px;
      padding-bottom: 1px;
      padding-left: 2px;
      padding-right: 2px;
      width: 183px;
  ">
        <option disabled selected value> --To location--</option>
        <option value="Kolkata">Kolkata</option>
        <option value="Delhi">Delhi</option>
        <option value="Mumbai">Mumbai</option>
        <option value="Banglore">Banglore</option>
      </select>
    
    </td>
      </tr>
      <tr>
        <td for="Price">Price:</td>
        <td><input type="text" id="price" name="price" disabled></td>
      </tr>
      <tr>
          <td><input type="submit" value="Submit" class="btn btn-primary" onClick="buttonClick(fname.value)"></td>
      </tr>
      <!-- <tr>
          <td colspan="2">New User <a href="register.jsp">Register Here</a></td>
      </tr> -->
  </tbody>

  </table>

</form> 
<br>
<p>Please fill you details for ticket reservation</p>

<p disabled value="<%=session.getAttribute("info")%>" style = "color:red;"></p>
</center>

<script>
  function buttonClick(fname){
   conso;e/log(fname);
  }
  function ckChange(ckType){
      var ckName = document.getElementsByName(ckType.name);
      var checked = document.getElementById(ckType.id);

      var select = document.getElementById(ckType.id).value;
      console.log(select);
      if(select =="vip"){
        document.getElementById("price").value = "13000";
      }else{
        document.getElementById("price").value = "8000";
      }
  
      if (checked.checked) {
        for(var i=0; i < ckName.length; i++){
  
            if(!ckName[i].checked){
                ckName[i].disabled = true;
            }else{
                ckName[i].disabled = false;
            }
        } 
      }
      else {
        for(var i=0; i < ckName.length; i++){
          ckName[i].disabled = false;
        } 
      }    
  }
  </script>

</body>
</html>
