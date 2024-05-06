package com.practicaservlest.servlest;

import com.practicaservlest.logica.Usuario;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Usuarios", urlPatterns = {"/Usuarios"})
public class Usuarios extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Usuario> listaUsuarios = new ArrayList<>();
        listaUsuarios.add(new Usuario("2","Edwin Ramirez","correo@gmail.com","11111"));
        listaUsuarios.add(new Usuario("3","Stiven Buitrago","correo@gmail.com","22222"));
        HttpSession misesion = request.getSession();
        misesion.setAttribute("ListaUsuarios", listaUsuarios);
        response.sendRedirect("mostrarUsuarios.jsp");
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");
        
        System.out.println("id: "+ id);
        System.out.println("nombre: "+ nombre);
        System.out.println("correo: "+ correo);
        System.out.println("contraseña: "+ contraseña);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
