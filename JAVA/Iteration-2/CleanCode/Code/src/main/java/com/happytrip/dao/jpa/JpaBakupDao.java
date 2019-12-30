package com.happytrip.dao.jpa;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.BackupDao;
import com.happytrip.model.Backup;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaBakupDao implements BackupDao {

	private static final Logger LOGGER = LoggerFactory.getLogger(JpaBakupDao.class);

	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public void save(Backup backup) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(backup);
	}

}
