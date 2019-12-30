<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%@ variable name-given="queryResultByNumber" scope="AT_END" %>
<%  StringBuffer result;
    result=new StringBuffer();
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    int n=0;
    try{  result.append("<table border=1>"); 
          String uri=
          "jdbc:mysql://127.0.0.1/studentall?"+
          "user=root&password=root&characterEncoding=gb2312";
          con=DriverManager.getConnection(uri);
          DatabaseMetaData metadata=con.getMetaData();
          ResultSet rs1=metadata.getColumns(null,null,"sc",null);
          int 字段个数=0;
          result.append("<tr>");
          while(rs1.next()){
             字段个数++;
             String clumnName=rs1.getString(4);
             result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement();
          String condition=
          "SELECT * FROM sc Where sno ='"+number+"'";
          rs=sql.executeQuery(condition);
          while(rs.next()){
             result.append("<tr>");
             for(int k=1;k<=字段个数;k++) 
               result.append("<td>"+rs.getString(k)+"</td>");
               result.append("</tr>");
          }
          result.append("</table>");
          con.close();
    }
    catch(SQLException e){
          result.append(e);
    }
    jspContext.setAttribute("queryResultByNumber",new String(result)); 
%> 
