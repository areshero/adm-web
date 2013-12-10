package com.adm.web;

import com.opensymphony.xwork2.ActionContext;

public class LoginSession {
	public void login(String userId, String roleId) {
		setUserId(userId);
		setRoleId(roleId);
	}
	
	public void logout() {
		setUserId(null);
		setRoleId(null);
	}
	
	public boolean isLogin() {
		return (getUserId() != null && getRoleId() != null);
	}

	public String getUserId() {
		return (String) ActionContext.getContext().getSession().get("USER_ID");
	}


	public String getRoleId() {
		return (String) ActionContext.getContext().getSession().get("ROLE_ID");
	}
	
	private void setUserId(String userId) {
		ActionContext.getContext().getSession().put("USER_ID", userId);
	}
	
	private void setRoleId(String roleId) {
		ActionContext.getContext().getSession().put("ROLE_ID", roleId);
	}
}
