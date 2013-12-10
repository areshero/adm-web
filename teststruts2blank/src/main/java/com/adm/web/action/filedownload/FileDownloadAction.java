package com.adm.web.action.filedownload;

import com.opensymphony.xwork2.Action;
import org.apache.struts2.ServletActionContext;

import java.io.InputStream;


public class FileDownloadAction implements Action {

	private String inputPath;
	
	private String filename;

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String execute() throws Exception {
		System.out.println("download");
		return SUCCESS;
	}

	public void setInputPath(String value) {
		inputPath = sanitizeInputPath(value);
	}

	/**
	 * As the user modifiable parameter inputPath will be used to access server side resources, we want the path to be
	 * sanitized - in this case it is demonstrated to disallow inputPath parameter values containing "WEB-INF". Consider to
	 * use even stricter rules in production environments.
	 *
	 * @param value the raw parameter input value to sanitize
	 *
	 * @return the sanitized value; <tt>null</tt> if value contains an invalid path segment like WEB-INF
	 */
	String sanitizeInputPath( String value ) {
		if (value != null && value.toUpperCase().contains("WEB-INF")) {
			return null;
		}
		return value;
	}

	public InputStream getInputStream() throws Exception {
		
		System.out.println("inputpath" + inputPath);
		return ServletActionContext.getServletContext().getResourceAsStream("/" + filename);
		//return ServletActionContext.getServletContext().getResourceAsStream(inputPath);
	}
}
