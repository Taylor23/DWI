package pe.edu.universidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.universidad.entidades.Cita;

public class DaoCita extends DaoGenerico{
	public List<Cita> consultarCitas() {
		List<Cita> lst = new ArrayList<Cita>();
		String sql = "select codigo, fecha, servicio, dni_paciente, cod_doctor from citas";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				Cita u = new Cita();
				u.setCodigo(rs.getInt(1));
				u.setFecha(rs.getDate(2));
				u.setServicio(rs.getString(3));
				u.setDni_paciente(rs.getInt(4));
				u.setCod_doctor(rs.getInt(5));
				lst.add(u);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
}
