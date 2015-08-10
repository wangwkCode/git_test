package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtile {

	private static String username;
	private static String password;
	private static String url = "jdbc:mysql://localhost:3306/classnet?useUnicode=true&amp;characterEncoding=UTF-8";
	private static String driver = "com.mysql.jdbc.Driver";

	private JdbcUtile() {
	}

	private static Connection conn;

	public static Connection getConnection() {
		try {
			Class.forName(driver);
			return DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static void copy(String src, String dest) throws IOException {

		File in = new File(src);
		File out = new File(dest);
		FileInputStream fin = new FileInputStream(in);
		FileOutputStream fout = new FileOutputStream(out);
		byte[] buff = new byte[1024];
		int hasRead = 0;
		
		while( (hasRead = fin.read(buff))!=-1){
			fout.write(buff, 0, hasRead);
		}
		fout.flush();
		fin.close();
		fout.close();

	}
	
	public static void main(String[] args) throws IOException {
		copy("C:\\Users\\Administrator\\Desktop\\文件上传.txt", "d:\\1.txt");
	}
	

}
