package com.emergentes;

/**
 *
 * @author KEVIN CANAVIRI
 */
public class Estudiante {

    private int id;
    private String fecha;
    private String nombre;
    private String apellidos;
    private String turno;
    private String seminarios;

    public Estudiante() {
        this.id = 0;
        this.fecha = null;
        this.nombre = "";
        this.apellidos = "";
        this.turno = "";
        this.seminarios = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public String getSeminarios() {
        return seminarios;
    }

    public void setSeminarios(String seminarios) {
        this.seminarios = seminarios;
    }

}
