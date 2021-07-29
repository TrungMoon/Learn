package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.BuildingEntity;
import com.laptrinhjavaweb.repository.custom.BuildingRepositoryCustom;
import com.laptrinhjavaweb.repository.jdbc.BuildingJDBC;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BuildingRepository extends BuildingJDBC, /*BuildingRepositoryCustom,*/ JpaRepository<BuildingEntity, Long> {
}
