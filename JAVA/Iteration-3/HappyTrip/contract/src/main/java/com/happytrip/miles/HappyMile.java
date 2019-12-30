package com.happytrip.miles;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class HappyMile {

	private boolean available = true;
	private String ailineName;
	private int minimumCharge;
	private int baseExcemption;
	private int milesPerRupee = 1;
	
	public HappyMile() {
		super();
	}
	public HappyMile(String ailineName, int minimumCharge, int baseExcemption,
			int milesPerRupee) {
		super();
		this.ailineName = ailineName;
		this.minimumCharge = minimumCharge;
		this.baseExcemption = baseExcemption;
		this.milesPerRupee = milesPerRupee;
	}
	public String getAilineName() {
		return ailineName;
	}
	public void setAilineName(String ailineName) {
		this.ailineName = ailineName;
	}
	public int getMinimumCharge() {
		return minimumCharge;
	}
	public void setMinimumCharge(int minimumCharge) {
		this.minimumCharge = minimumCharge;
	}
	public int getBaseExcemption() {
		return baseExcemption;
	}
	public void setBaseExcemption(int baseExcemption) {
		this.baseExcemption = baseExcemption;
	}
	public int getMilesPerRupee() {
		return milesPerRupee;
	}
	public void setMilesPerRupee(int milesPerRupee) {
		this.milesPerRupee = milesPerRupee;
	}
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}
	@Override
	public String toString() {
		return "HappyMile [available=" + available + ", ailineName="
				+ ailineName + ", minimumCharge=" + minimumCharge
				+ ", baseExcemption=" + baseExcemption + ", milesPerRupee="
				+ milesPerRupee + "]";
	}	
	
	
}
