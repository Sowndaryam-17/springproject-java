package com.flat.service;


import java.util.List;

import com.flat.entity.User;

public interface UserService {

	User add(User user);
	int userLogin(User user);
   /* int retriveId(User user);*/
    int retriveUserId(User user);
	/*List<Flat> getSellerDetials(Info info);*/
	List<User> getSellerDetails(int sellerId);
	List<User> viewSellers(User user);
	

}
