package Model;

import java.sql.Connection;
import java.sql.SQLException;

public interface DbService
{
	Connection getConnection() throws ClassNotFoundException,SQLException;
}
