package com.cognizant.truyum.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.truyum.model.User;
import com.cognizant.truyum.repository.UserRepository;

@Service
public class UserService{
	/**
	 * userRepository reference of USerRepository is autowired in this class
	 */
	@Autowired
	UserRepository userRepository;
	/**
	 * 
	 * @param s to find user for given id
	 * @return user with that id
	 */
	@Transactional
	public User getUser(int userId) {
		return userRepository.getOne(userId);
	}

}