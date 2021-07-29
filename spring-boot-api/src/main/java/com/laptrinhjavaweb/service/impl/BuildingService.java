package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.laptrinhjavaweb.entity.BuildingEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.converter.BuildingConverter;
import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.enums.BuildingTypesEnum;
import com.laptrinhjavaweb.enums.DistrictsEnum;
import com.laptrinhjavaweb.repository.BuildingRepository;
import com.laptrinhjavaweb.service.IBuildingService;

@Service
public class BuildingService implements IBuildingService {

	@Autowired
	private BuildingConverter buildingConverter;
	
	@Autowired
	private BuildingRepository buildingRepository;
	
	@Override
	public Map<String, String> getDistricts() {
		Map<String, String> districts = new HashMap<>();
		for (DistrictsEnum item: DistrictsEnum.values()) {
			districts.put(item.toString(), item.getDistrictValue());
		}
		return districts;
	}

	@Override
	public Map<String, String> getBuildingTypes() {
		Map<String, String> buildingTypes = new HashMap<>();
		for (BuildingTypesEnum item: BuildingTypesEnum.values()) {
			buildingTypes.put(item.toString(), item.getBuildingTypeValue());
		}
		return buildingTypes;
	}

	@Override
	@Transactional
	public BuildingDTO save(BuildingDTO newBuilding) {
		//BuildingEntity buildingEntity = buildingConverter.convertToEntity(newBuilding);
		//return buildingConverter.convertToDTO(buildingRepository.save(buildingEntity));
		BuildingEntity buildingEntity = new BuildingEntity();
		buildingEntity.setName(newBuilding.getName());
		buildingEntity.setNumberOfBasement(newBuilding.getNumberOfBasement());
		buildingEntity = buildingRepository.save(buildingEntity);
		BuildingDTO result = new BuildingDTO();
		result.setName(buildingEntity.getName());
		result.setNumberOfBasement(buildingEntity.getNumberOfBasement());
		return result;
	}
//test
	@Override
	public List<BuildingDTO> findAll() {
		List<BuildingDTO> results = new ArrayList<>();
		List<BuildingEntity> buildingEntities = buildingRepository.findAll();
		for (BuildingEntity item: buildingEntities) {
			//BuildingDTO buildingDTO = buildingConverter.convertToDTO(item);
			BuildingDTO buildingDTO = new BuildingDTO();
			buildingDTO.setName(item.getName());
			buildingDTO.setNumberOfBasement(item.getNumberOfBasement());
			buildingDTO.setStreet(item.getStreet());
			buildingDTO.setWard(item.getWard());
			buildingDTO.setDistrict(item.getDistrict());
			results.add(buildingDTO);
		}
		return results;
	}

	@Override
	public List<BuildingDTO> getBuilding(String name, Integer numberOfBasement, String street, String ward, String district) {
		
		return null;
	}
	
}
