<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML><BODY bgcolor=cyan>
 <% Connection con;//����
    Statement sql;  //sql
    ResultSet rs;   //���
    try{  Class.forName("com.mysql.jdbc.Driver");
    //��������
    }
    catch(Exception e){}
    try { String uri= "jdbc:mysql://127.0.0.1/studentall";
          String user="root";
          String password="root";
          con=DriverManager.getConnection(uri,user,password);
          //Ҳ����д��con=DriverManager.getConnection(uri+"?user=root&password=");
          sql=con.createStatement();//����sql����
          rs=sql.executeQuery("SELECT * FROM student ");
          out.print("<table border=2>");
          out.print("<tr>");
            out.print("<th width=100>"+"sname");
            out.print("<th width=100>"+"sno");
            out.print("<th width=50>"+"sage");
            out.print("<th width=50>"+"ssex");
          out.print("</TR>");
          
          while(rs.next()){
            out.print("<tr>");
              out.print("<td >"+rs.getString("sname")+"</td>"); 
              out.print("<td >"+rs.getString("sno")+"</td>");
                 out.print("<td >"+rs.getInt("sage")+"</td>");
              out.print("<td >"+rs.getString("ssex")+"</td>"); 
           
            out.print("</tr>") ; 
          }
          out.print("</table>");
          con.close();//�ر�����
    }
    catch(SQLException e){ 
          out.print(e);
    }
 %>
</BODY></HTML>
