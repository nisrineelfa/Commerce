<%@page import="entities.Panier"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entities.Produit"%>
<%@page import="service.ProduitService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style/css.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="csss/csss/css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="csss/csss/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="csss/csss/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="csss/csss/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="csss/csss/css/prettyPhoto.css" rel="stylesheet" type="text/css"/>
        <link href="csss/csss/css/price-range.css" rel="stylesheet" type="text/css"/>
        <link href="csss/csss/css/responsive.css" rel="stylesheet" type="text/css"/>
        <link href="csss/csss/css/css1.css" rel="stylesheet" type="text/css"/>
        
        <title>Panier Simple</title>
       
        
    </head>
    <body>
        <fieldset>
            <legend>Liste des produits</legend>
            <form action="AddPanier" method="POST">
                <%!int i = 0;%>
                <%
                    HttpSession sessio = request.getSession();
                    List<Panier> paniers = (List<Panier>) sessio.getAttribute("listpr");
                    if (paniers != null) {
                        i = paniers.size();
                    }
                %>
                <div style="text-align: right;">
                    
                    Pannier :<a href="panier.jsp"> <img src="img\productsParfum.jpg" style="width: 12px; height: 12px;" />  <%= i%></a>
                </div>
                <div>
                    <%
                        ProduitService p = new ProduitService();
                        for (Produit pp : p.findAll()) {
                    %>
                    <figure>
                        <img src=<%="img\\productsParfum\\" + pp.getImage()%>
                        <strong>Nom:&nbsp; <%= pp.getNom()%></strong>&nbsp;&nbsp;<strong>Prix :&nbsp;<%= pp.getPrix()%>&nbspDH</strong><br>    

                        <button><a name="id" href="AddPanier?id=<%= pp.getId()%>" >Ajouter</a></button>
                    </figure>
                    <%}%>
                </div>

            </form>
        </fieldset>
    </body>
</html>