<%-- 
    Document   : mescommandes
    Created on : 28 nov. 2022, 17:43:01
    Author     : NISRINE EL
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Création d'une commande</title>
        <link href="csss/csss/commande.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <c:import url="/inc/menu.jsp" />
    <div>
        <form method="get" action="<c:url value="/creationCommande"/>">
              <fieldset>
                <legend>Informations client</legend>
                <label for="nomClient">Nom <span
                        class="requis">*</span></label>
                <input type="text" id="nomClient"
                       name="nomClient" value="" size="30" maxlength="30" />
                <br />
                <label for="prenomClient">Prenom </label>
                <input type="text" id="prenomClient"
                       name="prenomClient" value="" size="30" maxlength="30" />
                <br />
                <label for="adresseClient">Adresse de
                    livraison <span class="requis">*</span></label>
                <input type="text" id="adresseClient"
                       name="adresseClient" value="" size="30" maxlength="60" />
                <br />
                <label for="telephoneClient">Numéro de
                    téléphone <span class="requis">*</span></label>
                <input type="text" id="telephoneClient"
                       name="telephoneClient" value="" size="30" maxlength="30" />
                <br />
                <label for="emailClient">Adresse email</label>
                <input type="email" id="emailClient"
                       name="emailClient" value="" size="30" maxlength="60" />
                <br />
            </fieldset>
            <fieldset>
                <legend>Informations commande</legend>
                <label for="dateCommande">Date <span
                        class="requis">*</span></label>
                <input type="text" id="dateCommande"
                       name="dateCommande" value="" size="30" maxlength="30" disabled />
                <br />
                <label for="montantCommande">Montant <span
                        class="requis">*</span></label>
                <input type="text" id="montantCommande"
                       name="montantCommande" value="" size="30" maxlength="30" />
                <br />
                
            </fieldset>
            <input type="submit" value="Valider" />
            <input type="reset" value="Remettre à zéro" /> <br
                />
        </form>
    </div>
</body>
</html>
