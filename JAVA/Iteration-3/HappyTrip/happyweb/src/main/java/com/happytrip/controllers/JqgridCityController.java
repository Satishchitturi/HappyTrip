package com.happytrip.controllers;


import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import com.happytrip.controllers.dto.JqgridTableDto;
import com.happytrip.controllers.dto.JsonAirlineDto;
import com.happytrip.controllers.dto.JsonCityDto;
import com.happytrip.controllers.dto.ResponseDto;
import com.happytrip.dao.CityDao;

import com.happytrip.model.Airline;


import com.happytrip.services.AirlineService;
import com.happytrip.services.CityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
 

@Controller

public class JqgridCityController {
	
	@Autowired
	private volatile CityService service;
	
	@Autowired
	private CityDao cityDao;
 
	ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
	Validator validator = factory.getValidator();
 
	@CacheEvict(value = "records", allEntries=true)
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public @ResponseBody ResponseDto<JsonCityDto> add(JsonCityDto jsonCityDto) {
		
		if (service.create(jsonCityDto) != null) {
			return new ResponseDto<JsonCityDto>(true);
		}
		
		return new ResponseDto<JsonCityDto>(false);
	}
	
	public void addErrors(List<JsonCityDto> jsonCityDtos,String message,long id)
	{
		for(JsonCityDto cityDto : jsonCityDtos)
		{
			if(cityDto.getId() == id)
			{
				cityDto.setErrorMessage(message);
			}
		}
		
	}
	
	@RequestMapping(value = "/admin/manage/cityedit", method = RequestMethod.GET)
	public String edit(@RequestParam("cityId")long cityId,@RequestParam("cityName") String cityName,@RequestParam("stateId") long stateId, Model model) {
		JsonCityDto jsonCityDto = new JsonCityDto();
		jsonCityDto.setId(cityId);
		jsonCityDto.setCityName(cityName);
		Set<ConstraintViolation<JsonCityDto>> violations = validator.validate(jsonCityDto);
		String violationInString = "";
		for(ConstraintViolation<JsonCityDto> violation : violations)
		{
			violationInString = violationInString + "<br>"+violation.getMessage();
		}
		if(!violations.isEmpty())
		{
			addErrorMessage(violationInString, cityId, model);
			return "admin/manage/viewcities";
		}
		
		if (this.cityDao.findCityInStateByName(cityId, cityName, stateId) == null) {
			if (service.update(jsonCityDto ) != null) {
				model.addAttribute("message","City Successfully Updated");
				return "admin/manage/resultSuccess";
			}else{
				addErrorMessage("Unable to update the city", cityId, model);
				return "admin/manage/viewcities";
			}
		}else{
			addErrorMessage("City already exists in the state", cityId, model);
			return "admin/manage/viewcities";
		}
	}
	
	void addErrorMessage(String errorMessage, long cityId, Model model){
		List<JsonCityDto> jsonCityDtos = service.readAll();
		model.addAttribute("jsonCityDto",jsonCityDtos);
		addErrors(jsonCityDtos, "City already exists in the state", cityId);
	}
 
	@CacheEvict(value = "records", allEntries=true)
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody ResponseDto<JsonCityDto> delete(Long id) {
		System.out.println("Id"+id);
		if (service.delete(id) == null) {
			return new ResponseDto<JsonCityDto>(true);
		}
	
		return new ResponseDto<JsonCityDto>(false);
	}
	
	@Cacheable(value = "records")
	@RequestMapping(value = "/getall", method = RequestMethod.POST)
	public @ResponseBody JqgridTableDto<JsonCityDto> getall() {
 
		List<JsonCityDto> JsonCityDtos = service.readAll();
		if (JsonCityDtos != null) {
			JqgridTableDto<JsonCityDto> response = new JqgridTableDto<JsonCityDto>();
			response.setRows(JsonCityDtos);
			response.setRecords(new Integer(JsonCityDtos.size()).toString());
			response.setTotal(new String("1"));
			response.setPage(new String("1"));
			
			return response;
		}
		
		return new JqgridTableDto<JsonCityDto>();
	}
}