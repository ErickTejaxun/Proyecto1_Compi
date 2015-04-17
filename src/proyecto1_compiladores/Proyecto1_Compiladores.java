/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto1_compiladores;

import java.util.ArrayList;

/**
 *
 * @author Erick Tejaxún 201213050
 */
public class Proyecto1_Compiladores {
    public static ArrayList<Errores> listaLexico=new ArrayList();
    public static ArrayList<Errores> listaSintactico=new ArrayList();
    public static void main(String[] args) {
        Menu nuevo=new Menu();
        nuevo.show(true);
    }
    
}
