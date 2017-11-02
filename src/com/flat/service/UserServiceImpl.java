package com.flat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flat.entity.Flat;
import com.flat.entity.Info;
import com.flat.entity.User;
import com.flat.repository.UserRepository;

@Transactional
@Service
public class UserServiceImpl implements UserService {
@Autowired
UserRepository userRepository;

public User add(User user) {
	
	User registeUser=userRepository.save(user);
	return registeUser;
}


public int userLogin(User user) {
	// TODO Auto-generated method stub
	int Valid=0;
	List<User> userBean= userRepository.findAll();
	
	for(int i=0;i<userBean.size();i++)
	{
	if((userBean.get(i).getEmailId()).contentEquals(user.getEmailId())  &&  (userBean.get(i).getPassword()).contentEquals(user.getPassword()) && (userBean.get(i).getUserType()).contentEquals("seller"))
	{
		Valid=1;
	}
	if((userBean.get(i).getEmailId()).contentEquals(user.getEmailId())  &&  (userBean.get(i).getPassword()).contentEquals(user.getPassword()) && (userBean.get(i).getUserType()).contentEquals("admin"))
	{
		Valid=2;
	}
	}
	return Valid;
}



/*

public int retriveId(User user) {
	// TODO Auto-generated method stub
	int userId = 0;
	List<User> listid = userRepository.findAll();
			for(int i=0;i<listid.size();i++){
				if((listid.get(i).getEmailId().contentEquals(user.getEmailId())))
				{
					userId = listid.get(i).getUserId();
					System.out.println(userId);
					
				}
	
}
			return userId;
			



}

*/
public int retriveUserId(User user)
{
	int userId = 0;
	List<User> userBean= userRepository.findAll();
	
	for(int i=0;i<userBean.size();i++)
	{
	if((userBean.get(i).getEmailId()).contentEquals(user.getEmailId())  &&  (userBean.get(i).getPassword()).contentEquals(user.getPassword()) && (userBean.get(i).getUserType()).contentEquals("seller"))
	{
		userId = userBean.get(i).getUserId();
		System.out.println(userId);
	}
	}
	return userId;


}


@Override
public List<User> getSellerDetails(int sellerId) {
	// TODO Auto-generated method stub
	System.out.println(sellerId);
	List<User> listUser= userRepository.findByUserId(sellerId);
	return listUser;
}



public List<User> viewSellers(User user){
	List<User> list=userRepository.findAll();
	for(int i=0;i<list.size();i++)
	{
	if(list.get(i).getUserType().contentEquals("admin"))
	{ 
		list.remove(i); 
	}
	}
	return list;
	
	
	
}


/*
public List<Flat> getSellerDetials(Info info) {
	
	
	
	{
			System.out.println("dddd");		
			List<info> list=userRepository.findBysellerI(info.getSellerId());
			System.out.println(f.getCity());
			return list;
	}

	
	
	return null;
}*/
}
