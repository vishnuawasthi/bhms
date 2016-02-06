package com.bhms.core.repository;

import org.springframework.data.repository.CrudRepository;

import com.bhms.core.entity.User;

public interface UserRepository extends CrudRepository<User, Long> {
	public User findByUsernameAndPassword(String username, String password);

}
