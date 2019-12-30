<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%> 
<HTML><BODY bgcolor=yellow><Font size=2>
<%! 
    String handleStr(String s) {
        try {
           byte bb[]=s.getBytes("iso-8859-1");
           return new String(bb); 
        }
        catch(Exception exp){} 
        return s;
    }
%>
<% 
    
	String nu=handleStr(request.getParameter("number"));
    String cn=handleStr(request.getParameter("cno"));
    String cna=handleStr(request.getParameter("cname"));
%>
 <inquire:Addxuanke     number="<%=nu%>"  cno="<%=cn%>"  cname="<%=cna%>"/>  
 <BR>student表添加新记录后的记录是：
 <inquire:QueryTag  dataBaseName="studentall"
                    tableName="sc"
                    user="root"  password="root"/> 
 <BR> <%=queryResult %> <%-- queryResult是QueryTag返回的对象--%> 
</Font></BODY></HTML>
