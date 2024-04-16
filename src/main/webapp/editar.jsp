<%@page import="com.emergentes.Estudiante"%>
<%
    Estudiante reg = (Estudiante) request.getAttribute("miobjest");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO DE SEMINARIOS</title>
        <style>
            h1 {
                text-align: center;
            }

            .contenedor {
                display: flex;
                justify-content: center;
            }

            .rectangulo, .cuadrado {
                border: 1px solid black;
                padding: 20px;
                margin: 10px;
            }

            .conte {
                display: flex;
                justify-content: center;
                align-items: center;
            }

            label {
                display: inline-block;
                width: 145px;
                margin-right: 10px;
            }

        </style>
    </head>
    <body>
        <h1>Registro de Seminarios</h1>

        <div class="contenedor">
            <div class="rectangulo">
                <h2>Datos</h2>
                <form action="MainServlet" method="post">
                    <label>ID</label>
                    <input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly>
                    <br>
                    <label>Fecha</label>
                    <input type="date" name="fecha" value="<%= reg.getFecha()%>">
                    <br>
                    <label>Nombre</label>
                    <input type="text" name="nombre" value="<%= reg.getNombre()%>">
                    <br>
                    <label>Apellidos</label>
                    <input type="text" name="apellidos" value="<%= reg.getApellidos()%>">
                    <br>
                    <label>Turno</label>
                    <input type="radio" name="opcion" value="Mañana">
                    <label>Mañana</label>
                    <input type="radio" name="opcion" value="Tarde">
                    <label>Tarde</label>
                    <input type="radio" name="opcion" value="Noche">
                    <label>Noche</label>
                    <br>
                    </div>
                    <div class="cuadrado">
                        <h2>Seminarios disponibles</h2>
                        <br>
                        <input type="checkbox" name="opciones[]" value="Inteligencia Artificial">
                        <label>Inteligencia Artificial</label>
                        <br>
                        <input type="checkbox" name="opciones[]" value="Machine Learning">
                        <label>Machine Learning</label>
                        <br>
                        <input type="checkbox" name="opciones[]" value="Simulacion con Arena">
                        <label>Simulación con Arena</label>
                        <br>
                        <input type="checkbox" name="opciones[]" value="Robotica Educativa">
                        <label>Robótica Educativa</label>
                        <br>
                    </div>
            </div>

            <br>
            <div class="conte">
                <input type="submit" value="Enviar Registro">
            </div>

        </form>
</body>
</html>