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
public class ListaVariables {
    String nombre;
    String tipo;
    String valorCadena;
    
    public ListaVariables(){
         valorCadena="";
      
    }

    public String getNombre() {
        return nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public String getValorCadena() {
        return valorCadena;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setValorCadena(String valorCadena) {
        this.valorCadena = valorCadena;
    }
    
}
