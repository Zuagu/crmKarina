/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package callcenter.controller;

import callcenter.model.ModelDataCuentaCame;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zuagu
 */
public class ControllerDataCuentaCame extends HttpServlet {

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Usamos el metodo del get para generar la pantalla del predictivo
        String cuenta = request.getParameter("cuenta");
        String telefono = request.getParameter("telefono");
        String id_usuario = request.getParameter("id_usuario");
        
        System.out.println("cuenta: " + cuenta + " id_usuario: " + id_usuario + " telefono: " + telefono);

        request.setAttribute("telefono", telefono);
        request.setAttribute("id_usuario", id_usuario);
        request.setAttribute("cuenta", cuenta);
//        getServletContext().getRequestDispatcher("/predictivo_oscar.jsp").forward(request, response);
        getServletContext().getRequestDispatcher("/predictivo_came.jsp").forward(request, response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println(action);
        
        if (action.equals("datos_cuenta_came")) {
            String Respuesta = ModelDataCuentaCame.datos_cuenta_came(
                    request.getParameter("cuenta")
            );
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.print(Respuesta);
            writer.flush();
            writer.close();
        }
        else if (action.equals("cuenta_siguiete")) {
            String Respuesta = ModelDataCuentaCame.datos_cuenta_siguiente();
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.print(Respuesta);
            writer.flush();
            writer.close();
        }
        else if (action.equals("datos_cuenta_predictivo_came")) {
            String Respuesta = ModelDataCuentaCame.datos_cuenta_predictivo_came(
                    request.getParameter("id_socio")
            );
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.print(Respuesta);
            writer.flush();
            writer.close();
        }
        else if (action.equals("select_buscar_cuentas")) {
            String Respuesta = ModelDataCuentaCame.select_buscar_cuentas(
                    request.getParameter("busqueda")
            );
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.print(Respuesta);
            writer.flush();
            writer.close();
        }
        else if (action.equals("guardar_gestion")) {
            String Respuesta = ModelDataCuentaCame.guardar_gestion(
                    request.getParameter("datos")
            );
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.print(Respuesta);
            writer.flush();
            writer.close();
        }
        else if (action.equals("select_gestiones_cuenta")) {
            String Respuesta = ModelDataCuentaCame.select_gestiones_cuenta(
                    request.getParameter("cuenta")
            );
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.print(Respuesta);
            writer.flush();
            writer.close();
        }
        else if (action.equals("actualizar_informacion_contacto")) {
            String Respuesta = ModelDataCuentaCame.actualizar_informacion_contacto(
                    request.getParameter("datos")
            );
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.print(Respuesta);
            writer.flush();
            writer.close();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
