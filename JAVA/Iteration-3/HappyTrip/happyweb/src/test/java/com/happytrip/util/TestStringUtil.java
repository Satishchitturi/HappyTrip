package com.happytrip.util;

import static org.junit.Assert.*;

import org.junit.Test;

public class TestStringUtil {

	@Test
	public void testConvertTimeTo24HoursOne_1() {
		assertEquals("0100", StringUtil.convertTimeTo24HoursOne(1));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_2() {
		assertEquals("0200", StringUtil.convertTimeTo24HoursOne(2));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_3() {
		assertEquals("0300", StringUtil.convertTimeTo24HoursOne(3));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_4() {
		assertEquals("0400", StringUtil.convertTimeTo24HoursOne(4));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_5() {
		assertEquals("0500", StringUtil.convertTimeTo24HoursOne(5));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_6() {
		assertEquals("0600", StringUtil.convertTimeTo24HoursOne(6));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_7() {
		assertEquals("0700", StringUtil.convertTimeTo24HoursOne(7));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_8() {
		assertEquals("0800", StringUtil.convertTimeTo24HoursOne(8));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_9() {
		assertEquals("0900", StringUtil.convertTimeTo24HoursOne(9));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_10() {
		assertEquals("1000", StringUtil.convertTimeTo24HoursOne(10));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_11() {
		assertEquals("1100", StringUtil.convertTimeTo24HoursOne(11));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_12() {
		assertEquals("1200", StringUtil.convertTimeTo24HoursOne(12));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_13() {
		assertEquals("1300", StringUtil.convertTimeTo24HoursOne(13));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_14() {
		assertEquals("1400", StringUtil.convertTimeTo24HoursOne(14));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_15() {
		assertEquals("1500", StringUtil.convertTimeTo24HoursOne(15));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_16() {
		assertEquals("1600", StringUtil.convertTimeTo24HoursOne(16));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_17() {
		assertEquals("1700", StringUtil.convertTimeTo24HoursOne(17));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_18() {
		assertEquals("1800", StringUtil.convertTimeTo24HoursOne(18));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_19() {
		assertEquals("1900", StringUtil.convertTimeTo24HoursOne(19));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_20() {
		assertEquals("2000", StringUtil.convertTimeTo24HoursOne(20));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_21() {
		assertEquals("2100", StringUtil.convertTimeTo24HoursOne(21));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_22() {
		assertEquals("2200", StringUtil.convertTimeTo24HoursOne(22));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_23() {
		assertEquals("2300", StringUtil.convertTimeTo24HoursOne(23));
	}
	
	@Test
	public void testConvertTimeTo24HoursOne_00() {
		assertEquals("0000", StringUtil.convertTimeTo24HoursOne(0));
	}
}
