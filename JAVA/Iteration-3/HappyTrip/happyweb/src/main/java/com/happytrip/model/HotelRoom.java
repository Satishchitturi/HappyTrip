package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;

import java.util.Set;


/**
 * The persistent class for the hotelrooms database table.
 * 
 */
@Entity
@Table(name="hotelrooms")
public class HotelRoom implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="hotelid")
	private long id;

	@Column(name="costperday")
	private float costPerDay;

	@Column(name="noofrooms")
	private int noOfRooms;

	@ManyToOne
	@JoinColumn(name="typeid")
	private RoomType roomType;
	
	//bi-directional many-to-one association to Hotelbooking
	@OneToMany(mappedBy="hotelRoom")
	private Set<HotelBooking> hotelbookings;

    public HotelRoom() {
    }

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public float getCostPerDay() {
		return this.costPerDay;
	}

	public void setCostPerDay(float costPerDay) {
		this.costPerDay = costPerDay;
	}

	public int getNoOfRooms() {
		return this.noOfRooms;
	}

	public void setNoOfRooms(int noOfRooms) {
		this.noOfRooms = noOfRooms;
	}

	public Set<HotelBooking> getHotelbookings() {
		return this.hotelbookings;
	}

	public void setHotelbookings(Set<HotelBooking> hotelbookings) {
		this.hotelbookings = hotelbookings;
	}

	public RoomType getRoomType() {
		return roomType;
	}

	public void setRoomType(RoomType roomType) {
		this.roomType = roomType;
	}
}