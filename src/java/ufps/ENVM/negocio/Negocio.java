/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ufps.ENVM.negocio;

import com.jniwrapper.win32.db;
import jxl.*;
import jxl.read.biff.BiffException;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author CESAR
 */
public class Negocio {

    
    
    
    public void leerExcel(File archivo,String correoEmisor, String contraseña, String mensaje) throws IOException, BiffException {

        
        System.out.println(correoEmisor+"    ,     "+contraseña+"    ,    "+mensaje);
        
        String subject ="Email de "+correoEmisor;
        Workbook workbook = Workbook.getWorkbook(archivo); //Pasamos el excel que vamos a leer
        Sheet sheet = workbook.getSheet(0); //Seleccionamos la hoja que vamos a leer
        String nombre;

        for (int fila = 1; fila < sheet.getRows(); fila++) { //recorremos las filas
            for (int columna = 0; columna < sheet.getColumns(); columna++) { //recorremos las columnas
                nombre = sheet.getCell(columna, fila).getContents(); //setear la celda leida a nombre
                this.enviarCorreos(correoEmisor, contraseña, nombre, subject, mensaje);
            }
        }
        
        
    }
    
    private void enviarCorreos (String correoEmisor, String contraseña,String correoReceptor ,String Subject,String mensaje){
        
        SendEmail n = new db.SendEmail(correoEmisor, contraseña, correoReceptor, Subject, mensaje);
    }
    
}

