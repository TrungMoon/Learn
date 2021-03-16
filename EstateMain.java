/*
 *Code nhu mot thang dan` bug nhu mot vi than
 *ke fix bug lam` code, khoc' trong long` mot it'
 *
 *@auth HPPC
 *@date Mar 13, 2021
 */
package lession12;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EstateMain {
	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/estatebasic";

	// Database credentials
	static final String USER = "root";
	static final String PASS = "3dhYMg";

	public static void main(String[] args) {
		String nameSeach = "Building";
		String districtSeach = null;
		String buildingrenttypeSeach = null;
		String renttypeSeach = null;
		String assignmentbuildingSeach = null;
		String userSeach = null;
		Integer floorareaSeach = 500;
		Integer numberofbasementSeach = 2;
		String wardSeach = null;
		String streetSeach = "phan";
		Integer levelSeach = null;
		String directionSeach = null;
		Integer rentareaSeach = 10;
		Integer rentpriceSeah = 20;
		String managernameSeach = null;
		Integer managernamephoneSeach = 10;

		Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to a selected database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			System.out.println("Connected database successfully...");

			// STEP 4: Execute a query
			System.out.println("Creating statement...");
			stmt = conn.createStatement();

			StringBuilder sql = buildSeachBuilding(nameSeach, floorareaSeach, districtSeach,
					buildingrenttypeSeach, renttypeSeach, assignmentbuildingSeach, userSeach,
					numberofbasementSeach, wardSeach, streetSeach, levelSeach, directionSeach,
					rentareaSeach, rentpriceSeah, managernameSeach, managernamephoneSeach);
			ResultSet rs = stmt.executeQuery(sql.toString());
			// STEP 5: Extract data from result set

			while (rs.next()) {
				// Retrieve by column name
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String ward = rs.getString("ward");
				String street = rs.getString("street");
				int floorArea = rs.getInt("floorArea");
				int numberofbasement = rs.getInt("numberofbasement");
				String direction = rs.getString("direction");
				String level = rs.getString("level");
				//int rentprice = rs.getInt("rentprice");
				// String managername = rs.getString("managername");
				// int managernamephone = rs.getInt("managernamephone");

				// Display values
				System.out.print("ID: " + id);
				System.out.print(", Name: " + name);
				System.out.print(", Ward: " + ward);
				System.out.print(", Street: " + street);
				System.out.print(", FloorArea: " + floorArea);
				System.out.print(", Numberofbasement: " + numberofbasement);
				System.out.print(", Direction: " + direction);
				System.out.println(", Level: " + level);
				//System.out.println(", Rentprice: " + rentprice);
				// System.out.print(", Managername: " + managername);
			    //System.out.print(", Managernamephone: " + managernamephone);
			}
			rs.close();
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					conn.close();
			} catch (SQLException se) {
			} // do nothing
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		System.out.println("Goodbye!");
	}

	private static StringBuilder buildSeachBuilding(String name, Integer floorarea, String district,
			String buildingrenttype, String renttype, String assignmentbuilding, String user,
			Integer numberofbasement, String ward, String street, Integer level, String direction,
			Integer rentarea, Integer rentprice, String managername, Integer managernamephone) {
		StringBuilder sql = new StringBuilder(" SELECT * FROM building b");
		if (district != null && district != "") {
			sql.append(" inner join district d on d.id = b.districtid");
		}
		if (buildingrenttype != null) {
			sql.append(" inner join buildingrenttype as bt on bt.buildingid = b.id");
		}
		if (renttype != null) {
			sql.append(" inner join renttype as rt on rt.id = bt.renttypeid");
		}
		if (rentarea != null) {
			sql.append(" inner join rentarea ra on ra.buildingid = b.id");
		}
		if (assignmentbuilding != null) {
			sql.append(" inner join assignmentbuilding as ab on ab.buildingid = b.id");
		}
		if (user != null) {
			sql.append(" inner join user as u on u.id = ab.staffid WHERE 1 = 1");
		}
		if (name != null && name != "") {
			sql.append(" and name like '%" + name + "%'");
		}
		if (ward != null && ward != "") {
			sql.append(" and ward like '%" + ward + "%'");
		}
		if (street != null && street != "") {
			sql.append(" and street like '%" + street + "%'");
		}
		if (floorarea != null) {
			sql.append(" and floorarea = "+ floorarea + "");
		}
		if (numberofbasement != null) {
			sql.append(" and numberofbasement = " +numberofbasement+ "");
		}
		if (direction != null) {
			sql.append(" and direction = " + direction + "");
		}
		if (level != null) {
			sql.append(" and level = " + level + "");
		}
		/*if (rentarea != null) {
			sql.append(" and EXISTS (SELECT * FROM rentarea WHERE ra.buildingid = b.id AND (ra.value between 'input_rentarea_from' and 'input_rentarea_to' )");
		}*/
		if (rentprice != null) {
			sql.append(" and b.rentprice >= 0" + " and b.rentprice <=  " + " and (b.rentprice between 0 and 20)");
		}
		if (renttype != null && renttype != "") {
			sql.append(" and rt.code like '%tang_tret%' or '%noi_that%' or '%nguyen_can%'");
		}
		sql.append(" group by b.id");
		System.out.println(sql);
		return sql;
	}
}

