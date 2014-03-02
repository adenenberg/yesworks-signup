package com.yesworks.signup.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yesworks.signup.domain.Youth;

@Repository("youthDao")
@Transactional
public class YouthDao {

	@PersistenceContext(unitName = "yesworksPU")
	private EntityManager em;
	
	public void save(Youth youth) {
		em.persist(youth);
	}
}
