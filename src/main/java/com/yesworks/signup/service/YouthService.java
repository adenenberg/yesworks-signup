package com.yesworks.signup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yesworks.signup.dao.YouthDao;
import com.yesworks.signup.domain.Youth;

@Service("youthService")
@Transactional
public class YouthService {

	@Autowired
	private YouthDao youthDao;
	
	public void save(Youth youth) {
		youthDao.save(youth);
	}
}
