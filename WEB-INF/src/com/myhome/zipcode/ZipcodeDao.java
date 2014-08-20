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

	public List getList(String eupmun) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<ZipcodeDto> list = new ArrayList<ZipcodeDto>();

		String sql = "select * from zipcode where eupmun like '" + eupmun;
		sql = sql + "%' or li like '" + eupmun + "%'";

		System.out.println(sql);

		try {
			conn = db.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

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

		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception ex) {
			}
		}
		return list;
	}
}
