<%@page import="..classes.bean.LoginDao"%>  
<jsp:useBean id="obj" class="classes.bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="welcome.html"></jsp:include>  
<%  
}  
%>  