package com.happytrip.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="backup")
public class Backup {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="backupid")
	private long backupId;

	@Column(name="name")
	private String name;

	@Lob
	@Column(length=100000)
	private byte[] data;

	public long getBackupId() {
		return backupId;
	}

	public void setBackupId(long backupId) {
		this.backupId = backupId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}
}
