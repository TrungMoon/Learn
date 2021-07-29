package com.laptrinhjavaweb.repository.jdbc.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.repository.jdbc.BuildingJDBC;

@Repository
public class BuildingJDBCImpl implements BuildingJDBC {
	
	JdbcTemplate jdbcTemplate;

	@Override
	public List<BuildingDTO> findAll() {
		List<BuildingDTO> buildingDTO = new ArrayList<BuildingDTO>();
		String sql = " SELECT * FROM building b";
		jdbcTemplate.query(sql, new BuildingRowmap);
		
		return buildingDTO;
	}
		
}
