package com.internousdev.ecsite.action;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;

public class ItemListAction extends ActionSupport implements SessionAware {

	private String message;
	private Map<String, Object> session;
	private List<ItemListDTO> itemListDTO = new ArrayList<ItemListDTO>();

	public String execute() throws SQLException {

		String result = SUCCESS;

		ItemListDAO itemListDAO = new ItemListDAO();
		itemListDTO = itemListDAO.select();

		if(itemListDTO.size() > 0) {
			setMessage("商品情報は以下になります。");
		} else {
			itemListDTO = null;
			setMessage("現在、商品は登録されておりません。");
		}
		return result;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<ItemListDTO> getItemListDTO() {
		return itemListDTO;
	}

	public void setItemListDTO(List<ItemListDTO> itemListDTO) {
		this.itemListDTO = itemListDTO;
	}
}