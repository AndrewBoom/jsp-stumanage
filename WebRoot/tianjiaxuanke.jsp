<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY bgcolor=pink ><FONT size=2>
<FORM action="newXuanke.jsp" method=post>
���ѡ����Ϣ:
<table border=1>


<tr><td> ѧ�ţ�</td><td><Input type="text" name="number"></td></tr>
<tr><td>�γ̺ţ�</td><td><Input type="text" name="cno"></td></tr>
<tr><td>�γ�����</td><td><Input type="text" name="cname"></td></tr>
</table>
<BR><Input type="submit" name="b" value="�ύ">
<BR>sc������¼�¼ǰ�ļ�¼�ǣ�
 <inquire:QueryTag   dataBaseName="studentall"
                     tableName="sc" 
                     user="root" password="root"/> 
<BR> <%=queryResult %> <%-- queryResult��QueryTag�ļ����صĶ���--%>

</Font></BODY></HTML> 
