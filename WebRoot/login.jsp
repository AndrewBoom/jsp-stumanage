<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY> 
<% session.setAttribute("customer","�˿�"); %>
<P>�û���¼���棺<BR>

   <FORM action="admin.jsp" method="get" name=form>
     �û�����<INPUT TYPE="text"   name="username"><br>
     ���룺    <input type="password" name="password">
     <INPUT TYPE="submit" value="Enter">
   </FORM>
  
</BODY></HTML>