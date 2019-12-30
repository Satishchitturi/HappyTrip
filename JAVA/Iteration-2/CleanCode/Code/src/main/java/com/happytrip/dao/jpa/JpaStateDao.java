package com.happytrip.dao.jpa;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.StateDao;
import com.happytrip.model.State;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaStateDao implements StateDao {

	private static final Logger LOGGER = LoggerFactory.getLogger(JpaStateDao.class);

	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}


	@Override
	public void save(State state) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(state);
	}

}
