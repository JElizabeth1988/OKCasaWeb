/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


/**
 *
 * @author chida
 */
public class fecha {

    public fecha() {
    }
    
    public static String obtenerFechaYHoraActual() {
	String formato = "yyyy-MM-dd";
	DateTimeFormatter formateador = DateTimeFormatter.ofPattern(formato);
	LocalDateTime ahora = LocalDateTime.now();
	return formateador.format(ahora);
}
}

