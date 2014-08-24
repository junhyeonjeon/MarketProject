package com.myhome.univ;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.myhome.common.DBConnect;

public class univDao {

	DBConnect db = new DBConnect();

	public List getList(String first, String last) throws SQLException {
		
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		String sql = "select *";
		sql = sql + " from univ";
		sql = sql + " where univname>='" + first + "'";
		if (!first.equals("하")) {
			sql = sql + " and univname<='" + last + "'";
		}
		
		ResultSet rs;

		ArrayList<univDto> list = new ArrayList<univDto>();

		rs = stmt.executeQuery(sql);
		while (rs.next()) {
			univDto temp = new univDto();
			temp.setUnivname(rs.getString("univname"));

			list.add(temp);
		}

		rs.close();
		stmt.close();
		conn.close();

		return list;
	}
}
