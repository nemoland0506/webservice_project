<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

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


  <script>
      $(document).ready(function() {
          $('.modal').modal();
      });
  </script>

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
    <li><a href="/user/signout">로그아웃</a></li>
  </ul>




  <main>

    <div class="container">

      <div class="fixed-action-btn">
        <a class="btn-floating red modal-trigger z-depth-2 pulse" data-target="searchPost_modal">
          <i class="material-icons">create</i>온라인 검색
        </a>
      </div>

      <div class="fixed-action-btn">
        <a class="btn-floating red modal-trigger z-depth-2 pulse" data-target="directPost_modal">
          <i class="material-icons">create</i>직접 등록
        </a>
      </div>

      <!-- title & search bar -->
      <div class="section">
        <p class="center-align" style="margin-bottom:-10px;">코리아텍 최고의 가성비 甲</p>

        <div class="row">
          <div class="">
            <h3 class="center-align">도서 등록하기 <i class="fa fa-book" aria-hidden="true"></i></h3>
          </div>
        </div>
      </div>

      <!-- main content & card -->
      <div class="section">

        <div class="row" style="text-align:center;">
          <a class="waves-effect waves-light btn" style="margin-left:10px; margin-right:10px;" id="searchBook_btn">
            <i class="material-icons left">search</i>온라인 검색
          </a>
          <a class="waves-effect waves-light btn" style="margin-left:10px; margin-right:10px;" id="directBook_btn">
            <i class="material-icons left">create</i>직접 등록
          </a>
        </div>

        <script>

            $(document).ready(function() {
                $("#directBook_btn").click(function(e) {
                    e.preventDefault();
                    $("#test").html(function() {
                        return "<div> test </div>";

                    });

                });
            });
        </script>

      </div>

      <div class="divider" id="below_form"></div>

      <div class="bamboo-forest">
        <div class="container">
          <div class="card-panel z-depth-4">

            <div class="row">
              <form class="col s12" enctype="multipart/form-data">
                <div class="row col s6">
                  <div class="row">
                    <div class="input-field col s11">
                      <input id="icon_prefix" type="text" class="validate">
                      <label for="icon_prefix">도서 제목</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s11">
                      <input id="icon_prefix1" type="text" class="validate">
                      <label for="icon_prefix1">저자</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s11">
                      <input id="icon_prefix2" type="text" class="validate">
                      <label for="icon_prefix2">출판사</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s11">
                      <input id="icon_prefix3" type="text" class="validate" placeholder="2017.12.01">
                      <label for="icon_prefix3">출판날짜</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s11">
                      <select>
                        <option value="" disabled selected>관련 전공</option>
                        <option value="1">기계</option>
                        <option value="2">메카</option>
                        <option value="3">전전통</option>
                        <option value="4">컴공</option>
                        <option value="3">디자인·건축</option>
                        <option value="3">에신화</option>
                        <option value="3">산경</option>
                        <option value="3">교양·MSC·HRD</option>
                        <option value="3">기타</option>
                      </select>
                      <label>관련 전공</label>
                    </div>
                  </div>
                </div>

                <div class="col s6">
                  <input id="image_upload" type="file" class="validate" placeholder="이미지">
                  <img src="#" width="100%" height="auto;" style="margin:10px;" id="image"/>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <script>
    $(document).ready(function() {
      $('select').material_select();
    });

    $(document).ready(function() {
        function readURL(input) {
            if(input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#image").attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#image_upload").change(function() {
            alert(this.value);
            readURL(this);
        })
    });
  </script>


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

