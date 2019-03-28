package com.internousdev.ecsite.action;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserListDTO;

public class UserListAction extends ActionSupport implements SessionAware {

	private String message;
	private Map<String, Object> session;
	private List<UserListDTO> userListDTO = new ArrayList<UserListDTO>();

	public String execute() throws SQLException {

		String result = SUCCESS;

		UserListDAO userListDAO = new UserListDAO();
		userListDTO = userListDAO.select();

		if(userListDTO.size() > 0) {
			setMessage("ユーザー情報は以下になります。");
		} else {
			userListDTO = null;
			setMessage("現在、ユーザーは登録されておりません。");
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

	public List<UserListDTO> getUserListDTO() {
		return userListDTO;
	}

	public void setUserListDTO(List<UserListDTO> userListDTO) {
		this.userListDTO = userListDTO;
	}
}