package com.flat.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flat.entity.Flat;
import com.flat.repository.FlatRepository;

	@Transactional
	@Service
	public class FlatServiceImpl implements FlatService {
	
    @Autowired
	FlatRepository flatRepository;

	public Flat addFlat(Flat flat) 
	{
		
		Flat registerflat=flatRepository.save(flat);
		return registerflat;
	}

	public List<Flat> viewFlat(Flat flat) {
	
		int sellerid=flat.getSellerId();
		List<Flat> fl=flatRepository.findBysellerId(sellerid);
		System.out.println(sellerid);
		/*for(int i=0;i<flat.size();i++)
		{
			if(sellerId.getSellerId()==flat.get(i).getSellerId())
			{
	            ar.add(flat.get(i).getCity());
	            ar.add(flat.get(i).getApartmentName());
	            System.out.println(flat.get(i).getApartmentName());
			}
		}*/
		
		return fl;
	}

	public Flat viewFlatDetails(Flat flat) {
	

		Flat list=flatRepository.findOne(flat.getFlatNumber());	
			return list;
		}

	public void updateFlatDetails(Flat flat) {
		Flat flatbean=flatRepository.findOne(flat.getFlatNumber());
			if(flatbean != null){
				flatbean.setCity(flatbean.getCity());
				flatbean.setLocation(flatbean.getLocation());
				flatbean.setApartmentName(flatbean.getApartmentName());
				flatbean.setFlatNumber(flatbean.getFlatNumber());
				flatbean.setFlatType(flatbean.getFlatType());
				flatbean.setSquareFeet(flatbean.getSquareFeet());
			  flatbean.setFlatPrice(flat.getFlatPrice());
			  flatbean.setStatus(flat.getStatus());
			  flatRepository.saveAndFlush(flatbean);
			
		}

		}

	public List<Flat> viewFlatCity(Flat flat) 
	
{
		System.out.println("dddd");		
		List<Flat> list=flatRepository.findBycity(flat.getCity());
		System.out.println(flat.getCity());
		return list;
}


	public List<Flat> retriveFlatDetails(Flat flat) {
		
		//System.out.println("impl flat " +flat.getFlatNumber());
		List<Flat> details = flatRepository.findByFlatNumber(flat.getFlatNumber()); 
		//System.out.println("impl deatils" +details.getApartmentName());
		return details;
	}

	
	
	/*
	public ArrayList<Flat>  retriveFlatInfo(Flat flat)
	
	
	{
		System.out.println("impl");
		System.out.println(flat.getFlatNumber());
		
	//	Flat flatresult=flatRepository.findByflatNumber("Shree1");
		//Flat list=flatRepository.findOne(flat.getFlatNumber());
		
		List<Flat> list = flatRepository.findAll();
		
		ArrayList<Flat> list1=new ArrayList<Flat>();
		System.out.println("size"+list.size());
		for(int i=0;i<list.size();i++){
			
			System.out.println(flat.getFlatNumber());
			String value=(list.get(i).getFlatNumber());
			System.out.println("number"+value);
			System.out.println((flat.getFlatNumber()).equalsIgnoreCase(value));
			System.out.println();
			int j=0;
			if(j==0)
			{
				System.out.println("adgwjdgw");
				
			}
			if((flat.getFlatNumber()).contentEquals(value))
			{
				
				System.out.println("gvjnbhbh");
			        list1.add(list.get(i));
		
			}
			
			}
		
	System.out.println("asbdjnjfnjdnjndf"+list1);
		return  list1;
	}


	public Flat retriveInfo(Flat flat) {
		// TODO Auto-generated method stub
		Flat flatIn=flatRepository.findByflatNumber(flat.getFlatNumber());
		return flatIn;
	}

	
	
	
public ArrayList<Flat>  retriveFlatInfo(Flat flat){
		
		
		List<Flat> list = flatRepository.findAll();
		
		ArrayList<Flat> list1=new ArrayList<Flat>();
		
		for(int i=0;i<list.size();i++){
			
			
			String value=flat.getFlatNumber();
			
			System.out.println((flat.getFlatNumber()).contentEquals(value));
			System.out.println();
			if((flat.getFlatNumber()).contentEquals(value))
			{
				
				System.out.println("gvjnbhbh");
			        list1.add(list.get(i));
		
			}
			
			}
		
	System.out.println("asbdjnjfnjdnjndf"+list1);
		return  list1;
	

		
	}

	
	*/
	
	}

		
	
	
	
	
	


	
	
	


