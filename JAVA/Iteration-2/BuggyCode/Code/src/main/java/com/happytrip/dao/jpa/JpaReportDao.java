package com.happytrip.dao.jpa;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.report.ReportDao;
import com.happytrip.model.reports.AirlineReport;
import com.happytrip.model.reports.BookingReport;
import com.happytrip.model.reports.RouteReport;
import com.happytrip.model.reports.ScheduledFlightReport;
import com.happytrip.model.reports.UserReport;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaReportDao implements ReportDao {

	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}


	@Override
	public void storeUserReport(UserReport usersReport) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(usersReport);
	}

	@Override
	public void storeAirlinesReport(AirlineReport airlineReport) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(airlineReport);
	}

	@Override
	public void storeRouteReport(RouteReport routeReport) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(routeReport);
	}

	@Override
	public void storeScheduledFlighReport(
			ScheduledFlightReport scheduledFlightReport) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(scheduledFlightReport);
	}

	@Override
	public void storeBookingReport(BookingReport bookingReport) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(bookingReport);
	}

	@Override
	public List<UserReport> findAllUserReport() {
		// TODO Auto-generated method stub
		String query = "from UserReport";
		return getHibernateTemplate().find(query);
	}

	@Override
	public List<AirlineReport> findAllAirlineReport() {
		// TODO Auto-generated method stub
		String query = "from AirlineReport";
		return getHibernateTemplate().find(query);
	}

	@Override
	public List<RouteReport> findAllRouteReport() {
		// TODO Auto-generated method stub
		String query = "from RouteReport";
		return getHibernateTemplate().find(query);
	}

	@Override
	public List<ScheduledFlightReport> findAllScheduledFlightReport() {
		// TODO Auto-generated method stub
		String query = "from ScheduledFlightReport";
		return getHibernateTemplate().find(query);
	}

	@Override
	public List<BookingReport> findAllBookingReport() {
		// TODO Auto-generated method stub
		String query = "from BookingReport";
		return getHibernateTemplate().find(query);
	}

}
