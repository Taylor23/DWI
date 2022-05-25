package pe.edu.universidad.entidades;

public class Paciente {
	// ATTRIBUTES
	private int dni;
	private String nombres;
	private String apellidos;
	private int edad;

	// CONSTRUCTOR
	public Paciente() {
		// TODO Auto-generated constructor stub
	}

	public Paciente(int dni, String nombres, String apellidos, int edad) {
		super();
		this.dni = dni;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.edad = edad;
	}

	// GETTER&SETTER
	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

}
