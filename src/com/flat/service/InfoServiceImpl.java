package com.flat.service;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;















import com.flat.entity.Info;
import com.flat.repository.InfoRepository;



	
	
	
	@Transactional
	@Service
	public class InfoServiceImpl implements InfoService {
				
	@Autowired
	InfoRepository infoRepository ;

	
	public Info add(Info info)
	{
	
		/*List<Info> inf = infoRepository.findAll();
		for(int i=0;i<=inf.size();i++){
			if((inf.get(i).getFlatNumber().contentEquals(info.getFlatNumber() )&& (inf.get(i).getEmailId().contentEquals(info.getEmailId())))){
			
			 
			}
		}
		System.out.println(info.getEmailId());*/
		Info view= infoRepository.save(info);
		return view;
	
	}


	
	public List<Info> ViewcustomerDetails(int sellerId) {
		// TODO Auto-generated method stub
		System.out.println(sellerId);
		List<Info> listCustomer= infoRepository.findBysellerId(sellerId);
		return listCustomer;
	}



	
	}

