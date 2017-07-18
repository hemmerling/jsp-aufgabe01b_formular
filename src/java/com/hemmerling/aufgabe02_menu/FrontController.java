/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hemmerling.aufgabe02_menu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rhemmerling
 */
@WebServlet(name = "FrontController", urlPatterns = {"/FrontController"})
public class FrontController extends HttpServlet {

    private final String[] FIELD = {"name1", "name2", "email1", "email2",
        "comment1", "comment2"};

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String[] parameterValues;

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FrontController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FrontController at " + request.getContextPath() + "</h1>");

            // I list all given values of names.
            Enumeration paramNames = request.getParameterNames();
            while (paramNames.hasMoreElements()) {
                String paramName = (String) paramNames.nextElement();
                String paramValue = request.getParameter(paramName);
                if (paramValue != null && !paramValue.trim().isEmpty()) {
                    out.print(paramValue + "</BR>");
                }
            }
            out.println("<HR></HR>");

            // I list all given values of names.
            Map<String, String[]> map = request.getParameterMap();
            Set s = map.entrySet();
            Iterator it = s.iterator();
            while (it.hasNext()) {
                Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) it.next();
                String key = entry.getKey();
                String[] value = entry.getValue();
                //out.println("Key is " + key + "<br>");
                if (value.length > 1) {
                    for (int i = 0; i < value.length; i++) {
                        out.println("<li>" + value[i].toString() + "</li>");
                    }
                } else {
                    out.println(value[0].toString() + "<br>");
                }
            }

            out.println("<HR>");

            // Just the values parameters I want & I know by name, are listed
            for (String paramName : FIELD) {
                String paramValue = request.getParameter(paramName);
                if (paramValue != null && !paramValue.trim().isEmpty()) {
                    out.println(paramValue + "</BR>");
                }
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
