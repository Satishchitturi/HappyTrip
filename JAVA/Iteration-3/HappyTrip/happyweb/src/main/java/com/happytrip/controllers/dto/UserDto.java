package com.happytrip.controllers.dto;

import java.io.Serializable;
import java.util.Date;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

import com.happytrip.validator.EmailExistsConstraint;
public class UserDto implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long userId;
	private Date createdDate;
	
	@NotNull(message="DOB is compulsory")
	@Past(message="DOB must be a past date")
	private Date dateOfBirth;
	
	@NotNull(message="Full Name is compulsory")
	@NotBlank(message="Full Name is compulsory")
	@Size(max=255,message="Full Name can only be max 255 characters in length")
	@Pattern(regexp = "[a-z-A-Z\\s]*", message = "Full Name has invalid characters")
	private String fullName;
	private String gender;
	private String loginId;

	@Pattern(message="Enter Valid EmailAddress compulsory",regexp="^[\\w-]+(\\.[\\w-]+)*@([a-z0-9-]+(\\.[a-z0-9-]+)*?\\.[a-z]{2,6}|(\\d{1,3}\\.){3}\\d{1,3})(:\\d{4})?$")
	@NotNull(message="Email Address is compulsory")
	/*@NotBlank(message="Email Address is compulsory")*/
	@Size(max=255,message="Email can only be max 255 characters in length")
	@EmailExistsConstraint(message="Entered email already exist!")
	private String email;

	@Size(max=255,message="Password can only be max 255 characters in length")
	private String password;
	
	private boolean enabled;

	@Valid
	private ContactDto userContact;
	
	private float miles;

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public ContactDto getUserContact() {
		return userContact;
	}

	public void setUserContact(ContactDto userContact) {
		this.userContact = userContact;
	}

	public float getMiles() {
		return miles;
	}

	public void setMiles(float miles) {
		this.miles = miles;
	}
	
	
}
