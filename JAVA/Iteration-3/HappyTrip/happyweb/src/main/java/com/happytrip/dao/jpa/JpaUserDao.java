package com.happytrip.dao.jpa;

import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import com.happytrip.dao.UserDao;
import com.happytrip.model.User;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaUserDao
	implements UserDao {

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(user);
	}

	@Override
	public User findForEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public User findForUsername(String username) {
		String searchquery = "from User user where user.email = ?";
		List<User> users = (List) getHibernateTemplate().find(searchquery, username);
		if(users != null && !users.isEmpty()){
			return users.get(0);
		}
		return null;
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().merge(user);
	}

	@Override
	public void updateMiles(User user, float miles) {
		// TODO Auto-generated method stub
		User updateUser = getHibernateTemplate().get(User.class, user.getUserId());
		updateUser.setMiles(updateUser.getMiles()+miles);
		getHibernateTemplate().update(updateUser);
	}
	
}
