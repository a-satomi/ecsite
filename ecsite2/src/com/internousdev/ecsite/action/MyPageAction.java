package com.internousdev.ecsite.action;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import com.internousdev.ecsite.dao.MyPageDAO;
import com.internousdev.ecsite.dto.MyPageDTO;

public class MyPageAction extends ActionSupport implements SessionAware {

	private String deleteFlg;
	private String message;
	private Map<String,Object> session;
	private List<MyPageDTO> myPageDTOList = new ArrayList<MyPageDTO>();

	public String execute() throws SQLException{

		String result = SUCCESS;

		MyPageDAO myPageDAO = new MyPageDAO();

		if(!(session.containsKey("id"))) {
			return ERROR;
		}

		if(deleteFlg == null) {
			String item_transaction_id = session.get("id").toString();
			String user_master_id = session.get("login_user_id").toString();

			myPageDTOList = myPageDAO.getMyPageUserInfo(item_transaction_id, user_master_id);

		} else if(deleteFlg.equals("1")) {
			delete();
		}
		return result;
	}

	public void delete() throws SQLException {

		MyPageDAO myPageDAO = new MyPageDAO();

		String item_transaction_id = session.get("id").toString();
		String user_master_id = session.get("login_user_id").toString();

		int res = myPageDAO.buyItemHistoryDelete(item_transaction_id, user_master_id);

		if(res > 0) {

			myPageDTOList = null;

			setMessage("商品情報を正しく削除しました。");
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

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<MyPageDTO> getMyPageDTOList() {
		return myPageDTOList;
	}

	public void setMyPageDTOList(List<MyPageDTO> myPageDTOList) {
		this.myPageDTOList = myPageDTOList;
	}
}
