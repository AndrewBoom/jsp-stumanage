<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT Size=2>
   <% String s=request.getParameter("username");//s�����������
      session.setAttribute("name",s);
      String p=request.getParameter("password");//p�����������
      session.setAttribute("pass",p);
      //name��Ӧ��s password��Ӧp
      if(s.equals("admin")&&p.equals("123"))
      {
   %>
  ��ӭ����Ա����ѧ����Ϣ����ϵͳ��<br>
  <a href="chakan.jsp">�鿴ѧ����Ϣ</a><br><a href="tianjia.jsp">���ѧ����Ϣ</a><br><a href="shanchu.jsp">ɾ��ѧ����Ϣ</a><br><a href="xiugai.jsp">�޸�ѧ����Ϣ</a><br>
  <a href="tianjiaxuanke.jsp">���ѧ��ѡ����Ϣ</a><br>
  
    </FONT></BODY></HTML>
  <%
  }

   %>
 <%   if(s.equals(p)){
 
 //   String uname = request.getParameter("userName");  
   // request.getSession().setAttribute("username",uname);

%>  
  
 

 ��ӭ������ѧ������ϵͳ��<br>
<a href="xuanke.jsp">�鿴���ѡ����Ϣ</a>
<%
  }
  else{
  
   %>
  <a href="login.jsp">���ص�½����</a><br>
  <% }
  %>