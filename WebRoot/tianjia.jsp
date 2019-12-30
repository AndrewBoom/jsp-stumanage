<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY bgcolor=pink ><FONT size=2>
<FORM action="newDatabase.jsp" method=post>
添加新学生信息:
<table border=1>

<tr><td>姓名：</td><td><Input type="text" name="name"></td></tr>
<tr><td> 学号：</td><td><Input type="text" name="number"></td></tr>
<tr><td>年龄：</td><td><Input type="text" name="sage"></td></tr>
<tr><td>性别：</td><td><Input type="text" name="ssex"></td></tr>
</table>
<BR><Input type="submit" name="b" value="提交">
<BR>student表添加新记录前的记录是：
 <inquire:QueryTag   dataBaseName="studentall"
                     tableName="student" 
                     user="root" password="root"/> 
<BR> <%=queryResult %> <%-- queryResult是QueryTag文件返回的对象--%>

</Font></BODY></HTML> 
