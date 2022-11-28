<%@page import="entities.Produit"%>
<%@page import="service.ProduitService"%>
<%@page import="entities.Categorie"%>
<%@page import="service.CategorieService"%>
<%@page import="entities.Marque"%>
<%@page import="service.MarqueService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Produit</title>
    
    <title>Product</title>
    <link href="css/produit.css" rel="stylesheet" type="text/css"/>
    <link href="css/Produit2.css" rel="stylesheet" type="text/css"/>
    <body>
    <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <h1 class="card-header">Ajouter un produit</h1>
                                    <div class="card-body">
                                        <form method="post" action="GestionProduit">
                                            <div id="SuccessMessage"></div>

                                            <div class="wrapper">

                                                <div class="inputs">

                                                    <!-- Product name -->
                                                    <div class="inputField">
                                                        <label for="productName">Nom :</label><span class="required">           *</span>
                                                        <input name="productName" type="text" id="productName" name="name" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="prix">Prix (DHs) :</label><span class="required">           *</span>
                                                        <input name="prix" type="text" id="prix" name="prix" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="description">Description :</label><span class="required">           *</span>
                                                        <input name="description" type="text"  id="description" name="description" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="designation">Désignation :</label><span class="required">           *</span>
                                                        <input name="designation" type="text" id="designation" name="designation" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="unite">Quantité :</label><span class="required">           *</span>
                                                        <input name="unite" type="text" id="unite" name="unite" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="image">Select picture of product</label>
                                                        <input type="file" id="image" name="image" required/>
                                                    </div>
                                                    <div class="inputField">
                                                        <label>Marque :</label>
                                                        <select name="marque">
                                                            <%
                                                             MarqueService ms = new MarqueService();
                                                             for (Marque m : ms.findAll()) {
                                                         %>
                                                         <option><%= m.getNom()%></option>
                                                         <%}%> 
                                                    
                                                     </select>
                                                                                                             </div>

                                                     <div class="inputField">
                                                     <label>Categorie :</label>
                                                     <select name="categorie">
                                                         <%
                                                             CategorieService cs = new CategorieService();
                                                             for (Categorie c : cs.findAll()) {
                                                         %>
                                                         <option><%= c.getNom()%></option>
                                                         <%}%>
                                                     </select>
                                                     </div>


                                                  
                                                 
                                                <div class="btnForm">
                                                    <input class="btn btn-space btn-primary" type="submit" value="Save">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                                      <fieldset>
                <legend>Liste des Produits</legend>
                <table border="1">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nom</th>
                            <th>Prix</th>
                            <th>Description</th>
                            <th>Designation</th>
                            <th>Quantité</th>
                            <th>Image</th>
                            <th>Marque</th>
                            <th>Catégorie</th>
                            <th>Supprimer</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ProduitService ps = new ProduitService();
                            for (Produit p : ps.findAll()) {
                        %>
                        <tr>
                            <td><%= p.getId()%></td>
                            <td><%= p.getNom()%></td>
                             <td> <%= p.getPrix()%></td>
                            <td><%= p.getDescription()%></td>
                            <td> <%= p.getDesignation()%></td>
                            <td> <%= p.getUnite()%></td>
                            <td> <%= p.getImage()%></td>
                            <td> <%= p.getMarque()%></td>
                            <td> <%= p.getCategorie()%></td>
                            
                                    
                            <td><a href="./DeleteProduit?id=<%= p.getId() %>"> Supprimer</td>
                        </tr>
                        
                        <%}%>
                    </tbody>
                </table>

        </fieldset>
          
      

    </body>

</html>