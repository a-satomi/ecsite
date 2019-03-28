package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ItemListDAO {

	public List<ItemListDTO> select() throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		List<ItemListDTO> itemListDTO = new ArrayList<ItemListDTO>();

		String sql = "SELECT id, item_name, item_price, item_stock, insert_date FROM item_info_transaction";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {

				ItemListDTO dto = new ItemListDTO();

				dto.setItemId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setItemStock(rs.getString("item_stock"));
				dto.setDate(rs.getString("insert_date"));
				itemListDTO.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return itemListDTO;
	}
}