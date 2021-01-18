<!DOCTYPE html>
<html lang="en">
<head>
	<title>Rising Art Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<!-- <link rel="icon" type="image/png" href="images/icons/favicon.ico"/> -->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="css/dropdown.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
					<br><h4 style="text-align: left;float:left;"><a href="../index_home.jsp"><font color="white"> Home</font></a></h4>
					<h4 style="text-align: left;float:Right;"><a href="../Registration_Template/Registration.html"><font color="white"> Register</font></a></h4>
					
				</span>
				
				
				<form class="login100-form validate-form p-b-33 p-t-5" action="../Controller/LoginController.jsp" method="post">
					<!-- <div class="dropdown">
  						<button class="dropbtn">&emsp;&emsp;USER</button>
  						<div class="dropdown-content">
  							<a href="admin_login.html">Admin</a>
    						<a href="artist_login.html">Artist</a>
  						</div>
					</div> -->
					<%
						session.invalidate();
					%>
					
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<center>
        		<table>
        				<a style="align-content: bottom; color: white;">
                      	  <tr>
                              <td>Your Logout Successfully</td>
                          </tr>
                          <br><br>
                          <tr>
                          	  <td><center>click <a href="../Login_Template/artist_login.html"><u><b>here</b></u></a> to login</center></td> 
                          </tr>
                    
                      </table>
                      </center>
					</div>

					

				</form>
			</div>
		</div>
	</div>
	

	<!-- <div id="dropDownSelect1"></div> -->
	


</body>
</html>
				<%-- <%
						
            			//String Email = (String) session.getAttribute("email");
            			//String Email1 = (String) session.getAttribute("aid");
            			//String Aid=request.getParameter("id");
            			String Aid = (String) session.getAttribute("id");
            			session.invalidate();
                          
        		%>
        		
        		<center>
        		<table>
        				<a style="align-content: bottom; color: white;">
                      	  <tr>
                              <td>Your Logout Successfully</td>
                          </tr>
                          <br><br><tr>
                              <td><br><br>&emsp;&emsp;&emsp;&emsp;&nbsp;AR Id is : </font><%=Aid%></td>
                          </tr>
                          <tr>
                          	  <td><center>click <a href="../Login_Template/artist_login.html"><u><b>here</b></u></a> to login</center></td> 
                          </tr>
                    
                      </table>
                      </center>
                </a>
                <br><br><br><br><br><br><br><br><br><br>
			</div>
		</div>
		<a style="align-content: bottom; color: white;"><br>
		<div class="copyright">
			<p>Copyright &copy; 2020 Rising Art</p> 
		</div>
		</a>
	</div> 
	<%
    } else {
    %>
        <script>
			alert("Session is over");
            window.location = "artist_login.html";
        </script>
        
    <%
        }
    %> --%>