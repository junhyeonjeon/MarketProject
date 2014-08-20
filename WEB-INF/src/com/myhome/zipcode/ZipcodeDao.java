package com.myhome.zipcode;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.myhome.common.DBConnect;

public class ZipcodeDao {

	DBConnect db = new DBConnect();

	public List getList(String eupmun) throws SQLException {

		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		String sql = "select * from zipcode where eupmun like '" + eupmun;
		sql = sql + "%' or li like '" + eupmun + "%'";
		ResultSet rs;

		// 디버그
		System.out.println(sql);

		rs = stmt.executeQuery(sql);

		ArrayList<ZipcodeDto> list = new ArrayList<ZipcodeDto>();

		while (rs.next()) {
			ZipcodeDto dto = new ZipcodeDto();
			dto.setZipcode(rs.getString("ZIPCODE"));
			dto.setAddress(rs.getString("ADDRESS"));

			list.add(dto);
		}

		for (int i = 0; i < list.size(); i++) {
			ZipcodeDto dto = list.get(i);
			System.out.println(dto.getAddress());
		}

		rs.close();
		stmt.close();
		conn.close();

		return list;
	}
}
