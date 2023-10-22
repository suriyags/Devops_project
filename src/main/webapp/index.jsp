<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Example</title>
    </head>
    <body bgcolor="#41B8FO" style="background-image: url('bankk.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
        <h2 style="text-align:center;">WELCOME TO BANKING SYSTEM PLEASE LOGIN"</h2>
       <br>
        <form method="post" action="welcome.jsp" id="form">
            <center>
            <table border="0" width="30%" cellpadding="3">
                <thead>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="userName" id = "uname" value="" #user /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" id = "password" value="" #password /></td>
                  
                    </tr>
                    <tr>
                        <td><input type="submit" name="login" value="Login" (click) = "login(user.value) " class="btn btn-primary" /></td>
                        <td><input type="reset" value="Reset" class="btn btn-primary" /></td>
                    </tr>
                    <tr>
                        
                      <td colspan="2">new User <a href="register.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        </body>
</html>