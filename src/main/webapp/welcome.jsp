<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
String userName = request.getParameter("userName");   
String password = request.getParameter("password");
int k = 0;
System.out.println(userName);
System.out.println(password);
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jwt","jwt","Password@123");
PreparedStatement st = con.prepareStatement("select count(*) from USER where username = ? and password = ?");
st.setString(1,userName);
st.setString(2,password);
ResultSet i = st.executeQuery();
while(i.next()){
    k = i.getInt(1);
}

if (k > 0){
    response.sendRedirect("landingpage.jsp");
}else{
    response.sendRedirect("index.jsp");
}
%>
