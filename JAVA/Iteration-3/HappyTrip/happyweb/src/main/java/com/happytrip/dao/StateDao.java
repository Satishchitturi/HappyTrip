package com.happytrip.dao;

import java.util.List;

import com.happytrip.model.State;

public interface StateDao {

	void save(State state);
	List<State> findAll();
}
