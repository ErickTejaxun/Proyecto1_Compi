/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto1_compiladores;

/**
 *
 * @author Erick
 */
public class Design {
    public int tipo;
    public int destruir;
    public int creditos;
    public String url;
    public String nombre;

    public Design() {
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public int getTipo() {
        return tipo;
    }

    public int getDestruir() {
        return destruir;
    }

    public int getCreditos() {
        return creditos;
    }

    public String getUrl() {
        return url;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public void setDestruir(int destruir) {
        this.destruir = destruir;
    }

    public void setCreditos(int creditos) {
        this.creditos = creditos;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    
    
    
    
}
