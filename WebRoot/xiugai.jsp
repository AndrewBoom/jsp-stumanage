<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY ><FONT size=2>
<FORM action="newResult.jsp" method=post>
<table border=1>
<tr><td> ����Ҫ�޸ĵ�ѧ����ѧ�ţ�</td>
<td><Input type="text" name="number"></td></tr>
<tr><td>�����µ����ƣ�</td><td><Input type="text" name="name"></td></tr>
<tr><td>�����µ����䣺</td><td><Input type="text" name="sage"></td></tr>
<tr><td>�����µ��Ա�</td><td><Input type="text" name="ssex"></td></tr>
</table>
<BR><Input type="submit" name="b" value="�ύ����">
<BR>product�����ǰ�����ݼ�¼�ǣ�
<inquire:QueryTag  dataBaseName="studentall"
                   tableName="student" 
                   user="root" password="root"/> 
<BR> <%=queryResult %> 
</Font></BODY></HTML>
