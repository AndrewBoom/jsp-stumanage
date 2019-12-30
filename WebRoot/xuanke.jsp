<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY><Font size=2>
<% 
	String username = request.getSession().getAttribute("name").toString();
   
   if(username==null)
      username ="";
   byte [] bb =username.getBytes("iso-8859-1");
   username=new String(bb);
%>
 <inquire:NumberConditon number="<%=username%>" /> 
 根据学号<%=username%>查询到的记录:
<BR><%=queryResultByNumber%>  <%--queryResultByNumber是Tag文件返回的对象--%>
</Font></BODY></HTML>
