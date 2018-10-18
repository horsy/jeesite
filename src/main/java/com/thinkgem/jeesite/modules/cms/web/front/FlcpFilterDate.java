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
	String dataStr;
	String spanStr;
	
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
	
	public List<DateSplit> getSplitList() {
		return splitList;
	}
	public void setSplitList(List<DateSplit> splitList) {
		this.splitList = splitList;
	}
	public String getSpanStr() {
		return spanStr;
	}
	public void setSpanStr(String spanStr) {
		this.spanStr = spanStr;
	}
	
	
}
