package com.model;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Formatter;

public class SHA1Util {
	
	public static void main(String[] args) throws Exception {
		
		File f = new File("C:\\Users\\Administrator\\Desktop\\0001.我乐网-书籍介绍.mp4");
		System.out.println(createSha1(f));
		
		
		
	}
	
	
	
	public static String createSha1(File file) throws Exception  {
	    MessageDigest digest = MessageDigest.getInstance("SHA-1");
	    InputStream fis = new FileInputStream(file);
	    int n = 0;
	    byte[] buffer = new byte[8192];
	    while (n != -1) {
	        n = fis.read(buffer);
	        if (n > 0) {
	            digest.update(buffer, 0, n);
	        }
	    }
	    return byteToHex(digest.digest());
	}
	
	private static String byteToHex(final byte[] hash)
	{
	    Formatter formatter = new Formatter();
	    for (byte b : hash)
	    {
	        formatter.format("%02x", b);
	    }
	    String result = formatter.toString();
	    formatter.close();
	    return result;
	}
}
