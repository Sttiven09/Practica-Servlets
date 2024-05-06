
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <section>
        <h1>INGRESAR USUARIOS</h1>
        <form action="Usuarios" method="POST">
            <p> <label>id: </label> <input type="text" name="id"> </p>
            <p> <label>Nombre: </label> <input type="text" name="nombre"> </p>
            <p> <label>Correo Electronico: </label> <input type="text" name="correo"> </p>
            <p> <label>Contraseña: </label> <input type="password" name="contraseña"> </p>
            <button type="submit"/>Guardar
        </form>
    </section>
        <br/>
    <section>    
        <h1>Listar Usuarios<h1/>
            <p>Pulsa el boton para ver los usuarios<p/>
            <form action="Usuarios" method="GET">
                <button type="submit" /> Mostrar usuarios
            <form/>
    </section>
</html>

