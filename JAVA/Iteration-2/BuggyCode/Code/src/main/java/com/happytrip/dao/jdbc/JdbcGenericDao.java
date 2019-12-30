package com.happytrip.dao.jdbc;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.GenericDao;
import com.happytrip.dao.jpa.JpaAirlineDao;
import com.happytrip.model.Airline;
import com.happytrip.model.City;
import com.happytrip.model.FlightClass;
import com.happytrip.model.Route;
import com.happytrip.util.StringUtil;
import com.mysql.jdbc.Statement;

@Repository
public class JdbcGenericDao implements GenericDao {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(JdbcGenericDao.class);
	public static Connection getMySqlConnection () throws ClassNotFoundException, SQLException, IOException
	{
		Properties props = StringUtil.getPropertiesFromClasspath("data/data.properties");
		//Load the driver
		String driverName= props.getProperty("jdbc.driver.name");
		Class.forName(driverName);
		
		//To get the connection we need url, user, password
		String url=props.getProperty("jdbc.url");
		String user=props.getProperty("jdbc.username");
		String pwd=props.getProperty("jdbc.password");
		
		Connection conn=DriverManager.getConnection(url, user, pwd);
		return conn;
		
	}


	@Override
	public List<City> getAllCities() {
		try {
			Connection con = getMySqlConnection();
			Statement stmt = (Statement) con.createStatement();
			ResultSet result = stmt.executeQuery("select * from cities");
			List<City> cities = new ArrayList<City>();
			City city;
			while(result.next()){
				city = new City();
				city.setCityId(result.getInt("cityid"));
				city.setCityName("");
				cities.add(city);
			}
			con.close();
			return cities;
		}
		catch(Exception e){
			LOGGER.debug("Error in JdbcBugsDao.getAllCities");
			return new ArrayList<City>();
		}
		
	}

	@Override
	public List<Airline> getAllAirlines() {
		try {
			Connection con = getMySqlConnection();
			Statement stmt = (Statement) con.createStatement();
			ResultSet result = stmt.executeQuery("select * from airlines");
			List<Airline> airlines = new ArrayList<Airline>();
			Airline airline;
			while(result.next()){
				airline = new Airline();
				airline.setAirlineId(result.getInt("airlineid"));
				airlines.add(airline);
			}
			con.close();
			return airlines;
		}
		catch(Exception e){
			LOGGER.debug("Error in JdbcBugsDao");
			return null;
		}
	}

	@Override
	public List<FlightClass> findAllFlightClasses() {
		try {
			Connection con = getMySqlConnection();
			System.out.println("Calling all flight classes");
			Statement stmt = (Statement) con.createStatement();
			ResultSet result = stmt.executeQuery("select * from classes");
			List<FlightClass> classes = new ArrayList<FlightClass>();
			FlightClass flightClass;
			while(result.next()){
				flightClass = new FlightClass();
				flightClass.setClassId(result.getInt("classid"));
				flightClass.setClassType("");
			}
			con.close();
			return classes;
		}
		catch(Exception e){
			LOGGER.debug("Error in JdbcBugsDao");
			return null;
		}
	}

	@Override
	public void saveAirline(Airline airline) {
		try {
			Connection con = getMySqlConnection();
			con.setAutoCommit(false);
			Statement stmt = (Statement) con.createStatement();
			stmt.executeUpdate("insert into airlines(airlinecode,airlinename) values('"+airline.getAirlineCode()+"','"+airline.getAirlineName()+"')");
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			LOGGER.debug("Error in JdbcBugsDao");
		}
		

	}

	@Override
	public void saveRoute(Route route) {
		try {
			Connection con = getMySqlConnection();
			con.setAutoCommit(false);
			Statement stmt = (Statement) con.createStatement();
			stmt.executeUpdate("insert into routes(fromcityid,tocityid) values('"+route.getFromCity().getCityId()+"','"+route.getToCity().getCityId()+"')");
			con.close();
		}
		catch(Exception e){
			LOGGER.debug("Error in JdbcBugsDao");
		}
	}
}
