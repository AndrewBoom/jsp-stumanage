<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY ><Font size=2>
<% String num=request.getParameter("number");
   if(num==null)
       num ="";
   byte [] bb=num.getBytes("iso-8859-1");
   num = new String(bb);
%>
 <inquire:DelRecord number="<%=num%>" /> 
 <BR>student表删除记录后的记录是：
 <inquire:QueryTag  dataBaseName="studentall"
                    tableName="student" 
                    user="root" password="root"/> 
<BR> <%=queryResult %> <%--queryResult是QueryTag.tag返回的对象--%>
</Font></BODY></HTML>
