<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="dataBaseName" required="true" %>
<%@ attribute name="tableName" required="true" %> 
<%@ attribute name="user" required="true" %>  
<%@ attribute name="password" required="false" %>  
<%@ variable name-given="biao" scope="AT_END" %>
<%@ variable name-given="queryResult" scope="AT_END" %>
<%  StringBuffer result;     
    result=new StringBuffer();
    try{  Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{  result.append("<table border=1>"); 
          String uri="jdbc:mysql://127.0.0.1/"+dataBaseName;
          con=DriverManager.getConnection(uri,user,password);
          DatabaseMetaData metadata=con.getMetaData();
          ResultSet rs1=metadata.getColumns(null,null,tableName,null);
          int 字段个数=0;
          result.append("<tr>");
          while(rs1.next()){
             字段个数++;
             String clumnName=rs1.getString(4);
             result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement();
          rs=sql.executeQuery("SELECT * FROM "+tableName);
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
          result.append("请输入正确的用户名和密码");
}
//返回对象queryResult： 
    jspContext.setAttribute("queryResult",new String(result)); 
    jspContext.setAttribute("biao",tableName);          //返回biao对象
%> 
 