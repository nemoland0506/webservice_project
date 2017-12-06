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

      <div class="fixed-action-btn">
        <a class="btn-floating red modal-trigger z-depth-2 pulse" href="/book/register">
          <i class="material-icons">create</i>
        </a>
      </div>

      <!-- title & search bar -->
      <div class="section">
        <p class="center-align" style="margin-bottom:-10px;">코리아텍 최고의 가성비 甲</p>

        <div class="row">
          <div class="offset-s2 col s7">
            <h3 class="center-align">코리아텍 책장터 <i class="fa fa-book" aria-hidden="true"></i></h3>
          </div>
          <div class="input-field inline col s3">
            <input id="keyword" type="text" class="validate">
            <label for="keyword"><i class="material-icons">search</i> 도서제목 검색</label>
          </div>
          <script>
            $(document).ready(function() {
              $("#keyword").keyup(function() {
                var k = $(this).val();
                $("#user-table > tbody > tr").hide();
                var temp = $("#user-table > tbody > tr > td:nth-child(5n+2):contains('" + k + "')");

                $(temp).parent().show();
              });
            });
          </script>


        </div>
      </div>
      <div class="divider"></div>

      <div class="section">

        <style>
          #user-table { margin-top:50px; }
          #user-table > thead > tr { background-color: #4db6ac; color:#fff; }
          #user-table > thead > tr > th { padding: 8px; width: 150px; text-align:center;}
          #user-table > tbody > tr > td { border-bottom: 1px solid gray; padding:8px; text-align:center; }
        </style>

        <script>
          $(document).ready(function() {
              $("#keyword").keyup(function() {
                  var k = $(this).val();
                  $("#user-table > tbody > tr").hide();
                  var temp = $("#user-table > tbody > tr > td:nth-child(5n+2):contains('" + k + "')");

                  $(temp).parent().show();
              })
          })
        </script>

        <table id="user-table">
          <thead>
          <tr>
            <th style="width: 50px;">No</th>
            <th style="width: 350px;">도서제목</th>
            <th>저자</th>
            <th>출판사</th>
            <th>출판일</th>
            <th>관련전공</th>
            <th>판매가격</th>
            <th></th>
          </tr>
          </thead>

          <c:forEach var="b" items="${books}">
          <tbody>
            <tr>
              <td>${b.id}</td>
              <td>${b.title}</td>
              <td>${b.author}</td>
              <td>${b.publisher}</td>
              <td>${b.pubdate}</td>
              <td>${b.major}</td>
              <td>${b.price}</td>
              <td>
                <div id="btn_${b.id}" style="float:left;">
                  <!--처음 보여지는 버튼-->
                  <button id="btn1" class="animation_test" style="background-color: #FF7F00; border:none; color:white; display:inline-block; border-radius:8px; padding:10px;">판매자</button>
                  <!--다음 보여지는 버튼-->
                  <button id="btn2" class="animation_test hide" style="background-color: #FF7F00; border:none; color:white; display:inline-block; border-radius:8px; padding:10px;"><small>${b.phone}</small></button>
                  <!--Hide Checkbox-->
                  <input type="checkbox" class="hide"/>
                </div>

                <script>

                    (function ($) {
                        $.fn.simpleToggleBtn = function () {

                            var btns = $(this).find("button"), // 버튼 그룹 내 버튼들;
                                checkBox = $("input:checkbox");

                            btns.on("click", function () { // 버튼들 중 클릭한 버튼에 함수;
                                $(this).addClass("hide");
                                $(this).siblings("button").removeClass("hide");
                                // 첫번째 버튼 기준으로 input 요소 체크!
                                $(this).first().hasClass("hide") ? checkBox.attr("checked",true) : checkBox.attr("checked",false);
                            });
                        }
                    }(jQuery));

                    // 실행
                    $("#btn_${b.id}").simpleToggleBtn();


                </script>

                <sec:authorize access="hasRole('ROLE_ADMIN')">
                  <a href="/book/delete?id=${b.id}"> <i class="fa fa-trash" aria-hidden="true"></i></a>
                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_USER')">

                  <c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}"/>
                  <c:set var="user_id" value="${user.id}"/>
                  <c:set var="userId" value="${b.userId}"/>

                  <c:if test="${user_id==userId}">
                    <a href="/book/delete?id=${b.id}"> <i class="fa fa-trash" aria-hidden="true"></i></a>
                  </c:if>

                </sec:authorize>




              </td>
            </tr>
          </tbody>
          </c:forEach>
        </table>



      </div>
    </div>

    <!-- main content & card -->
    <!--
    <div class="section">

          <div class="row">
          <c:forEach var="b" items="${books}">
            <div class="col s4">
              <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                  <img src="/resources/images/spring.png"/>
                </div>
                <div class="card-content">
                  <span class="card-title activator grey-text text-darken-4 flow-text">
                    <small>${b.title}</small>
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
                  <span class="card-title grey-text text-darken-4">



                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                      <a href="/book/delete?id=${b.id}"><small><small>[ 삭제 ]</small></small></a>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_USER')">

                      <c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}"/>
                      <c:set var="user_id" value="${user.id}"/>
                      <c:set var="userId" value="${b.userId}"/>

                      <c:if test="${user_id==userId}">
                        <a href="/book/delete?id=${b.id}"><small>[ 삭제 ]</small></a>
                      </c:if>

                    </sec:authorize>
                    <i class="material-icons right">close</i>
                  </span>

                  <p>
                    제&nbsp&nbsp&nbsp&nbsp목 : <b>${b.title}</b> </br>
                    저&nbsp&nbsp&nbsp&nbsp자 : <b>${b.author}</b> </br>
                    출판사 : <b>${b.publisher}</b> </br>
                    출판일 : <b>${b.pubdate}</b> </br>
                    전&nbsp&nbsp&nbsp&nbsp공 : <b>${b.major}</b>
                  </p>
                </div>
              </div>
            </div>
          </c:forEach>
      </div>

    </div>
    -->
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

