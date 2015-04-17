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
public class Figura {
    public String nombre;
    public int vida;
    public String url;
    public int tipo;
    public String descripcion;
    public int destruccion;
    public Figura(){
    
    }

    public void setDestruccion(int destruccion) {
        this.destruccion = destruccion;
    }

    public int getDestruccion() {
        return destruccion;
    }

    public String getNombre() {
        return nombre;
    }

    public int getVida() {
        return vida;
    }

    public String getUrl() {
        return url;
    }

    public int getTipo() {
        return tipo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setVida(int vida) {
        this.vida = vida;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
