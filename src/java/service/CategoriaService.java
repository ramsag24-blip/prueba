
package service;

import data.MockDB;
import model.Categoria;

import java.util.List;

public class CategoriaService {
    public List<Categoria> listar() {
        return MockDB.getCategorias();
    }
}
