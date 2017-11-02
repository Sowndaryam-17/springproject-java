package com.flat.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flat.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>
{

	

	List<User> findByUserId(int sellerId);
	
}