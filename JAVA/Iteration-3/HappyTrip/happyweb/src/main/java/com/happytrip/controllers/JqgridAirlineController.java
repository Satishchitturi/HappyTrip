package com.happytrip.controllers;


import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.ValidatorFactory;

import com.happytrip.controllers.dto.JqgridTableDto;
import com.happytrip.controllers.dto.JsonAirlineDto;
import com.happytrip.controllers.dto.JsonCityDto;
import com.happytrip.controllers.dto.ResponseDto;
import com.happytrip.services.AirlineService;
import com.happytrip.services.DuplicateAirlineException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.validation.Validator;


@Controller
public class JqgridAirlineController {
	
	@Autowired
	private volatile AirlineService service;

	ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
	Validator validator = factory.getValidator();
 
	public JsonAirlineDto getAirlineDto()
	{
		return new JsonAirlineDto();
	}
 

	@RequestMapping(value = "/admin/manage/airlineadd", method = RequestMethod.GET)
	public @ResponseBody ResponseDto<JsonAirlineDto> add(JsonAirlineDto jsonAirlineDto) {
		
		if (service.create(jsonAirlineDto) != null) {
			return new ResponseDto<JsonAirlineDto>(true);
		}
		
		return new ResponseDto<JsonAirlineDto>(false);
	}
	
	public void addErrors(List<JsonAirlineDto> jsonAirlineDtos,String message,long id)
	{
		for(JsonAirlineDto airlineDto : jsonAirlineDtos)
		{
			if(airlineDto.getId() == id)
			{
				airlineDto.setErrorMessage(message);
			}
		}
		
	}
	@RequestMapping(value = "/admin/manage/airlineedit", method = RequestMethod.GET)
	public String edit(@RequestParam("airlineId")long airlineId,@RequestParam("airlineName")String  airlineName,@RequestParam("airlineCode") String airlineCode, Model model) {
		
		JsonAirlineDto jsonAirlineDto = new JsonAirlineDto();
		jsonAirlineDto.setAirlineCode(airlineCode);
		jsonAirlineDto.setAirlineName(airlineName);
		jsonAirlineDto.setId(airlineId);
		Set<ConstraintViolation<JsonAirlineDto>> violations = validator.validate(jsonAirlineDto);
		String violationInString = "";
		for(ConstraintViolation<JsonAirlineDto> violation : violations)
		{
			violationInString = violationInString + "<br>"+violation.getMessage();
		}
		
		if(!violations.isEmpty())
		{
			addErrorMessage(violationInString, model, airlineId);
			return "admin/manage/viewairlines";
		}
	
		JsonAirlineDto airline;
		try {
			airline = service.update(jsonAirlineDto );
			if(airline != null) {
				model.addAttribute("message","Airline Successfully Updated");
				return "admin/manage/resultSuccess";
			}else{
				addErrorMessage("Unable to update the airline", model, airlineId);
				return "admin/manage/viewairlines";
			}
		} catch (DuplicateAirlineException e) {
			// TODO Auto-generated catch block
			addErrorMessage(e.getMessage(), model, airlineId);
			return "admin/manage/viewairlines";
		}
 	}
 
	void addErrorMessage(String errorMessage, Model model, long airlineId){
		List<JsonAirlineDto> jsonAirlineDtos = service.readAll();
		model.addAttribute("jsonAirlineDto",jsonAirlineDtos);
		addErrors(jsonAirlineDtos, errorMessage, airlineId);
	}

	@RequestMapping(value = "/admin/manage/airlinedelete", method = RequestMethod.POST)
	public @ResponseBody ResponseDto<JsonAirlineDto> delete(Long id) {
		System.out.println("Id"+id);
		if (service.delete(id) == null) {
			return new ResponseDto<JsonAirlineDto>(true);
		}
	
		return new ResponseDto<JsonAirlineDto>(false);
	}
	
	@Cacheable(value = "records")
	@RequestMapping(value = "/admin/manage/airlinegetall", method = RequestMethod.POST)
	public @ResponseBody JqgridTableDto<JsonAirlineDto> getall() {
 
		List<JsonAirlineDto> jsonAirlineDtos = service.readAll();
		if (jsonAirlineDtos != null) {
			JqgridTableDto<JsonAirlineDto> response = new JqgridTableDto<JsonAirlineDto>();
			response.setRows(jsonAirlineDtos);
			response.setRecords(new Integer(jsonAirlineDtos.size()).toString());
			response.setTotal(new String("1"));
			response.setPage(new String("1"));
			
			return response;
		}
		
		return new JqgridTableDto<JsonAirlineDto>();
	}
}