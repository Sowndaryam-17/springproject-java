package com.flat.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flat.entity.Flat;



	public interface FlatRepository extends JpaRepository<Flat, String>
	{

		List<Flat> findBysellerId(int sellerId);

		List<Flat> findBycity(String city);

		

	

		List<Flat> findByFlatNumber(String flatNumber);



	}


