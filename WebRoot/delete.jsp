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
 <BR>student��ɾ����¼��ļ�¼�ǣ�
 <inquire:QueryTag  dataBaseName="studentall"
                    tableName="student" 
                    user="root" password="root"/> 
<BR> <%=queryResult %> <%--queryResult��QueryTag.tag���صĶ���--%>
</Font></BODY></HTML>
