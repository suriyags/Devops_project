<%@ page import="java.sql.*"%>
<%
try{
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String age = request.getParameter("age");
    String DOB = request.getParameter("DOB");
    String phone = request.getParameter("Phone");
    String type = request.getParameter("type");
    String from = request.getParameter("from");
    String toloc = request.getParameter("to");
    String ticket = "TIC";
    String price = "";
    if(type == "vip"){
        price = "12000";
    }else{
        price = "8000";
    }
    int ticval = (int) (Math.random() * 100000000);
    ticket = ticket + ticval;
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jwt","jwt","Password@123");
    PreparedStatement st = con.prepareStatement("select count(*) from ticket_details where phone = ?");
    st.setString(1,phone);
    ResultSet i = st.executeQuery();
    int ticket_user = 0;
    while(i.next()){
        ticket_user = i.getInt(1);
    }
    if(ticket_user > 0){
        PreparedStatement st1 = con.prepareStatement("select * from ticket_details where phone = ?");
        st1.setString(1,phone);
        ResultSet rs = st1.executeQuery();
        while(rs.next()){
            String fname1 = rs.getString("fname");
            String lname1 = rs.getString("lname");
            String age1 = rs.getString("age");
            String DOB1 = rs.getString("dob");
            String phone1 = rs.getString("phone");
            String type1 = rs.getString("type");
            String from1 = rs.getString("fromloc");
            String toloc1 = rs.getString("toloc");
            String ticket1 = rs.getString("ticket");
            String price1 = rs.getString("price");
            session.setAttribute("fname",fname1);
            session.setAttribute("lname",lname1);
            session.setAttribute("age",age1);
            session.setAttribute("DOB",DOB1);
            session.setAttribute("phone",phone1);
            session.setAttribute("type",type1);
            session.setAttribute("from",from1);
            session.setAttribute("toloc",toloc1);
            session.setAttribute("price",price1);
            session.setAttribute("ticket", ticket1);
            response.sendRedirect("ticket-generate.jsp");
            return;
        }
        
    }else{
        PreparedStatement st2 = con.prepareStatement("insert into ticket_details(fname,lname,age,dob,phone,type,fromloc,toloc,price,ticket) values(?,?,?,?,?,?,?,?,?,?)");
        st2.setString(1, fname);
        st2.setString(2, lname);
        st2.setString(3, age);
        st2.setString(4, DOB);
        st2.setString(5, phone);
        st2.setString(6, type);
        st2.setString(7, from);
        st2.setString(8, toloc);
        st2.setString(9, price);
        st2.setString(10, ticket);
        int ticket_entered = st2.executeUpdate();
        if(ticket_entered > 0){

            session.setAttribute("fname",fname);
            session.setAttribute("lname",lname);
            session.setAttribute("age",age);
            session.setAttribute("DOB",DOB);
            session.setAttribute("phone",phone);
            session.setAttribute("type",type);
            session.setAttribute("from",from);
            session.setAttribute("toloc",toloc);
            session.setAttribute("price",price);
            session.setAttribute("ticket", ticket);
            response.sendRedirect("ticket-generate.jsp");
            return;
        
            
        }else{
            session.setAttribute("info","Unable to generate ticket. please make sure to enter all fields !!");
            response.sendRedirect("error.jsp");
            return;
            
        }

    }
}catch(Exception e){
    session.setAttribute("info","Unable to generate ticket. please contact SB airlines !!");
    response.sendRedirect("error.jsp");
    return ;
}



%>