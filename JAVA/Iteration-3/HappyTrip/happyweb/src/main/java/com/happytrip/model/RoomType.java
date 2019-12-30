package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Set;


/**
 * The persistent class for the roomtypes database table.
 * 
 */
@Entity
@Table(name="roomtypes")
public class RoomType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="typeid")
	private long typeId;

	@Column(name="title")
	private String title;

	//bi-directional many-to-many association to Hotel
	@ManyToMany(mappedBy="roomtypes")
	private Set<Hotel> hotels;

    public RoomType() {
    }

	public long getTypeId() {
		return this.typeId;
	}

	public void setTypeId(long typeId) {
		this.typeId = typeId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Set<Hotel> getHotels() {
		return this.hotels;
	}

	public void setHotels(Set<Hotel> hotels) {
		this.hotels = hotels;
	}
	
}