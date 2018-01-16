<nav class="navbar navbar-default navbar-fixed-top w-25 h-25" style="background: rgba(204, 204, 204, 0.5);">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collaps e" data-target="#myNavbar">
         <span class="icon-bar"></span>
          <span class="icon-bar"></span>
           <span class="icon-bar"></span>
            </button>
        <a class="navbar-brand text-dark" href="${contextRoot}/home"><img src="resources/images/logo.jpg" width="160px" height="40px"></a>
      </div>
      
      <a class="navbar-brand text-dark" href="page.jsp">  </a>
     
      <div class="collapse navbar-collapse" id="myNavbar">
        <a class="navbar-brand text-dark" href="page.jsp"> </a>
        <ul class="nav navbar-nav navbar-right">
          <a class="navbar-brand text-dark border border-dark" href="page.jsp"></a>
          
          <li id="login">
            <a class="navbar-brand text-dark" href="page.jsp"> </a>
            <a href="#"><strong>Login</strong></a>
          </li>
          
          <li id="contact">
            <a href="${contextRoot}/contact" class="w-100"><strong>Contact</strong></a>
          </li>
          
          <li id="listProducts">
            <a href="${contextRoot}/show/all/products"class="w-100"><strong>Restro</strong></a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>