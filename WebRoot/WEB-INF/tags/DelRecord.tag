<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%  String condition =
          "DELETE FROM student WHERE sno = '"+number+"'";
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
   try{  String uri=
        "jdbc:mysql://127.0.0.1/studentall?"+
         "user=root&password=root&characterEncoding=gb2312";
         con=DriverManager.getConnection(uri);
         con=DriverManager.getConnection(uri,"root","root");
         sql=con.createStatement();
         sql.executeUpdate(condition);
         con.close();
    }
    catch(Exception e){
        out.print(""+e);
    }
%>
