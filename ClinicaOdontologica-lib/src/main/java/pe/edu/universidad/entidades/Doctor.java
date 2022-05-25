package pe.edu.universidad.entidades;

public class Doctor {
	// ATTRIBUTES
	private int codigo;
	private int dni;
	private String nombres;
	private String apellidos;
	private int edad;
	private String genero;

	// CONSTRUCTOR
	public Doctor() {

	}

	public Doctor(int codigo, int dni, String nombres, String apellidos, int edad, String genero) {
		super();
		this.codigo = codigo;
		this.dni = dni;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.edad = edad;
		this.genero = genero;
	}

	// GETTER&SETTER
	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

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

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}
}
