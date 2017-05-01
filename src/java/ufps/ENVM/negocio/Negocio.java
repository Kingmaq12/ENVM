/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ufps.ENVM.negocio;

import jxl.*;
import jxl.read.biff.BiffException;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import javafx.scene.control.Cell;

/**
 *
 * @author CESAR
 */
public class Negocio {

    
    
    
    public void leerExcel(File archivo,String correoEmisor, String contraseña, String mensaje) throws IOException, BiffException {

        
        System.out.println(correoEmisor+","+contraseña+","+mensaje);
        
        ArrayList<String> correos = new ArrayList<>();
        
        Workbook workbook = Workbook.getWorkbook(archivo); //Pasamos el excel que vamos a leer
        Sheet sheet = workbook.getSheet(0); //Seleccionamos la hoja que vamos a leer
        String nombre;

        for (int fila = 1; fila < sheet.getRows(); fila++) { //recorremos las filas
            for (int columna = 0; columna < sheet.getColumns(); columna++) { //recorremos las columnas
                nombre = sheet.getCell(columna, fila).getContents(); //setear la celda leida a nombre
                correos.add(nombre);
            }
            
        }
        
        
    }
}
