package com.flat.service;


import java.util.ArrayList;
import java.util.List;






import com.flat.entity.Flat;

public interface FlatService {
	
	Flat addFlat(Flat flat);

	 List<Flat> viewFlat(Flat sellerId);

	Flat viewFlatDetails(Flat flat);

	void updateFlatDetails(Flat flat);

	List<Flat> viewFlatCity(Flat flat) ;

	List<Flat> retriveFlatDetails(Flat flat);

	/*Flat retriveFlatDetails(Flat flat);

	ArrayList<Flat> retriveFlatInfo(Flat flat);

	Flat retriveInfo(Flat flat);
	 */
	 
	
	

}
