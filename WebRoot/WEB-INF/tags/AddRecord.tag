<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="number" required="true" %>
<%@ attribute name="sage" required="true" %>
<%@ attribute name="ssex" required="true" %>
<% // float p=Float.parseFloat(price);
	int age=Integer.parseInt(sage);
    String condition=
    "INSERT INTO student VALUES"+
                "("+"'"+name+"','"+number+"','"+age+"','"+ssex+"')";
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
           sql=con.createStatement();
           sql.executeUpdate(condition);
           con.close();
    }
    catch(Exception e){
          out.print(""+e);
    }
%>
