<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><BODY bgcolor=pink ><FONT size=2>
<FORM action="delete.jsp" method=post>
ɾ����¼��<BR>���뱻ɾ����ѧ����ѧ�ţ�
<Input type="text" name="number" size=8>
<BR><Input type="submit" name="b" value="�ύ">
<BR>product��ɾ����¼ǰ�ļ�¼�ǣ�
 <inquire:QueryTag dataBaseName="studentall"
                   tableName="student" 
                   user="root" password="root"/> 
<BR> <%=queryResult %> <%-- queryResult��QueryTag.tag���صĶ���--%>
</Font></BODY></HTML>
