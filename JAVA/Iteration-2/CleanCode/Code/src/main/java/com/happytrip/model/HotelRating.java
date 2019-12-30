package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigInteger;


/**
 * The persistent class for the hotelratings database table.
 * 
 */
@Entity
@Table(name="hotelratings")
public class HotelRating implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="hotelid")
	private long hotelId;

	@Column(name="rating")
	private float rating;

	@Column(name="totalratings")
	private BigInteger totalRatings;

	//bi-directional one-to-one association to Hotel
	@OneToOne
	@JoinColumn(name="hotelid")
	private Hotel hotel;

    public HotelRating() {
    }

	public long getHotelId() {
		return this.hotelId;
	}

	public void setHotelId(long hotelId) {
		this.hotelId = hotelId;
	}

	public float getRating() {
		return this.rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public BigInteger getTotalRatings() {
		return this.totalRatings;
	}

	public void setTotalRatings(BigInteger totalRatings) {
		this.totalRatings = totalRatings;
	}

	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	
}