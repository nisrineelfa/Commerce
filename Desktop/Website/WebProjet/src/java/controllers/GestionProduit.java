


package controllers;

import entities.Produit;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import service.CategorieService;
import service.MarqueService;
import service.ProduitService;

/**
 *
 * @author admin
 */
@WebServlet(name = "GestionProduit", urlPatterns = {"/GestionProduit"})
public class GestionProduit extends HttpServlet {

 ProduitService ps = new ProduitService();
  CategorieService cs = new CategorieService ();
      MarqueService ms = new MarqueService ();

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
                response.sendRedirect("produit.jsp");

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
      

                
        String nom = request.getParameter("productName");
        double prix = Double.parseDouble(request.getParameter("prix"));
        String description = request.getParameter("description");
          String image = request.getParameter("image");
        String designation = request.getParameter("designation");
        int unite = Integer.parseInt(request.getParameter("unite"));
             String categorie= (request.getParameter("categorie"));
             String marque = (request.getParameter("marque"));
   
       
       ps.create(new Produit(nom, designation, prix, image, unite, description,ms.findByNom(marque),cs.findByNom(categorie)));
       /* Part part=request.getPart("image");
        
  
        ps.create(new Produit(nom, designation, prix, part.getSubmittedFileName(), unite, description,ms.findByNom(marque),cs.findByNom(categorie)));
        String path= request.getRealPath("img")+File.separator+ "products " +part.getSubmittedFileName()  ;
        try {
            
        
        FileOutputStream fos= new FileOutputStream(path);
        InputStream is=  part.getInputStream();
        byte[] data=new byte[is.available()];
        is.read(data);
        fos.write(data);
        fos.close();
        
             } catch (Exception e) {
                e.getStackTrace();
       
        }out.println("produit creer avec succes");  }
        
        */
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