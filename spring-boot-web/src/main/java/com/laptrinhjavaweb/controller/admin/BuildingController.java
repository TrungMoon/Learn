package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.service.IBuildingService;
import com.laptrinhjavaweb.service.IUserService;
import com.laptrinhjavaweb.service.impl.BuildingServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller(value = "BuildingControllerOfAdmin")
public class BuildingController {

	@Autowired
	private IBuildingService buildingServise;

	@Autowired
	private IUserService userService;

	@RequestMapping(value = "/admin/building-list", method = RequestMethod.GET)
	public ModelAndView buildingList(@ModelAttribute("modelSearch") BuildingDTO buildingDTO) {
		ModelAndView mav = new ModelAndView("admin/building/list");
		mav.addObject("modelSearch", new BuildingDTO());
		mav.addObject("buildings", buildingServise.findAll());
		mav.addObject("staffmaps", userService.getStaffMaps());
		return mav;
	}

	@RequestMapping(value = "/admin/building-edit", method = RequestMethod.GET)
	public ModelAndView buildingEdit() {
		ModelAndView mav = new ModelAndView("admin/building/edit");
		mav.addObject("buildingModel", new BuildingDTO());
		return mav;
	}
}
