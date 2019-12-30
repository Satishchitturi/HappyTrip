package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Set;


/**
 * The persistent class for the hotels database table.
 * 
 */
@Entity
@Table(name="hotels")
public class Hotel implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="hotelid")
	private long hotelId;

	@Column(name="briefnote")
	private String briefNote;

	@Column(name="hotelname")
	private String hotelName;

	@Column(name="photourl")
	private String photoURL;

	@Column(name="starranking")
	private int starRanking;

	//bi-directional one-to-one association to Hotelcontact
	@OneToOne(mappedBy="hotel")
	private HotelContact hotelContact;

	//bi-directional one-to-one association to Hotelrating
	@OneToOne(mappedBy="hotel")
	private HotelRating hotelRating;

	//bi-directional many-to-many association to Review
    @OneToMany(mappedBy="hotelReviewed")
	private Set<Review> reviews;

	//bi-directional many-to-one association to City
    @ManyToOne
	@JoinColumn(name="cityid")
	private City city;

	//bi-directional many-to-many association to Roomtype
    @ManyToMany
	@JoinTable(
		name="hotelrooms_types"
		, joinColumns={
			@JoinColumn(name="hotelid")
			}
		, inverseJoinColumns={
			@JoinColumn(name="typeid")
			}
		)
	private Set<RoomType> roomtypes;

	

    public Hotel() {
    }

	public long getHotelId() {
		return this.hotelId;
	}

	public void setHotelId(long hotelId) {
		this.hotelId = hotelId;
	}

	public String getBriefNote() {
		return this.briefNote;
	}

	public void setBriefNote(String briefNote) {
		this.briefNote = briefNote;
	}

	public String getHotelName() {
		return this.hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getPhotoURL() {
		return this.photoURL;
	}

	public void setPhotoURL(String photoURL) {
		this.photoURL = photoURL;
	}

	public int getStarRanking() {
		return this.starRanking;
	}

	public void setStarRanking(int starRanking) {
		this.starRanking = starRanking;
	}

	public HotelContact getHotelcontact() {
		return this.hotelContact;
	}

	public void setHotelcontact(HotelContact hotelcontact) {
		this.hotelContact = hotelcontact;
	}
	
	public HotelRating getHotelrating() {
		return this.hotelRating;
	}

	public void setHotelrating(HotelRating hotelrating) {
		this.hotelRating = hotelrating;
	}
	
	public Set<Review> getReviews() {
		return this.reviews;
	}

	public void setReviews(Set<Review> reviews) {
		this.reviews = reviews;
	}
	
	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}
	
	public Set<RoomType> getRoomtypes() {
		return this.roomtypes;
	}

	public void setRoomtypes(Set<RoomType> roomtypes) {
		this.roomtypes = roomtypes;
	}
}