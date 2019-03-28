package com.internousdev.ecsite.action;

import java.util.List;
import java.util.ArrayList;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.UserListDTO;


public class UserListDeleteCompleteAction extends ActionSupport {

	private String deleteFlg;
	private String message;
	private List<UserListDTO> userListDTO = new ArrayList<UserListDTO>();

	public String execute() throws SQLException {

		String result = SUCCESS;

		if(deleteFlg.equals("1")) {
			delete();
		}
		return result;
	}

	public void delete() throws SQLException {

		UserListDeleteCompleteDAO userListDeleteCompleteDAO = new UserListDeleteCompleteDAO();

		int res = userListDeleteCompleteDAO.userListDelete();

		if(res > 0) {

			userListDTO = null;
			setMessage("ユーザー情報をすべて削除しました。");
		} else if(res == 0) {
			setMessage("ユーザー情報の削除に失敗しました。");
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

	public List<UserListDTO> getUserListDTO() {
		return userListDTO;
	}

	public void setUserListDTO(List<UserListDTO> userListDTO) {
		this.userListDTO = userListDTO;
	}
}