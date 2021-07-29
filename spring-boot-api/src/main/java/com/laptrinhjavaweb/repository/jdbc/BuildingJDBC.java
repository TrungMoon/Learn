package com.laptrinhjavaweb.repository.jdbc;

import java.util.List;

import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.entity.BuildingEntity;

public interface BuildingJDBC {

	 List<BuildingDTO> findAll();
}
