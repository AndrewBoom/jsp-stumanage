<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY> 
<% session.setAttribute("customer","顾客"); %>
<P>用户登录界面：<BR>

   <FORM action="admin.jsp" method="get" name=form>
     用户名：<INPUT TYPE="text"   name="username"><br>
     密码：    <input type="password" name="password">
     <INPUT TYPE="submit" value="Enter">
   </FORM>
  
</BODY></HTML>