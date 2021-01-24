package com.cognizant.truyum.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cognizant.truyum.model.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer>{
	/**
	 * 
	 * @param id to find cart details of user by given id
	 * @return list of cart for userid id
	 */
	@Query("select c from Cart c left join fetch c.user u where u.id= :id")
	public List<Cart> findById(@Param("id") int id);
	
	@Transactional
	@Modifying
	@Query(value="delete from Cart where ct_pr_id= :menuId and ct_us_id= :userid limit 1",nativeQuery=true)
	public void deleteById(@Param("menuId") int menuId,@Param("userid") int userid);
}