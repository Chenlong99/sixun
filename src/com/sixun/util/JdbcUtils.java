package com.sixun.util;

import java.sql.Connection;

import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JdbcUtils {
	
	private static ComboPooledDataSource dataSource;
	static{
		
		dataSource= new ComboPooledDataSource();
	}
   public static QueryRunner getQueryRunner(){
	   
	   return new QueryRunner(dataSource);
   }
   public static Connection getConnection(){
	   try {
		return dataSource.getConnection();
	} catch (Exception e) {
		e.printStackTrace();
	}
	   return null;
   }
}
