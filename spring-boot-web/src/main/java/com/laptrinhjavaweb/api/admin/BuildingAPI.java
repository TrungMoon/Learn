package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.dto.response.ResponseDTO;
import com.laptrinhjavaweb.dto.response.StaffResponseDTO;
import com.laptrinhjavaweb.service.impl.BuildingServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {

    @Autowired
    private BuildingServise buildingServise;

    @PostMapping
    public BuildingDTO createBuilding(@RequestBody BuildingDTO newBuilding) {
        buildingServise.save(newBuilding);
        return newBuilding;
    }

    @GetMapping("/{buildingid}/staffs")
    public ResponseDTO loadStaff() {
            ResponseDTO result = new ResponseDTO();
        List<StaffResponseDTO> staffs = new ArrayList<>();
        StaffResponseDTO staffResponseDTO1 = new StaffResponseDTO();
        staffResponseDTO1.setFullName("nguyen van b");
        staffResponseDTO1.setStaffId(1L);
        staffResponseDTO1.setChecked("checked");
        staffs.add(staffResponseDTO1);
        StaffResponseDTO staffResponseDTO2 = new StaffResponseDTO();
        staffResponseDTO2.setFullName("nguyen van c");
        staffResponseDTO2.setStaffId(2L);
        staffResponseDTO2.setChecked("checked");
        staffs.add(staffResponseDTO2);
        StaffResponseDTO staffResponseDTO3 = new StaffResponseDTO();
        staffResponseDTO3.setFullName("nguyen van d");
        staffResponseDTO3.setStaffId(3L);
        staffResponseDTO3.setChecked("");
        staffs.add(staffResponseDTO3);
        result.setMessage("success");
        result.setData(staffs);
        return result;
    }
}
