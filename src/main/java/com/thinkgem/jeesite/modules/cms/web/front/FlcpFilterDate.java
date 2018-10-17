package com.thinkgem.jeesite.modules.cms.web.front;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.thinkgem.jeesite.modules.cms.web.DateSplit;

public class FlcpFilterDate implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	List<DateSplit> splitList = new ArrayList<DateSplit>();
	
	Integer resultNum = 5;
	Boolean isBigSmall = true;
	Boolean isJO =false;
	Boolean isZS = false;
	String dataStr;
	
	public String getDataStr() {
		return dataStr;
	}
	public void setDataStr(String dataStr) {
		this.dataStr = dataStr;
	}
	public Integer getResultNum() {
		return resultNum;
	}
	public void setResultNum(Integer resultNum) {
		this.resultNum = resultNum;
	}
	public Boolean getIsBigSmall() {
		return isBigSmall;
	}
	public void setIsBigSmall(Boolean isBigSmall) {
		this.isBigSmall = isBigSmall;
	}
	public Boolean getIsJO() {
		return isJO;
	}
	public void setIsJO(Boolean isJO) {
		this.isJO = isJO;
	}
	public Boolean getIsZS() {
		return isZS;
	}
	public void setIsZS(Boolean isZS) {
		this.isZS = isZS;
	}
	public List<DateSplit> getSplitList() {
		return splitList;
	}
	public void setSplitList(List<DateSplit> splitList) {
		this.splitList = splitList;
	}
	
	
}
