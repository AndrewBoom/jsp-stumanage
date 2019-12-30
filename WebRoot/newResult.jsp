<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="renew"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY bgcolor=pink><Font size=2>
<% String nu=request.getParameter("number");
   String na=request.getParameter("name");
   String mT=request.getParameter("sage");
   String pr=request.getParameter("ssex");
   byte bb[]=na.getBytes("iso-8859-1");
   na=new String(bb);
%> 
 <renew:NewRecord     name="<%=na%>" number="<%=nu%>"
                  sage="<%=mT%>"  ssex="<%=pr%>"/>   
 <BR>student表更新后的数据记录是：
 <inquire:QueryTag  dataBaseName="studentall"
                    tableName="student" 
                    user="root" password="root"/> 
<BR> <%=queryResult %>
</Font></BODY></HTML> 
