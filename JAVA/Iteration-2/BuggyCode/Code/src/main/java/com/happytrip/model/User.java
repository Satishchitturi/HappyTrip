package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * The persistent class for the users database table.
 * 
 */
@Entity
@Table(name="users")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_id")
	private long userId;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="createddate")
	private Date createdDate;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="dateofbirth")
	private Date dateOfBirth;

	@Column(name="fullname")
	private String fullName;

	@Column(name="gender")
	private String gender;

	@Column(name="loginid")
	private String loginId;

	@Column(name="username")
	private String email;

	@Column(name="password")
	private String password;
	
	private boolean enabled;

	//bi-directional one-to-one association to Usercontactinformation
	@OneToOne(mappedBy="user",cascade=CascadeType.ALL)
	private UserContact userContact;
	
	@OneToMany(mappedBy="user",cascade=CascadeType.ALL)
	private List<Role> roles = new ArrayList<Role>();

	public User() {
    }
	
	public void addRole(Role role){
		this.roles.add(role);
	}

	public long getUserId() {
		return this.userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public Date getCreatedDate() {
		if(this.createdDate != null){
			return (Date)this.createdDate.clone();
		}else{
			return null;
		}
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = (Date)createdDate.clone();
	}

	public Date getDateOfBirth() {
		if(this.dateOfBirth != null){
			return (Date)this.dateOfBirth.clone();
		}else{
			return null;
		}
	}

	public void setDateOfBirth(Date dateOfBirth) {
		if(dateOfBirth != null){
			this.dateOfBirth = (Date)dateOfBirth.clone();
		}
	}

	public String getFullName() {
		return this.fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLoginId() {
		return this.loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserContact getUserContact() {
		return this.userContact;
	}

	public void setUserContact(UserContact userContact) {
		this.userContact = userContact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
}