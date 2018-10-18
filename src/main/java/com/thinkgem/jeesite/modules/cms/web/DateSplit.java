package com.thinkgem.jeesite.modules.cms.web;

import java.io.Serializable;

public class DateSplit implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	
	String dataStr;
	String numStr;

	public String getDataStr() {
		if(dataStr==null) {
			return dataStr;
		}
		return dataStr.replaceAll("，", ",");
	}
	public void setDataStr(String dataStr) {
		this.dataStr = dataStr;
	}

	public String getNumStr() {
		if(numStr == null) {
			return numStr;
		}
		return numStr.replaceAll("，", ",");
	}
	public void setNumStr(String numStr) {
		this.numStr = numStr;
	}
}
