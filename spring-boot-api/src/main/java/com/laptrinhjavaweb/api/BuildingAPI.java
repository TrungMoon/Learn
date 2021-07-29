package com.laptrinhjavaweb.api;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.entity.BuildingEntity;
import com.laptrinhjavaweb.repository.BuildingRepository;
import com.laptrinhjavaweb.service.IBuildingService;

@RestController
@RequestMapping("/api/building") //parent
public class BuildingAPI {
	
	@Autowired
	private IBuildingService buildingService;
	
	/*@GetMapping
	public List<BuildingDTO> getBuilding() {
		return buildingService.findAll();
	}
	/*
	@PostMapping
	public BuildingDTO createBuilding(@RequestBody BuildingDTO newBuilding) {
		return buildingService.save(newBuilding);
	}*/
	
	@Autowired
	private BuildingRepository buildingRepository;
	/*@Autowired
	private BuildingJDBC BuildingJDBC;*/
	
	@GetMapping
	public List<BuildingDTO> getAllBuilding(@RequestParam(value = "name", required = false) String name,
											@RequestParam(value = "numberOfBasement", required = false) Integer numberOfBasement,
											@RequestParam(value = "street", required = false) String street,
											@RequestParam(value = "ward", required = false) String ward,
											@RequestParam(value = "district", required = false) String district,
											@RequestParam List<String> types ){
		return buildingService.getBuilding(name, numberOfBasement, street, ward, district);
	}
	
	@GetMapping("/{id}")
	public BuildingDTO getOne(@PathVariable("id") Long id) {
		/*List<BuildingDTO> results = new ArrayList<>();
		List<BuildingEntity> buildingEntities = buildingRepository.findAll();
		for (BuildingEntity item: buildingEntities) {
			BuildingDTO buildingDTO =  new BuildingDTO();
			buildingDTO.setName(item.getName());;
			results.add(buildingDTO);
		}
		return (BuildingDTO) results;*/
		//System.out.println(1/0);
		return null;
	}
	@PostMapping
	public BuildingDTO createBuilding(@RequestBody BuildingDTO newBuilding) {
		//return buildingService.save(newBuilding);
		return newBuilding;
	}
}
