package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.UserListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserListDAO {

	public List<UserListDTO> select() throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		List<UserListDTO> userListDTO = new ArrayList<UserListDTO>();

		String sql = "SELECT id, login_id, login_pass, user_name, insert_date FROM login_user_transaction";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {

				UserListDTO dto = new UserListDTO();

				dto.setUserId(rs.getString("id"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPass(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setDate(rs.getString("insert_date"));
				userListDTO.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return userListDTO;
	}
}