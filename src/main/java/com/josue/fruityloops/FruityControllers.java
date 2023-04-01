package com.josue.fruityloops;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FruityControllers {
	@RequestMapping("/")
	public String index(Model model) {
		// a new fruit array list 
		ArrayList<Item> fruits = new ArrayList<Item>();
		// adding items to the array fruit list
		fruits.add(new Item("Kiwi", 1.5));
		fruits.add(new Item("Mango", 2.0));
		fruits.add(new Item("Goji berries", 4.0));
		fruits.add(new Item("Guava", 0.75));
		model.addAttribute("fruitsFromMyController", fruits);
		return "index.jsp";
	}
}
