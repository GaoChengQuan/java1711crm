package com.situ.crm.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Test;

public class POITest {

	@Test
	public void testWrite03Excel() throws Exception {
		//1、创建工作簿：Workbook。
		HSSFWorkbook workbook = new HSSFWorkbook();
		//2、创建工作表：Sheet。
		HSSFSheet sheet = workbook.createSheet("Hello POI");
		//3、创建行：Row。
		HSSFRow row = sheet.createRow(2);
		//4、创建单元格：Cell。
		HSSFCell cell = row.createCell(2);
		cell.setCellValue("Hello World!");
		
		FileOutputStream outputStream = new FileOutputStream("D:\\poitest\\工作簿1.xls");
		//输出excel到文件
		workbook.write(outputStream);
		workbook.close();
		outputStream.close();
	}
	
	@Test
	public void testWrite07Excel() throws Exception {
		//1、创建工作簿：Workbook。
		XSSFWorkbook workbook = new XSSFWorkbook();
		//2、创建工作表：Sheet。
		XSSFSheet sheet = workbook.createSheet("Hello POI");
		//3、创建行：Row。
		XSSFRow row = sheet.createRow(2);
		//4、创建单元格：Cell。
		XSSFCell cell = row.createCell(2);
		cell.setCellValue("Hello World!");
		
		FileOutputStream outputStream = new FileOutputStream("D:\\poitest\\工作簿1.xlsx");
		//输出excel到文件
		workbook.write(outputStream);
		workbook.close();
		outputStream.close();
	}
	
	@Test
	public void testRead03Excel() throws Exception {
		FileInputStream inputStream = new FileInputStream("D:\\poitest\\工作簿1.xls");
		//1、读取工作簿：Workbook。
		HSSFWorkbook workbook = new HSSFWorkbook(inputStream);
		//2、读取工作表：Sheet。
		HSSFSheet sheet = workbook.getSheetAt(0);
		//3、读取行：Row。
		HSSFRow row = sheet.getRow(2);
		//4、读取单元格：Cell。
		HSSFCell cell = row.getCell(2);
		String value = cell.getStringCellValue();
		System.out.println(value);
		
		workbook.close();
		inputStream.close();
	}   
	
	
	
}
