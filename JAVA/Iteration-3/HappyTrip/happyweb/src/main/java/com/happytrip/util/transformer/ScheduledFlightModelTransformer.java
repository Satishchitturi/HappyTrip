package com.happytrip.util.transformer;

import com.happytrip.controllers.dto.flight.ScheduledFlightDto;
import com.happytrip.model.ScheduledFlight;

public final class ScheduledFlightModelTransformer {

	private ScheduledFlightModelTransformer(){}
	
	public static ScheduledFlightDto transform(ScheduledFlight scheduledFlight){
		ScheduledFlightDto scheduledFlightDto = new ScheduledFlightDto();
		scheduledFlightDto.setArrivalTime(scheduledFlight.getArrivalTime());
		scheduledFlightDto.setAvailability(scheduledFlight.getAvailability());
		scheduledFlightDto.setBookings(scheduledFlight.getBookings());
		scheduledFlightDto.setDepartureTime(scheduledFlight.getDepartureTime());
		scheduledFlightDto.setDistanceInKms(scheduledFlight.getDistanceInKms());
		scheduledFlightDto.setDurationInMins(scheduledFlight.getDurationInMins());
		scheduledFlightDto.setFlight(scheduledFlight.getFlight());
		scheduledFlightDto.setFlightNumber(scheduledFlight.getFlightNumber());
		scheduledFlightDto.setFlightRouteCosts(scheduledFlight.getFlightRouteCosts());
		scheduledFlightDto.setFlightRouteId(scheduledFlight.getFlightRouteId());
		scheduledFlightDto.setRoute(scheduledFlight.getRoute());
		scheduledFlightDto.setScheduledFlightDate(scheduledFlight.getScheduledFlightDate());
		return scheduledFlightDto;
	}
}
