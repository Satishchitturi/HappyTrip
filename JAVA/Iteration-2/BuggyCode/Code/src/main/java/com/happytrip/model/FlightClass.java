package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the classes database table.
 * 
 */
@Entity
@Table(name="classes")
public class FlightClass implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="classid")
	private long classId;

	@Column(name="classtype")
	private String classType;

	public FlightClass() {
    }

	public long getClassId() {
		return this.classId;
	}

	public void setClassId(long classId) {
		this.classId = classId;
	}

	public String getClassType() {
		return this.classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}
}