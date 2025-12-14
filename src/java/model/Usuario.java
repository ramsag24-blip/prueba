package model;
public class Usuario {
    private int id;
    private String usuario;
    private String password;
    private String nombres;
    private String email;

    public Usuario() {}

    public Usuario(int id, String usuario, String password, String nombres, String email) {
        this.id = id;
        this.usuario = usuario;
        this.password = password;
        this.nombres = nombres;
        this.email = email;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getUsuario() { return usuario; }
    public void setUsuario(String usuario) { this.usuario = usuario; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getNombres() { return nombres; }
    public void setNombres(String nombres) { this.nombres = nombres; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
}
