package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProfileDAO {
	public int k = 0;

	public int update(UserBean ub) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con
					.prepareStatement("update UserReg67 set city=? , mid=?, phno=?, where uname=? and pword=?");

			ps.setString(1, ub.getCity());
			ps.setString(2, ub.getmId());
			ps.setLong(3, ub.getPhNo());
			ps.setString(4, ub.getuName());
			ps.setString(5, ub.getpWord());

			k = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}
}
