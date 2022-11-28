
package controllers;


import entities.Panier;
import entities.Produit;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.ProduitService;

/**
 *
 * @author admin
 */
@WebServlet(name = "AddPanier", urlPatterns = {"/AddPanier"})
public class AddPanier extends HttpServlet {
  List<Panier> paniers = new ArrayList<>();

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
         int id =Integer.parseInt( request.getParameter("id"));
       ProduitService sp = new ProduitService();
        Produit p = sp.findById(id);
        HttpSession session = request.getSession();
        if (p != null) {
            int etat = 0;
            if (session.getAttribute("listpr") != null) {
                paniers = (List<Panier>) session.getAttribute("listpr");
                for (Panier p1 : paniers) {
                    if (p1.getProduit().getId()==(id)) {
                        p1.setQuantite(p1.getQuantite() + 1);
                        etat = 1;
                    }
                }
            }
            if (etat == 0) {
                paniers.add(new Panier(1, p));
                     session.setAttribute("listpr", paniers);
            }

        }

        response.sendRedirect("catalogue.jsp");

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