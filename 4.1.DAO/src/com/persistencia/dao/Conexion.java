package com.persistencia.dao;

import java.sql.*;

public class Conexion {
	public static Connection conectar() throws Exception{
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;"+
						"databaseName=BDdiarsproyecto2", "sa", "123");
		} catch (Exception e) {
			throw e;
		}
		return connection;
	}
}
