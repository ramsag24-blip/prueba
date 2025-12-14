package model;

public class Pelicula {
    private int id;
    private String titulo;
    private String descripcion;
    private int anio;
    private int duracionMin;
    private int idCategoria;

    public Pelicula() {}

    public Pelicula(int id, String titulo, String descripcion, int anio, int duracionMin, int idCategoria) {
        this.id = id;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.anio = anio;
        this.duracionMin = duracionMin;
        this.idCategoria = idCategoria;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitulo() { return titulo; }
    public void setTitulo(String titulo) { this.titulo = titulo; }

    public String getDescripcion() { return descripcion; }
    public void setDescripcion(String descripcion) { this.descripcion = descripcion; }

    public int getAnio() { return anio; }
    public void setAnio(int anio) { this.anio = anio; }

    public int getDuracionMin() { return duracionMin; }
    public void setDuracionMin(int duracionMin) { this.duracionMin = duracionMin; }

    public int getIdCategoria() { return idCategoria; }
    public void setIdCategoria(int idCategoria) { this.idCategoria = idCategoria; }
}
