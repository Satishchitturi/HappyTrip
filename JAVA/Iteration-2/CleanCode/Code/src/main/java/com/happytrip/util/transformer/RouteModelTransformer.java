package com.happytrip.util.transformer;

import com.happytrip.controllers.dto.flight.RouteDto;
import com.happytrip.model.Route;

public final class RouteModelTransformer {

	private RouteModelTransformer(){}
	
	public static RouteDto transform(Route route){
		RouteDto routeDto = new RouteDto();
		routeDto.setFromCity(route.getFromCity());
		routeDto.setRouteId(route.getRouteId());
		routeDto.setToCity(route.getToCity());
		
		return routeDto;
	}
}
