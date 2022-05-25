package pe.edu.universidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.universidad.entidades.Paciente;

public class DaoPaciente extends DaoGenerico{
	public List<Paciente> consultarPacientes(){
		List<Paciente> lst = new ArrayList<Paciente>();
		String sql = "select dni, nombres, apellidos, edad from pacientes";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()) {
				Paciente u = new Paciente();
				u.setDni(rs.getInt(1));
				u.setNombres(rs.getString(2));
				u.setApellidos(rs.getString(3));
				u.setEdad(rs.getInt(4));
				lst.add(u);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
}
