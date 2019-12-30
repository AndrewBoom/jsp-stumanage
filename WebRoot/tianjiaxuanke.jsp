<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY bgcolor=pink ><FONT size=2>
<FORM action="newXuanke.jsp" method=post>
添加选课信息:
<table border=1>


<tr><td> 学号：</td><td><Input type="text" name="number"></td></tr>
<tr><td>课程号：</td><td><Input type="text" name="cno"></td></tr>
<tr><td>课程名：</td><td><Input type="text" name="cname"></td></tr>
</table>
<BR><Input type="submit" name="b" value="提交">
<BR>sc表添加新记录前的记录是：
 <inquire:QueryTag   dataBaseName="studentall"
                     tableName="sc" 
                     user="root" password="root"/> 
<BR> <%=queryResult %> <%-- queryResult是QueryTag文件返回的对象--%>

</Font></BODY></HTML> 
