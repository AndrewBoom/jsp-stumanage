<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY bgcolor=pink ><FONT size=2>
<FORM action="newDatabase.jsp" method=post>
�����ѧ����Ϣ:
<table border=1>

<tr><td>������</td><td><Input type="text" name="name"></td></tr>
<tr><td> ѧ�ţ�</td><td><Input type="text" name="number"></td></tr>
<tr><td>���䣺</td><td><Input type="text" name="sage"></td></tr>
<tr><td>�Ա�</td><td><Input type="text" name="ssex"></td></tr>
</table>
<BR><Input type="submit" name="b" value="�ύ">
<BR>student������¼�¼ǰ�ļ�¼�ǣ�
 <inquire:QueryTag   dataBaseName="studentall"
                     tableName="student" 
                     user="root" password="root"/> 
<BR> <%=queryResult %> <%-- queryResult��QueryTag�ļ����صĶ���--%>

</Font></BODY></HTML> 
