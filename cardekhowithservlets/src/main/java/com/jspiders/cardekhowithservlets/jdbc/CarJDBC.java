package com.jspiders.cardekhowithservlets.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jspiders.cardekhowithservlets.object.Car;
import com.mysql.cj.jdbc.Driver;

public class CarJDBC {
	private static Driver driver;
	private static Connection connection;
	private static PreparedStatement preparedStatement;
	private static ResultSet resultSet;
	private static String query;

	private static void openConnection() throws SQLException {
		driver = new com.mysql.cj.jdbc.Driver();
		DriverManager.registerDriver(driver);
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/weja4", "root", "ROOT");
	}

	private static void closeConnection() throws SQLException {
		if (resultSet != null) {
			resultSet.close();
		}
		if (preparedStatement != null) {
			preparedStatement.close();
		}
		if (connection != null) {
			connection.close();
		}
		DriverManager.deregisterDriver(driver);
	}

	public static int addCar(int id, String name, String brand, double price) {
		int res = 0;
		try {
			openConnection();
			query = "INSERT INTO car VALUES(?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, brand);
			preparedStatement.setDouble(4, price);
			res = preparedStatement.executeUpdate();
			System.out.println(res + " row(s) affected");
			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;

	}

	public static List<Car> searchAllCars() {
		List<Car> cars = new ArrayList<>();
		try {
			openConnection();
			query = "SELECT * FROM car";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Car car = new Car();
				car.setId(resultSet.getInt(1));
				car.setName(resultSet.getString(2));
				car.setBrand(resultSet.getString(3));
				car.setPrice(resultSet.getDouble(4));
				cars.add(car);
			}
			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cars;

	}

	public static Car searchCarById(int id) {
		Car car=null;
		try {
			openConnection();
			query="SELECT * FROM car WHERE id=?";
			preparedStatement=connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			resultSet=preparedStatement.executeQuery();
			if(resultSet.next())
			{
				 car=new Car();
				car.setId(resultSet.getInt("id"));
				car.setName(resultSet.getString("name"));
				car.setBrand(resultSet.getString("brand"));
				car.setPrice(resultSet.getDouble("price"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			closeConnection();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return car;
	}

	public static boolean updateCarDetails(int carId, String newName, String newBrand, long newPrice) {
		boolean success = false;

        try {
            openConnection();
            
             query = "UPDATE car SET name = ?, brand = ?, price = ? WHERE id = ?";
             preparedStatement=connection.prepareStatement(query);
             preparedStatement.setString(1, newName);
             preparedStatement.setString(2, newBrand);
             preparedStatement.setDouble(3, newPrice);
             preparedStatement.setInt(4, carId);
          

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle any SQL exceptions here
        } 
        
        try {
			closeConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return success;
	}

	public static boolean removeCar(int carId) {
		boolean sucess=false;
		try {
			openConnection();
			query="DELETE FROM car WHERE id=?";
			preparedStatement=connection.prepareStatement(query);
			preparedStatement.setInt(1, carId);
			int rowsAffected= preparedStatement.executeUpdate();
			if(rowsAffected >0)
			{
				sucess=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				closeConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return sucess;
	}

	public static List<Car> searchCarByName(String name) {
		List< Car> cars=new ArrayList<Car>();
	        try {
	           openConnection();
	            query = "SELECT * FROM car WHERE name=?";
	            preparedStatement = connection.prepareStatement(query);
	            preparedStatement.setString(1, name);
	            resultSet = preparedStatement.executeQuery();
	            while (resultSet.next()) {
	                Car car = new Car();
	                car.setId(resultSet.getInt("id"));
	                car.setName(resultSet.getString("name"));
	                car.setBrand(resultSet.getString("brand"));
	                car.setPrice(resultSet.getDouble("price"));
	                cars.add(car);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                closeConnection();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        return cars;
	    }
		
	}
	
	


