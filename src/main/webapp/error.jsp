<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Landing Page</title>
    </head>
    <body bgcolor="silver" style="background-image: url('flight2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
        <center>
            <p style = "color:red;">"<%=session.getAttribute("info")%>"</p>
        </center>
    </body>
</html>