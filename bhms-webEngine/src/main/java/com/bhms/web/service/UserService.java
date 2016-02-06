package com.bhms.web.service;

import com.bhms.web.form.UserForm;

public interface UserService {

	public boolean validate(String username, String password);

	public boolean findByEmail(String email);

	public Long save(UserForm userForm);

	public void update(UserForm userForm);

	public void delete(Long id);
	

	

}
