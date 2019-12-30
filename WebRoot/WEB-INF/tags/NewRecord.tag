<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="sage" required="true" %>
<%@ attribute name="ssex" required="true" %>
<%  int age=Integer.parseInt(sage);
    String condition1="UPDATE student SET sname= '"+name+
                   "' WHERE sno="+"'"+number+"'" ,
           condition2="UPDATE student SET sage= '"+sage+
                   "' WHERE sno="+"'"+number+"'",
           condition3="UPDATE student SET ssex= '"+ssex+
                      "' WHERE sno="+"'"+number+"'" ;
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
   try{  String uri=
        "jdbc:mysql://127.0.0.1/studentall?"+
         "user=root&password=root&characterEncoding=gbk";
         con=DriverManager.getConnection(uri);
         sql=con.createStatement();
         sql.executeUpdate(condition1);
         sql.executeUpdate(condition2);
         sql.executeUpdate(condition3);
         con.close();
   }
   catch(Exception e){
         out.print(""+e);
   }
%>
