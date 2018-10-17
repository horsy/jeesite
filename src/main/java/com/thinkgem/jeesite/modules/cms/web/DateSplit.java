package com.thinkgem.jeesite.modules.cms.web;

import java.io.Serializable;

public class DateSplit implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	
	String dataStr;
	int num;

	/**
	 * 1、最多出现num数量
	 * 0、最少出现num数量
	 */
	int type;
	public String getDataStr() {
		return dataStr.replaceAll("，", ",");
	}
	public void setDataStr(String dataStr) {
		this.dataStr = dataStr;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	


}
