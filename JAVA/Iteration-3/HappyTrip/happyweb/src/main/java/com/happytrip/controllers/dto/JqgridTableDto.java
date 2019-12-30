package com.happytrip.controllers.dto;

import java.util.List;

public class JqgridTableDto<T> {

private String page;
	
	/**
	 * Total pages for the query
	 */
	private String total;
	
	/**
	 * Total number of records for the query
	 */
	private String records;
	
	/**
	 * An array containing the actual data
	 */
	private List<T> rows;
 
	
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
 
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
 
	public String getRecords() {
		return records;
	}
	public void setRecords(String records) {
		this.records = records;
	}
	
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
}
