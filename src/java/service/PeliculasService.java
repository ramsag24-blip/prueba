package service;
import data.MockDB;
import model.Pelicula;

import java.util.ArrayList;
import java.util.List;

public class PeliculasService {

    public List<Pelicula> listar() {
        return MockDB.getPeliculas();
    }

    public List<Pelicula> listarPorCategoria(int idCategoria) {
        List<Pelicula> out = new ArrayList<>();
        for (Pelicula p : MockDB.getPeliculas()) {
            if (p.getIdCategoria() == idCategoria) out.add(p);
        }
        return out;
    }
    public void agregar(Pelicula p) {
    MockDB.addPelicula(p);
}

}
