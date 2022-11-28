<%-- 
    Document   : ADMIN
    Created on : 26 nov. 2022, 17:53:11
    Author     : NISRINE EL
--%>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
      crossorigin="anonymous"
    />
    <link href="css/ADMIN.css" rel="stylesheet" type="text/css"/>
    <title>My plateform</title>
  </head>
  <body id="body">
    <div class="container">
      <nav class="navbar">
        <div class="nav_icon" onclick="toggleSidebar()">
          <i class="fa fa-bars" aria-hidden="true"></i>
        </div>
        <div class="navbar__left">
          <a href="#">Home</a>
          <a href="#">About</a>
          <a class="active_link" href="#">Admin</a>
        </div>
        <div class="navbar__right">
          <a href="#">
            <i class="fa fa-search" aria-hidden="true"></i>
          </a>
          <a href="#">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
          </a>
          <a href="#">
              <a href="Html-Css-Grid-Admin-Dashboard-master/Html-Css-Grid-Admin-Dashboard-master/assets/avatar.svg"></a>
            <!-- <i class="fa fa-user-circle-o" aria-hidden="true"></i> -->
          </a>
        </div>
      </nav>

      <main>
        <div class="main__container">
          <!-- MAIN TITLE STARTS HERE -->

          <div class="main__title">
              <a href="Html-Css-Grid-Admin-Dashboard-master/Html-Css-Grid-Admin-Dashboard-master/assets/hello.svg"></a>
            <div class="main__greeting">
              <h1>My Shop</h1>
             
            </div>
          </div>

          <!-- MAIN TITLE ENDS HERE -->

          <!-- MAIN CARDS STARTS HERE -->
          <div class="main__cards">
            <div class="card">
            <i class="fa fa-product-hunt fa-2x" aria-hidden="true"></i>
              <div class="card_inner">
                <p class="text-primary-p">Number of Products</p>
                <span class="font-bold text-title">5789</span>
              </div>
            </div>

            <div class="card">
             <i class="fa fa-first-order fa-2x " aria-hidden="true"></i>
              <div class="card_inner">
                <p class="text-primary-p">New Orders</p>
                <span class="font-bold text-title">2467</span>
              </div>
            </div>

            <div class="card">
              <i class="fa fa-eye fa-2x" aria-hidden="true"></i>
              <div class="card_inner">
                <p class="text-primary-p">Visitors</p>
                <span class="font-bold text-title">340</span>
              </div>
            </div>

            <div class="card">
              <i
                class="fa fa-thumbs-up fa-2x text-green"
                aria-hidden="true"
              ></i>
              <div class="card_inner">
                <p class="text-primary-p">Total Likes</p>
                <span class="font-bold text-title">11645$</span>
              </div>
            </div>
          </div>
          <!-- MAIN CARDS ENDS HERE -->

          <!-- CHARTS STARTS HERE -->
          <div class="charts">
            <div class="charts__left">
              <div class="charts__left__title">
                <div>
                  <h1>Daily Reports</h1>
              
                </div>
                <i class="fa fa-usd" aria-hidden="true"></i>
              </div>
              <div id="apex1"></div>
            </div>

            <div class="charts__right">
              <div class="charts__right__title">
                <div>
                  <h1>Stats Reports</h1>
                  <p>Morocco</p>
                </div>
                <i class="fa fa-usd" aria-hidden="true"></i>
              </div>

              <div class="charts__right__cards">
                <div class="card1">
                  <h1>Income</h1>
                  <p>$75,300</p>
                </div>

                <div class="card2">
                  <h1>Reviews</h1>
                  <p>200</p>
                </div>

                <div class="card3">
                  <h1>Users</h1>
                  <p>3900</p>
                </div>

                <div class="card4">
                  <h1>Requests</h1>
                  <p>1881</p>
                </div>
              </div>
            </div>
          </div>
          <!-- CHARTS ENDS HERE -->
        </div>
      </main>

      <div id="sidebar">
        <div class="sidebar__title">
          <div class="sidebar__img">
              <img src="Html-Css-Grid-Admin-Dashboard-master/Html-Css-Grid-Admin-Dashboard-master/assets/logo.png" alt=""/>
            <h1>My world</h1>
          </div>
          <i
            onclick="closeSidebar()"
            class="fa fa-times"
            id="sidebarIcon"
            aria-hidden="true"
          ></i>
        </div>

        <div class="sidebar__menu">
          <div class="sidebar__link active_menu_link">
            <i class="fa fa-home"></i>
            <a href="#">Dashboard</a>
          </div>
          <h2>Admin</h2>
          <div class="sidebar__link">
            <i class="fa fa-user-secret" aria-hidden="true"></i>
            <a href="#">Admin Management</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-product-hunt " aria-hidden="true"></i>
            <a href="produit.jsp">Products</a>
          
          </div>
          <div class="sidebar__link">
         <i class="fa fa-adjust" aria-hidden="true"></i>
            <a href="cat.jsp">Categories</a>
            
          </div>
          <div class="sidebar__link">
            <i class="fa fa-archive"></i>
            <a href="marque.jsp">Marks</a>
          
          </div>
          <div class="sidebar__link">
           <i class="fa fa-minus-square-o" aria-hidden="true"></i>
            <a href="#">Commandes</a>
          </div>
          <h2>LEAVE</h2>
          <div class="sidebar__link">
            <i class="fa fa-question"></i>
            <a href="#">Requests</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-sign-out"></i>
            <a href="#">Leave Policy</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-calendar-check-o"></i>
            <a href="#">Special Days</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-files-o"></i>
            <a href="#">Apply for leave</a>
          </div>
          <h2>Commande</h2>
          <div class="sidebar__link">
            <i class="fa fa-money"></i>
            <a href="#">Payment</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-briefcase"></i>
            <a href="#">Commandes</a>
          </div>
          <div class="sidebar__logout">
            <i class="fa fa-power-off"></i>
            <a href="signup-loginAdm.jsp">Log out</a>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="script.js"></script>
  </body>
</html>


	
