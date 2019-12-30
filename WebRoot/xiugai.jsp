<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY ><FONT size=2>
<FORM action="newResult.jsp" method=post>
<table border=1>
<tr><td> 输入要修改的学生的学号：</td>
<td><Input type="text" name="number"></td></tr>
<tr><td>输入新的名称：</td><td><Input type="text" name="name"></td></tr>
<tr><td>输入新的年龄：</td><td><Input type="text" name="sage"></td></tr>
<tr><td>输入新的性别：</td><td><Input type="text" name="ssex"></td></tr>
</table>
<BR><Input type="submit" name="b" value="提交更新">
<BR>product表更新前的数据记录是：
<inquire:QueryTag  dataBaseName="studentall"
                   tableName="student" 
                   user="root" password="root"/> 
<BR> <%=queryResult %> 
</Font></BODY></HTML>
