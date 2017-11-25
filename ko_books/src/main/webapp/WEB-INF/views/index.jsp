<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/materialize.min.js"></script>


  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

  <!-- Font-awesome CDN -->
  <script src="https://use.fontawesome.com/f585201c6c.js"></script>


  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>




  <style>
    body {
      display: flex;
      min-height: 100vh;
      flex-direction: column;
    }

    main {
      flex: 1 0 auto;
    }

  </style>

</head>

<body>

  <nav>
    <div class="nav-wrapper container">
      <a href="#!" class="brand-logo"><i class="material-icons">home</i><small>Ko_BOOKs</small></a>
      <ul class="right hide-on-med-and-down">
        <!-- Dropdown Trigger -->
        <li><a class="dropdown-button" href="#!" data-activates="mydropdown"><i class="material-icons">menu</i></a></li>
      </ul>
    </div>
  </nav>

  <ul class="dropdown-content" id="mydropdown">
    <li><a href="#">one</a></li>
    <li><a href="#">two</a></li>
    <li class="divider"></li>
    <li><a href="#">three</a></li>
  </ul>




  <main>

    <div class="container">


      <!-- title & search bar -->
      <div class="section">
        <p class="center-align" style="margin-bottom:-10px;">코리아텍 최고의 가성비 甲</p>

        <div class="row">
          <div class="offset-s2 col s7">
            <h3 class="center-align">코리아텍 책장터 <i class="fa fa-book" aria-hidden="true"></i></h3>
          </div>
          <div class="input-field inline col s3">
            <input id="search" type="text" class="validate">
            <label for="search"><i class="material-icons">search</i></label>
          </div>
        </div>
      </div>
      <div class="divider"></div>

      <!-- sub navbar(major) -->
      <div class="section">
        전체보기 | 산경 | 컴공
      </div>
      <div class="divider"></div>

      <!-- main content & card -->
      <div class="section">

        <div class="row">

          <div class="col s3">
            <div class="card">
              <div class="card-image waves-effect waves-block waves-light">
                <img src="/resources/images/spring.png"/>
              </div>
              <div class="card-content">
                <span class="card-title activator grey-text text-darken-4 flow-text">
                  <small>선형대수학</small>
                  <i class="material-icons right">more_vert</i>
                </span>
                <p>
                  <b><big>50%</big></b>
                  <small>
                    15,000
                    <small>25,000</small>
                  </small>
                </p>
              </div>
              <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                <p>Here is some more information about this product that is only revealed once clicked on.</p>
              </div>
            </div>
          </div>
          <div class="col s3">
            <div class="card">
              <div class="card-image waves-effect waves-block waves-light">
                <img src="/resources/images/spring.png"/>
              </div>
              <div class="card-content">
                <span class="card-title activator grey-text text-darken-4 flow-text">
                  <small>선형대수학</small>
                  <i class="material-icons right">more_vert</i>
                </span>
                <p>
                  <b><big>50%</big></b>
                  <small>
                    15,000
                    <small>25,000</small>
                  </small>
                </p>
              </div>
              <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                <p>Here is some more information about this product that is only revealed once clicked on.</p>
              </div>
            </div>
          </div>
          <div class="col s3">
            <div class="card">
              <div class="card-image waves-effect waves-block waves-light">
                <img src="/resources/images/spring.png"/>
              </div>
              <div class="card-content">
                <span class="card-title activator grey-text text-darken-4 flow-text">
                  <small>선형대수학</small>
                  <i class="material-icons right">more_vert</i>
                </span>
                <p>
                  <b><big>50%</big></b>
                  <small>
                    15,000
                    <small>25,000</small>
                  </small>
                </p>
              </div>
              <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                <p>Here is some more information about this product that is only revealed once clicked on.</p>
              </div>
            </div>
          </div>
          <div class="col s3">
            <div class="card">
              <div class="card-image waves-effect waves-block waves-light">
                <img src="/resources/images/spring.png"/>
              </div>
              <div class="card-content">
                <span class="card-title activator grey-text text-darken-4 flow-text">
                  <small>선형대수학</small>
                  <i class="material-icons right">more_vert</i>
                </span>
                <p>
                  <b><big>50%</big></b>
                  <small>
                    15,000
                    <small>25,000</small>
                  </small>
                </p>
              </div>
              <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                <p>Here is some more information about this product that is only revealed once clicked on.</p>
              </div>
            </div>
          </div>
          <div class="col s3">
            <div class="card">
              <div class="card-image waves-effect waves-block waves-light">
                <img src="/resources/images/spring.png"/>
              </div>
              <div class="card-content">
                <span class="card-title activator grey-text text-darken-4 flow-text">
                  <small>선형대수학</small>
                  <i class="material-icons right">more_vert</i>
                </span>
                <p>
                  <b><big>50%</big></b>
                  <small>
                    15,000
                    <small>25,000</small>
                  </small>
                </p>
              </div>
              <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                <p>Here is some more information about this product that is only revealed once clicked on.</p>
              </div>
            </div>
          </div>
          <div class="col s3">
            <div class="card">
              <div class="card-image waves-effect waves-block waves-light">
                <img src="/resources/images/spring.png"/>
              </div>
              <div class="card-content">
                <span class="card-title activator grey-text text-darken-4 flow-text">
                  <small>선형대수학</small>
                  <i class="material-icons right">more_vert</i>
                </span>
                <p>
                  <b><big>50%</big></b>
                  <small>
                    15,000
                    <small>25,000</small>
                  </small>
                </p>
              </div>
              <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                <p>Here is some more information about this product that is only revealed once clicked on.</p>
              </div>
            </div>
          </div>


        </div>

      </div>

    </div>

  </main>

  <footer class="page-footer">
    <div class="container" style="margin-top:-15px;">
      <p class="valign-wrapper" style="float:left;">© 2014 Copyright &nbsp <b>Nemoland & ghkdtk1492</b></p>
      <a class="grey-text text-lighten-4 right" href="#!">
        <i class="fa fa-github fa-2x" aria-hidden="true" style="margin-top:8px;"></i>
      </a>
    </div>
  </footer>






</body>
</html>

