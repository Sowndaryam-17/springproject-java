package com.flat.repository;




import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flat.entity.Info;



	public interface InfoRepository extends JpaRepository<Info, String>
	{

		List<Info> findBysellerId(int sellerId);


	}


