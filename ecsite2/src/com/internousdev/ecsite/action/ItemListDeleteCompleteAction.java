package com.internousdev.ecsite.action;

import java.util.List;
import java.util.ArrayList;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.ItemListDTO;

public class ItemListDeleteCompleteAction extends ActionSupport {

	private String deleteFlg;
	private String message;
	private List<ItemListDTO> itemListDTO = new ArrayList<ItemListDTO>();

	public String execute() throws SQLException {

		String result = SUCCESS;

		if(deleteFlg.equals("1")) {
			delete();
		}
		return result;
	}

	public void delete() throws SQLException {

		ItemListDeleteCompleteDAO itemListDeleteCompleteDAO = new ItemListDeleteCompleteDAO();

		int res = itemListDeleteCompleteDAO.itemListDelete();

		if(res > 0) {

			itemListDTO = null;
			setMessage("商品情報をすべて削除しました。");
		} else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}
	}

	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public List<ItemListDTO> getItemListDTO() {
		return itemListDTO;
	}

	public void setItemListDTO(List<ItemListDTO> itemListDTO) {
		this.itemListDTO = itemListDTO;
	}
}