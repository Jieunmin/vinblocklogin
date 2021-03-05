package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class loginDAO {
	String url ="jdbc:mysql://13.124.142.215:3306/USER";
	String id ="jieun";
	String pass ="1111";
	String driver ="com.mysql.jdbc.Driver";
	
	public int login(String uid, String upass) {
		System.out.println("ID:"+ uid);
		System.out.println("PASSWORD:"+ upass);
		
		String sql = "SELECT passwd FROM USER WHERE ID = ?";		
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,id,pass);
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, uid);
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(upass)) {
					return 1; //로그인 성공
				}else {
					return 0; //password 틀림
				}
			}
			
			return  -1; //가입 X
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -2; //DB 오류
	}
	
	public int join(loginDTO ut) {
		String sql = "insert into USER (ID, passwd, name, email, addr) values (?, ?, ?, ?, 'KOREA')";
		
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,id,pass);
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, ut.getSignId());
			psmt.setString(2, ut.getSignPass());
			psmt.setString(3, ut.getUserName());
			psmt.setString(4, ut.getUserEmail());
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1; //DB 오류
	}
}
