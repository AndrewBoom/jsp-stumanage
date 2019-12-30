<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT Size=2>
   <% String s=request.getParameter("username");//s是输入的姓名
      session.setAttribute("name",s);
      String p=request.getParameter("password");//p是输入的密码
      session.setAttribute("pass",p);
      //name对应的s password对应p
      if(s.equals("admin")&&p.equals("123"))
      {
   %>
  欢迎管理员来到学生信息管理系统。<br>
  <a href="chakan.jsp">查看学生信息</a><br><a href="tianjia.jsp">添加学生信息</a><br><a href="shanchu.jsp">删除学生信息</a><br><a href="xiugai.jsp">修改学生信息</a><br>
  <a href="tianjiaxuanke.jsp">添加学生选课信息</a><br>
  
    </FONT></BODY></HTML>
  <%
  }

   %>
 <%   if(s.equals(p)){
 
 //   String uname = request.getParameter("userName");  
   // request.getSession().setAttribute("username",uname);

%>  
  
 

 欢迎你来到学生管理系统。<br>
<a href="xuanke.jsp">查看你的选课信息</a>
<%
  }
  else{
  
   %>
  <a href="login.jsp">返回登陆界面</a><br>
  <% }
  %>