package service;

import data.MockDB;
import model.Usuario;

public class AuthService {

    public Usuario login(String usuario, String password) {
        for (Usuario u : MockDB.getUsuarios()) {
            if (u.getUsuario().equals(usuario) && u.getPassword().equals(password)) {
                return u;
            }
        }
        return null;
    }
}
