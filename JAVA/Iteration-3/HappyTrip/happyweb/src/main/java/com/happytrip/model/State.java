package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * The persistent class for the states database table.
 * 
 */
@Entity
@Table(name="states")
public class State implements Serializable,Comparable<State> {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(State.class);

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

	@Override
	public int hashCode() {
		LOGGER.info("Hashcode for " + this);

		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((stateName == null) ? 0 : stateName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		LOGGER.info("Comparing " + this + " with " + obj);

		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		State other = (State) obj;
		if (stateName == null) {
			if (other.stateName != null)
				return false;
		} else if (!stateName.equals(other.stateName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "State [stateId=" + stateId + ", stateName=" + stateName + "]";
	}

	@Override
	public int compareTo(State o) {
		// TODO Auto-generated method stub
		LOGGER.info("Campare to called for " + o);
		// TODO Auto-generated method stub
		if(o.stateName == null){
			return -1;
		}
		if(this.stateName != null){
			return this.stateName.compareTo(o.stateName);
		}else{
			return 0;
		}
	}
}