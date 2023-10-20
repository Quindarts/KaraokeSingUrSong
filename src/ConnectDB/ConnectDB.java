package ConnectDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	public static Connection con = null;
	private static ConnectDB instance = new ConnectDB();

	public static ConnectDB getInstance() {
		return instance;
	}

	public void connect() throws SQLException {
		String url = "jdbc:sqlserver://localhost:1433;databasename=SingUrSong ";
		String user = "sa";
		String password = "230903";
		con = DriverManager.getConnection(url, "sa", "230903");
	}

	public void disconnect() {
		if (con != null)
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	public static Connection getConnection() {
		return con;
	}
}
