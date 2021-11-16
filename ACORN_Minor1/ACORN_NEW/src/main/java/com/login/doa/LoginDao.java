package com.login.doa;
import java.sql.*;

public class LoginDao
{
	String sql="select * from login where username=? and password=?";
	String url="jdbc:mysql://localhost/ACORN";
	String username="root";
	String password="P@ssword";
	public boolean check(String uname, String pass)
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, uname);
		st.setString(2,pass);
		ResultSet rs=st.executeQuery();
		if(rs.next())
		{
			System.out.println(rs);
			return true;
		}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

}
