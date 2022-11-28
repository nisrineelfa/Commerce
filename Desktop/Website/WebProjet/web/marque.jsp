<%@page import="service.MarqueService"%>
<%@page import="entities.Marque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Marque</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/Produit2.css" rel="stylesheet" type="text/css"/>
        <link href="css/produit.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body>
        <form method="POST" action="MarServlet">
            <fieldset>
                <legend>CREATION D'UNE MARQUE</legend>
                <table border="0">
                 
                        <tr>
                            <td>Nom :</td>
                            <td><input type="text" name="nom" value="" /></td>
                            <td>*</td>
                        </tr>
                        <tr>
                            <td> </td>
                            <td><input type="submit" value="Envoyer" />
                               </td>
                            <td></td>
                        </tr>
                
                </table>

                
            </fieldset>
        </form>
         <fieldset>
                <legend>Liste des marques</legend>
                <table border="1">
                    <thead>
                        <tr>
                             <th>ID</th>
                            <th>Nom</th>
                          
                        </tr>
                    </thead>
                    <tbody>
                        <%
                         MarqueService   ms = new MarqueService();
                            for(Marque m : ms.findAll()){
                        %>
                        <tr>
                            <td><%= m.getId() %></td>
                            <td><%= m.getNom() %></td>
                            
                        </tr>
                        
                        <%}%>
                    </tbody>
                </table>

        </fieldset>
           </body>
           
</html>

                            