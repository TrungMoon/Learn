package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.service.impl.BuildingServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController(value = "buildingAPIOfAdmin")
public class BuildingAPI {

    @Autowired
    private BuildingServise buildingServise;

    @PostMapping("/api/building")
    public BuildingDTO createBuilding(@RequestBody BuildingDTO newBuilding) {
        buildingServise.save(newBuilding);
        return newBuilding;
    }
}
