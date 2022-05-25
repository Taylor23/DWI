package pe.edu.universidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.universidad.entidades.Doctor;

public class DaoDoctor extends DaoGenerico {
	public List<Doctor> consultarDoctores(){
		List<Doctor> lst = new ArrayList<Doctor>();
		String sql = "select codigo, dni, nombres, apellidos, edad, genero from doctores";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()) {
				Doctor u = new Doctor();
				u.setCodigo(rs.getInt(1));
				u.setDni(rs.getInt(2));
				u.setNombres(rs.getString(3));
				u.setApellidos(rs.getString(4));
				u.setEdad(rs.getInt(5));
				u.setGenero(rs.getString(6));
				lst.add(u);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
}
