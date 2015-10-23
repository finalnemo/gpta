package com.zhu.util;

public class UUID {

	public static String getUUID() {
		java.util.UUID uuid = java.util.UUID.randomUUID();
		String id = uuid.toString();
		id = id.substring(0, 8) + id.substring(9, 13) + id.substring(14, 18)
				+ id.substring(19, 23) + id.substring(24);
		return id;

	}

	public static void main(String[] args) {
		java.util.UUID uuid = java.util.UUID.randomUUID();
		String str = uuid.toString();
		str = str.substring(0, 8) + str.substring(9, 13)
				+ str.substring(14, 18) + str.substring(19, 23)
				+ str.substring(24);
		System.out.println(str);

	}
}
