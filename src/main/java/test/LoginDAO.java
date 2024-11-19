package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
      public UserBean  ub =null;
      
      public UserBean Login(String uN, String pW)
      {
    	  try {
			Connection con =DBConnection.getCon();
			PreparedStatement ps =con.prepareStatement
					("select * from UserReg67 where uname=? and pword=?");
			
			ps.setString(1, uN);
			ps.setString(2, pW);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				ub = new UserBean();
				ub.setuName(rs.getString(1));
				ub.setpWord(rs.getString(2));
				ub.setfName(rs.getString(3));
				ub.setlName(rs.getString(5));
				ub.setCity(rs.getString(6));
				ub.setmId(rs.getString(7));
				ub.setPhNo(rs.getLong(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ub;
      }
}
