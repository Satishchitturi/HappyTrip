package com.happytrip.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public final class StringUtil {

	private StringUtil() {
	}

	public static long generateReference(long seed) {
		Random random = new Random(seed);
		long val = random.nextLong();
		if (val < 0) {
			return val * -1;
		}
		return val;
	}

	public static Properties getPropertiesFromClasspath(String propFileName)
			throws IOException {
		// loading xmlProfileGen.properties from the classpath
		Properties props = new Properties();
		InputStream inputStream = StringUtil.class.getClassLoader()
				.getResourceAsStream(propFileName);

		if (inputStream == null) {
			throw new FileNotFoundException("property file '" + propFileName
					+ "' not found in the classpath");
		}

		props.load(inputStream);

		return props;
	}

	public static StringBuffer getAboutUsPageContent(String fileName)
			throws IOException {
		byte[] byteArray = new byte[200];
		InputStream inputStream = getStream(byteArray, fileName);
		StringBuffer stringBuffer = new StringBuffer();
		int numOfBytesRead = 0;
		while ((numOfBytesRead = inputStream.read(byteArray)) > 0) {
			stringBuffer = stringBuffer.append(String.valueOf(byteArray));
		}
		return stringBuffer;
	}

	private static InputStream getStream(byte[] byteArray, String fileName)
			throws IOException {
		InputStream inputStream = (InputStream) StringUtil.class
				.getClassLoader().getResourceAsStream(fileName);

		return inputStream;

	}

	public static StringBuffer getExternalAdvertisementPageContent(
			String fileName) throws IOException {
		byte[] byteArray = new byte[20];
		InputStream inputStream = getStream(byteArray, fileName);
		StringBuffer stringBuffer = new StringBuffer();
		int numOfBytesRead = 0;
		while ((numOfBytesRead = inputStream.read(byteArray)) > 0) {
			stringBuffer = stringBuffer.append(new String(byteArray));
		}
		return stringBuffer;
	}

	public static long elapsedTime(Date flightDate, String departureTime)
			throws ParseException {

		String departureHour = departureTime.substring(0,2);
		String departureMin = departureTime.substring(2,4);
		
		System.out.println("Departure hour is " + departureHour);
		System.out.println("Departure min is "  + departureMin);
		
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(flightDate.getTime());
		cal.set(Calendar.HOUR_OF_DAY, new Integer(departureHour));
		cal.set(Calendar.MINUTE, new Integer(departureMin));
		
		flightDate = cal.getTime();
		System.out.println("Flight date is " + flightDate);
		
		Date currentDate = new Date(System.currentTimeMillis());
		
		System.out.println("Current date is " + currentDate);
		long diff = flightDate.getTime() - currentDate.getTime();
		
		System.out.println("The time difference is " + TimeUnit.MILLISECONDS.toHours(diff));
		
		return TimeUnit.MILLISECONDS.toHours(diff);

	}

	public static String convertTimeTo24HoursOne(int time){
		String hourOfDay = "";
		if(time<10){
			hourOfDay = "0" + time + "00";
		}else{
			hourOfDay = time + "00";
		}
		return hourOfDay;
	}
}
