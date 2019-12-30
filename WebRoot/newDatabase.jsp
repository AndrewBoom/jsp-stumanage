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
    String na=handleStr(request.getParameter("name"));
	String nu=handleStr(request.getParameter("number"));
    String mT=handleStr(request.getParameter("sage"));
    String pr=handleStr(request.getParameter("ssex"));
%>
 <inquire:AddRecord name="<%=na%>"    number="<%=nu%>" 
                    sage="<%=mT%>"  ssex="<%=pr%>"/> 
 <BR>student表添加新记录后的记录是：
 <inquire:QueryTag  dataBaseName="studentall"
                    tableName="student"
                    user="root"  password="root"/> 
 <BR> <%=queryResult %> <%-- queryResult是QueryTag返回的对象--%> 
</Font></BODY></HTML>
