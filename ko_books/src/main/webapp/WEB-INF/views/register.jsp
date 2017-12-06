<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="select" uri="http://www.springframework.org/tags/form" %>


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

      $(document).ready(function() {
          $('select').material_select();
      });

      $(document).ready(function() {
          $("#major").material_select();
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

      function load_info() {
          var title = search_title.value;
          var author = search_author.value;
          var publisher = search_publisher.value;
          var pubdate = search_pubdate.value;

          document.getElementsByName('title')[0].value = title;
          document.getElementsByName('author')[0].value = author;
          document.getElementsByName('publisher')[0].value = publisher;
          document.getElementsByName('pubdate')[0].value = pubdate;


      }

  </script>

</head>
<sec:authorize access="!hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
  <meta http-equiv='refresh' content='0; url=/user/signin'>
</sec:authorize>
<sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
  <body>


  <nav>
    <div class="nav-wrapper container">
      <a href="/" class="brand-logo"><i class="material-icons">home</i><small>Ko_BOOKs</small></a>
      <ul class="right hide-on-med-and-down">
        <!-- Dropdown Trigger -->
        <li><a class="dropdown-button" href="#!" data-activates="mydropdown"><i class="material-icons">menu</i></a></li>
      </ul>
    </div>
  </nav>

  <ul class="dropdown-content" id="mydropdown">
    <li><a href="/user/signout">로그아웃</a></li>
  </ul>




  <main>

    <div class="container">


      <div id="searchPost_modal" class="modal" style="z-index: 1005;">
        <div class="modal-content">
          <div class="modal-container">
            <h5 class="flow-text">온라인으로 검색하여 등록하기</h5>
            <br>
            <div class="form-group">

              <form class="form-signin" id="spLoginFrm" name="spLoginFrm" method="post" action="">
                <label for="search_title" class="sr-only">Email address</label>
                <input name="user_id" type="text" id="search_title" class="form-control" placeholder="계정" required="" autocorrect="off" autocapitalize="none" tabindex="1" >

                <label for="search_author" class="sr-only">Email address</label>
                <input name="user_id" type="text" id="search_author" class="form-control" placeholder="계정" required="" autocorrect="off" autocapitalize="none" tabindex="1" >

                <label for="search_publisher" class="sr-only">Email address</label>
                <input name="user_id" type="text" id="search_publisher" class="form-control" placeholder="계정" required="" autocorrect="off" autocapitalize="none" tabindex="1" >

                <label for="search_pubdate" class="sr-only">Email address</label>
                <input name="user_id" type="text" id="search_pubdate" class="form-control" placeholder="계정" required="" autocorrect="off" autocapitalize="none" tabindex="1" >

                <div id="checkboxframe" class="checkbox" style="display: none; text-align: left">
                  <label><input id="checkbox" type="checkbox" value="remember-me" tabindex="3"> 검색</label>
                </div>

                <input type="hidden" name="RelayState" value="/mobileApp/sso/login_post_proc2.jsp">
                <input type="hidden" name="id" value="APP2">
                <input type="hidden" name="targetId" value="APP2">


                <input type="button" id="login_btn" value="로그인" class="btn btn-lg btn-primary btn-block modal-action modal-close" style="background-color: #003471; border-color: #003471; margin-top: 20px" tabindex="4" onclick="load_info()">

              </form>


            </div>
          </div>
        </div>
        <br>
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

        <!--
        <div class="row" style="text-align:center;">
          <a class="waves-effect waves-light btn modal-trigger" style="margin-top:-30px;" id="searchBook_btn" data-target="searchPost_modal">
            <i class="material-icons left">search</i>온라인 검색으로 등록하기
          </a>
        </div>
        -->


        <div class="divider"></div>

        <div class="bamboo-forest" style="margin-top:30px;" id="direct_form">
          <div class="container">
            <div class="card-panel z-depth-4">
              <div class="row" style="margin-top:30px;">



                <!-- <form class="col s12" enctype="multipart/form-data" method="POST" method="book/register"> -->
                <form:form modelAttribute="book" class="simple_form new_book col s12" id="new_book" accept-charset="UTF-8">
                  <c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}"/>
                  <form:input type="hidden" path="userId" value="${user.id}" />

                  <div class="row col s6" style="margin-bottom:-30px;">
                    <div class="row">
                      <div class="input-field col s11">
                        <form:input required="required" class="validate" type="text" id="icon_prefix" name="title" path="title" placeholder="누가 내 치즈를 옮겼을까?" />
                        <label for="icon_prefix">도서 제목</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s11">
                        <form:input required="required" class="validate" type="text" id="icon_prefix1" name="author" path="author" placeholder="홍길동" />
                        <label for="icon_prefix1">저자</label>
                      </div>
                    </div>

                    <div class="row">
                      <div class="input-field col s11">
                        <form:input required="required" class="validate" type="text" id="icon_prefix2" name="publisher" path="publisher" placeholder="코텍출판사" />
                        <label for="icon_prefix2">출판사</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s11">
                        <form:input required="required" class="validate" type="text" id="icon_prefix3" name="pubdate" path="pubdate" placeholder="20xx.xx.xx" />
                        <label for="icon_prefix3">출판날짜</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s11">
                        <form:input required="required" class="validate" type="text" id="icon_prefix4" name="phone" path="phone" placeholder="010-1234-5678" />
                        <label for="icon_prefix4">전화번호 &nbsp&nbsp(연락을 위해 반드시 필요합니다.)</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s11">
                        <form:select path="major">
                          <option value="">-- 관련전공 --</option>
                          <form:options items="${majorOption}"/>
                        </form:select>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s11">
                        <form:input required="required" class="validate" type="text" id="icon_prefix5" name="price" path="price" placeholder="10,000" />
                        <label for="icon_prefix5">희망가격</label>
                      </div>
                    </div>
                  </div>

                  <div class="col s6" style="text-align:center;">
                    <!--
                    <div class="input-field">
                      <input id="image_upload" type="file" class="validate" placeholder="이미지">
                      <img src="#" width="100%" height="auto;" style="margin:10px;" id="image"/>
                    </div>
                    -->
                    <div class="input-field">
                      <button name="button" type="submit" class="btn waves-effect waves-light z-depth-3" style="background-color:#FF7F00;">
                        <i class="material-icons left">done</i>등록하기
                      </button>
                    </div>
                  </div>
                </form:form>
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
</sec:authorize>

</html>