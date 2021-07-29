package com.laptrinhjavaweb.repository.custom.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.entity.BuildingEntity;
import com.laptrinhjavaweb.repository.custom.BuildingRepositoryCustom;

@Repository
public class BuildingRepositoryImpl implements BuildingRepositoryCustom {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<BuildingEntity> findAll() {
		String sql = "select * from building" ;
		Query query = entityManager.createNativeQuery(sql,BuildingEntity.class);
		return query.getResultList();
	}

}
