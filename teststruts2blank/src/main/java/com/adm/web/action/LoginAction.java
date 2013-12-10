package com.adm.web.action;

import com.adm.web.model.LoginModel;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends BaseAction implements ModelDriven<LoginModel> {
	private LoginModel model;

	public LoginModel getModel() {
		return model;
	}

	public void setModel(LoginModel model) {
		this.model = model;
	}

}
