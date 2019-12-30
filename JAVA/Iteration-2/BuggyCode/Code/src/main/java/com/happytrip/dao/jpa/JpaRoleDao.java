package com.happytrip.dao.jpa;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.RoleDao;
import com.happytrip.model.Role;
import com.happytrip.model.User;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaRoleDao implements RoleDao {
	
	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public Role getRoleForUsername(String username) {
		String searchquery = "from Role role where role.user.email = ?";
		List<Role> roles = (List) getHibernateTemplate().find(searchquery, username);
		if(roles != null && !roles.isEmpty()){
			return roles.get(0);
		}
		return null;
	}

}
