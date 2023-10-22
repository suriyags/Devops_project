<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Ticket details</title>
        <style>
            #roundcorner{
                background: url(sky.jpg);
                padding: 20px;
                width: 40%;
            }
        </style>
    </head>
    <body style="background-image: url('flight2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
        <center>
        
        <h2> Ticket Booking Details ..</h2>
        <br>
        <form method="post" action="bookticket.jsp" id="form">
            <table id="roundcorner">
                <thead></thead>
                <tbody>
                    <tr>
                        <td><b>First Name: </b></td>
                        <td><input disabled value="<%=session.getAttribute("fname")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>Last Name: </b></td>
                        <td><input disabled value="<%=session.getAttribute("lname")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>Age: </b></td>
                        <td><input disabled value="<%=session.getAttribute("age")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>DOB: </b></td>
                        <td><input disabled value="<%=session.getAttribute("DOB")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>Phone Number: </b></td>
                        <td><input disabled value="<%=session.getAttribute("phone")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>Ticket Class: </b></td>
                        <td><input disabled value="<%=session.getAttribute("type")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>From Location: </b></td>
                        <td><input disabled value="<%=session.getAttribute("from")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>To Location: </b></td>
                        <td><input disabled value="<%=session.getAttribute("toloc")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>Price: </b></td>
                        <td><input disabled value="<%=session.getAttribute("price")%>"/></td>
                    </tr>
                    <tr>
                        <td><b>Ticket ID: </b></td>
                        <td><input disabled value="<%=session.getAttribute("ticket")%>"/></td>
                    </tr>
                    
                </tbody>
            </table>
        </form>
    </center>

    </body>


</html>