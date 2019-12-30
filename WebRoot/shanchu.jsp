<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY bgcolor=pink ><FONT size=2>
<FORM action="delete.jsp" method=post>
删除记录：<BR>输入被删除的学生的学号：
<Input type="text" name="number" size=8>
<BR><Input type="submit" name="b" value="提交">
<BR>product表删除记录前的记录是：
 <inquire:QueryTag dataBaseName="studentall"
                   tableName="student" 
                   user="root" password="root"/> 
<BR> <%=queryResult %> <%-- queryResult是QueryTag.tag返回的对象--%>
</Font></BODY></HTML>
