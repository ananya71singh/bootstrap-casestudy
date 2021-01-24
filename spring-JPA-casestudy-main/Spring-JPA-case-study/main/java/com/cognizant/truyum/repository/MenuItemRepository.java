package com.cognizant.truyum.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.truyum.model.MenuItem;

@Repository
public interface MenuItemRepository extends JpaRepository<MenuItem, Integer>{
	/**
	 * 
	 * @param id to find menu item details of customer whereactive=yes and dateOfLaunch<=curdate
	 * @return list of cart for userid id
	 */
	@Query("select m from MenuItem m where active='Yes' and dateOfLaunch<=sysdate()")
	List<MenuItem> getMenuItemListCustomer();
}