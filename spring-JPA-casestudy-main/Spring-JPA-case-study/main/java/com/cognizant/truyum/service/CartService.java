package com.cognizant.truyum.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.truyum.model.Cart;
import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.model.User;
import com.cognizant.truyum.repository.CartRepository;


@Service("cartService")
public class CartService {
	/**
	 * cartRepository reference of CartRepository is autowired in this class
	 */
	@Autowired
	CartRepository cartRepository;
	@Autowired
	UserService userService;
	@Autowired
	MenuItemService menuItemService;
	/**
	 *
	 * @param menu item id that has to be added to cart
	 */
	@Transactional
	public void addToCart(int menuItemId) {
		User user = userService.getUser(1);
		MenuItem menuItem = menuItemService.getMenuItem(menuItemId);
		Cart cart = new Cart();
		cart.setUser(user);
		cart.setMenuItem(menuItem);
		cartRepository.save(cart);
	}
	/**
	 *
	 * @return list of cart items for user
	 */
	@Transactional
	public List<Cart> getCart(){
		return cartRepository.findById(1);
	}
	/**
	 *
	 * @param menu item id that to be deleted for user
	 */
	@Transactional
	public void deleteItem(int menuId,int userid) {
		cartRepository.deleteById(menuId, userid);
	}
}