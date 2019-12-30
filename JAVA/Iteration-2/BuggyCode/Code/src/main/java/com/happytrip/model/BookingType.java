package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Set;


/**
 * The persistent class for the bookingtypes database table.
 * 
 */
@Entity
@Table(name="bookingtypes")
public class BookingType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="typeid")
	private long typeId;

	@Column(name="title")
	private String title;

	//bi-directional many-to-one association to Booking
	@OneToMany(mappedBy="bookingtype")
	private Set<Booking> bookings;

    public BookingType() {
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

	public Set<Booking> getBookings() {
		return this.bookings;
	}

	public void setBookings(Set<Booking> bookings) {
		this.bookings = bookings;
	}
	
}