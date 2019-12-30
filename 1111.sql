studentsc
STRING username = request.getSession().getAttribute("name").toString();
<%@ tag pageEncoding="GB2312" %>
<%@ tag IMPORT="java.sql.*" %>

<%@ attribute NAME="number" required="true" %>
<%@ attribute NAME="cno" required="true" %>
<%@ attribute NAME="cname" required="true" %>
<% // FLOAT p=Float.parseFloat(price);
	//INT age=Integer.parseInt(sage);
    STRING CONDITION=
    "INSERT INTO sc VALUES"+
                "("+"'"+number+"','"+cno+"','"+cname+"')";
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    CONNECTION con;
    Statement SQL; 
    ResultSet rs;
    try{  STRING uri=
          "jdbc:mysql://127.0.0.1/studentall?"+
          "user=root&password=root&characterEncoding=gb2312";
           con=DriverManager.getConnection(uri);
           SQL=con.createStatement();
           sql.executeUpdate(CONDITION);
           con.close();
    }
    catch(Exception e){
          out.print(""+e);
    }
%>
