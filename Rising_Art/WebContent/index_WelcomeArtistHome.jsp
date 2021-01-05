<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rising Art</title>
</head>
<body>
		
		<% 
				String id =(String) session.getAttribute("id");
                String name=(String) session.getAttribute("name");
                String date=(String) session.getAttribute("date");
                String gender=(String) session.getAttribute("gender");
                String email=(String) session.getAttribute("email");
                String mobile=(String) session.getAttribute("mobile");
                String add=(String) session.getAttribute("add");
                String city=(String) session.getAttribute("city");
                String pincode=(String) session.getAttribute("pincode");
				
                //out.println("<center>");
                out.println("<br>"+"Login Successfullly"+"<br>");
                out.println("<br>");
                out.println("Name ="+name+"<br>");
                out.println("Date of Birth ="+date+"<br>");
                out.println("Email ="+email+"<br>");
                out.println("Mobile ="+mobile+"<br>");
                out.println("Address ="+add+"<br>");
                out.println("City ="+city+"<br>");
                out.println("Pincode ="+pincode+"<br>");
         %>
         <br><a style="text-align: right;" href="Login_Template/artist_login.html">Logout</a>
      
</body>
</html>