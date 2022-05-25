package pe.edu.universidad.entidades;

import java.sql.Date;

public class Cita {
	// ATTRIBUTES
	private int codigo;
	private Date fecha;
	private String servicio;
	private int dni_paciente;
	private int cod_doctor;

	// CONSTRUCTOR
	public Cita() {
		// TODO Auto-generated constructor stub
	}

	public Cita(int codigo, Date fecha, String servicio, int dni_paciente, int cod_doctor) {
		this.codigo = codigo;
		this.fecha = fecha;
		this.servicio = servicio;
		this.dni_paciente = dni_paciente;
		this.cod_doctor = cod_doctor;
	}

	// GETTER&SETTER
	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getServicio() {
		return servicio;
	}

	public void setServicio(String servicio) {
		this.servicio = servicio;
	}

	public int getDni_paciente() {
		return dni_paciente;
	}

	public void setDni_paciente(int dni_paciente) {
		this.dni_paciente = dni_paciente;
	}

	public int getCod_doctor() {
		return cod_doctor;
	}

	public void setCod_doctor(int cod_doctor) {
		this.cod_doctor = cod_doctor;
	}

}
