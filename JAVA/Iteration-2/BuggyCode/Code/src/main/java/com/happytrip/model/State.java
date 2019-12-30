package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the states database table.
 * 
 */
@Entity
@Table(name="states")
public class State implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="stateid")
	private long stateId;

	@Column(name="statename")
	private String stateName;

	public State() {
    }

	public long getStateId() {
		return this.stateId;
	}

	public void setStateId(long stateId) {
		this.stateId = stateId;
	}

	public String getStateName() {
		return this.stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
}