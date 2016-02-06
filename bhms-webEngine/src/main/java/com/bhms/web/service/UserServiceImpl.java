package com.bhms.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bhms.core.entity.User;
import com.bhms.core.repository.UserRepository;
import com.bhms.web.form.UserForm;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public boolean validate(String username, String password) {
		User entity = userRepository.findByUsernameAndPassword(username, password);
		if (entity != null)
			return true;
		
		return false;
	}

	@Override
	public boolean findByEmail(String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Long save(UserForm userForm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(UserForm userForm) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub

	}

}
