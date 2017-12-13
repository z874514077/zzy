package javabase;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.sql.Connection;

public class DBconnection  
{  
    private String dbDriver="com.mysql.jdbc.Driver";   
    private String dbUrl="jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_travelapp?useUnicode=true&characterEncoding=utf-8&useSSL=false";
    private String dbUser="4o5k0w0j4z";  
    private String dbPass="mmi44hj2i2ji2hxlyxx5y5m51055zkhm25xm32kk";  
    public Connection getConn()  
    {  
        Connection conn=null;  
        try  
        {  
            Class.forName(dbDriver).newInstance();  
        }  
        catch (Exception e)  
        {  
            e.printStackTrace();  
        }  
        try  
        {  
            conn = DriverManager.getConnection(dbUrl,dbUser,dbPass);  
        }  
        catch (SQLException e)  
        {  
            e.printStackTrace();  
        }  
        return conn;  
    }
//插入
public int insert(String sql)  
{  
    int i=0;  
    Connection cnn=getConn();  

    try{  
        PreparedStatement preStmt =cnn.prepareStatement(sql);  
        i=preStmt.executeUpdate();  
    }  
    catch (SQLException e)  
    {  
        e.printStackTrace();  
    }  
    return i;
}  
//更新
public int update(String sql)
{  
    int i=0;  
    Connection cnn=getConn();  
    try{  
        PreparedStatement preStmt =cnn.prepareStatement(sql);  
        i=preStmt.executeUpdate();  
    }  
    catch (SQLException e)  
    {  
        e.printStackTrace();  
    }  
    return i; 
}  
//查找
public List<String> select(String sql)
{  
    int i;
    Connection cnn = getConn();
    List<String> list = new LinkedList<String>();
    try  
    {  
        Statement stmt = cnn.createStatement();  
        ResultSet rs = stmt.executeQuery(sql);  
        while(rs.next())  
        {  
            for(i = 1;i<=rs.getMetaData().getColumnCount();i++){
            list.add(rs.getString(i));}
        }  
    }  
    catch (Exception e)  
    {  
        e.printStackTrace();  
    }  
    return list;  
}  
//删除
public int delete(String sql)  
{  
    int i=0;  
    Connection conn = getConn();
    try  
    {  
        Statement stmt = conn.createStatement();  
        i = stmt.executeUpdate(sql);  
    }  
    catch (SQLException e)  
    {  
        e.printStackTrace();  
    }  
    return i;  
}  
}

