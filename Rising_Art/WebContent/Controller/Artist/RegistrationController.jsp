
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rising Art</title>
    </head>
    <body>
          <%
            int Id=0;
          	//String id =request.getParameter("t1");
            String name = request.getParameter("t1");
            String date = request.getParameter("t2");
            String gender = request.getParameter("t3");
            String password = request.getParameter("t4");
            String email = request.getParameter("t5");
            String mobile = request.getParameter("t6");
            String address = request.getParameter("t7");
            String city = request.getParameter("t8");
            String pincode = request.getParameter("t9");
            
            

            Connection con;
            Statement st;
            ResultSet rs;
             
//            int Id =Integer.parseInt(request.getParameter("id"));
             int status=0;

            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery?user=root & password=");
                st = con.createStatement();
                rs = st.executeQuery("select * from artist");

               	status = st.executeUpdate("INSERT INTO artist (aname,a_date,gender,password,email,phone,address,city,zipcode) VALUES ('" + name + "','" + date + "','" + gender + "','" +  password + "','" + email + "','" + mobile + "','" + address + "','" + city + "'," + pincode + ")");

//           		status=1;    
                /*  while (rs.next()) {
                    if (rs.getInt("customer_id")==Id) {
                        status=1;
                        break;
                    }}
                */
                if (status == 1) 
                {
                   rs=st.executeQuery("select * from artist");
                   while(rs.next())
                   {
                       if(rs.getString("email").equals(email) && rs.getString("password").equals(password) && rs.getString("a_date").equals(date) && rs.getString("phone").equals(mobile))
                       {
                            
                           Id=rs.getInt("artist_id");
                           //out.println("Your Artist Id is:"+Id);
                       }
                   }  
                     
//                    s=Integer.parseInt(request.getParameter("t4"));
//                    i=request.getParameter("t1");
//                    j=request.getParameter("t2");
//                    r=Integer.parseInt(request.getParameter("t3"));
//                    
//                    out.println("hi your name is"+" "+i);
//                    out.println("<br>");
//                    out.println("your Email is"+" "+j);
//                    out.println("<br>");
//                    out.println("your Salary is"+" "+r);
//                    out.println("<br>");
                    
                      
                    //  out.println("Data Inserted Successfully");
//                    status=rs.executeUpdate("SELECT sid from players where sid = (select max(sid) from players)")
//                if (status == 1) {
              
         %>   
              
     		<script>
            	window.location = "../../Registration_Template/index_welcomeArtistReg.jsp?id=<%=Id%>";
        	</script> 
         
        <%
                }  
				else 
                {
                    out.println("Data Insertion Failed");
                }
			} 
            catch (Exception e) 
            {
				out.println(e);
            }
       
//            session.setAttribute("sid", Id);
//                      out.println("Regestered Successfully");
//         status=rs.executeQuery("SELECT sid from players where sid = (select max(sid) from players)");
        %>
    </body>
</html>
