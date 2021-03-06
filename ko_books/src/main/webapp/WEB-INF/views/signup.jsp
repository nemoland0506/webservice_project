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
  <!--Import materialize.css-->

  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

  <!-- Font-awesome CDN -->
  <script src="https://use.fontawesome.com/f585201c6c.js"></script>

  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>




  <script>

      $(document).ready(function() {
          $('.modal').modal();
      });
  </script>
  <style>
    #whole-container {
      margin: 0;
    }

    .bamboo-forest {
      margin: 0 auto;
      position: absolute;
      background-image: url("/resources/images/2.jpg");
      height: 100%;
      width: 100%;
      background-position: center;
      background-size: cover;
      background-repeat: no-repeat;
    }

    .container {
      height: 100%;
    }

    .card-panel {
      position: relative;
      display: inline-block;
      width: 100%;
      height: auto;
      background: rgba(255, 255, 255, 0.7);
      border-radius: 10px;
      text-align: center;
      top: 50%;
      -webkit-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      transform: translateY(-50%);
      float: inherit;
    }

    .input-field {
      display: inline-block;
    }

    .remember_me_check {
      text-align: left;
      display: inline-block;
    }

    .modal-container {
      position: relative;
      text-align: center;
      width: 100%;
    }

    .modal-field {
      display: inline-block;
      width: 33%;
    }

    .info {
      color: #444444;
      font-size: 12px;
      font-style: italic;
      float: left;
    }


    @media only screen and (max-width: 769px) {
      .input-field {
        width: 70vw;
      }

      .remember_me_check {
        width: 70vw;
      }

      .btn {
        width: 70vw;
      }

      h6 {
        float: right;
      }
    }

    @media only screen and (min-width: 770px) and (max-width: 1439px) {
      .input-field {
        width: 50%;
      }

      .remember_me_check {
        width: 50%;
      }

      .btn {
        width: 50%;
      }

      h6 {
        float: right;
      }
    }

    @media only screen and (min-width: 1440px) {
      .input-field {
        width: 25%;
      }

      .remember_me_check {
        width: 25%;
      }

      .btn {
        width: 25%;
      }

      h6 {
        padding-left: 50%
      }
    }
  </style>
  <!--style end-->

</head>


<sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
  <meta http-equiv='refresh' content='0; url=/'>
</sec:authorize>

<sec:authorize access="!hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">

  <body>

  <main>


    <div class="container" id="whole-container">



      <div class="bamboo-forest">
        <div class="container">
          <div class="card-panel z-depth-4">
            <p style="text-align:center;"><small>코리아텍 최고의 가성비 甲</small></p>
            <h5 class="flow-text"><b>책장터 회원가입 <i class="fa fa-user" aria-hidden="true"></i></b></h5>
            <form:form modelAttribute="user" class="simple_form new_user" accept-charset="UTF-8" name="new_user" id="new_user" onsubmit="return confirm()">

              <input name="utf8" type="hidden" value="✓">
              <input type="hidden" name="authenticity_token" value="nokWQ5QKi2lCSfeM1F2e5HawrvZcNxVt3AVzT9y4lAWffoanSymWKwTjwrGeAKmTw5SwWIm6cnvqbEBQDaoccg==">

              <input value="ce1d908b4676f1d6816df5a2e07c4ad9138b332031d9e4ba2c750917b9e617cb" type="hidden" name="user[userid]" id="user_userid">
              <br>
              <div class="form-inputs">
                <div class="row">
                  <div class="input-field">
                    <form:input required="required" class="validate" type="email" name="user_email" id="user_email" path="email" />

                    <label for="user_email">이메일 <i class="material-icons left">perm_identity</i></label>
                    <span class="info">정확하지 않은 이메일로 가입하면 비밀번호를 찾을 때 문제가 생길 수 있을 수 있습니다.</span>
                  </div>
                </div>

                <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>


                <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>

                <script type="text/javascript">

                    var naver_id_login = new naver_id_login("ZfjJLueOHD0kjvjxT5wG", "http://kobooks.us-east-2.elasticbeanstalk.com/user/signup");

                    function naverSignInCallback() {

                        var email = naver_id_login.getProfileData('email');
                        var nickname = naver_id_login.getProfileData('nickname');
                        var age = naver_id_login.getProfileData('age');

                        user_email.value = email;
                        user_email.readOnly = true;
                        user_email.focus();


                    }
                    naver_id_login.get_naver_userprofile("naverSignInCallback()");




                </script>

                <div class="row">
                  <div class="input-field">
                    <form:input type="password" autocomplete="off" required="required" class="validate" minlength="6" id="user_password" path="password"/>

                    <label for="user_password">비밀번호(6글자 이상) <i class="material-icons left">lock_open</i></label>
                  </div>
                </div>

                <div class="row">
                  <div class="input-field">
                    <form:input type="password" autocomplete="off" required="required" class="validate" minlength="6" id="confirm_password" path="" />
                    <label for="confirm_password" onblur="confirm()">비밀번호 확인(6글자 이상) <i class="material-icons left">autorenew</i></label>
                  </div>
                </div>
                <button name="button" type="submit" class="btn waves-effect waves-light z-depth-3" style="background-color:#FF7F00;">
                  <i class="material-icons left">done</i>회원가입
                </button>


              </div>
            </form:form>

            <script type="text/javascript">



                function confirm() {

                    var user_e = user_email.value;
                    var user_pw = user_password.value;
                    var confirm_pw = confirm_password.value;

                    <c:forEach var="u" items="${users}">
                    var ue = "${u.email}";

                    if(ue == user_e) {
                        // 중복계정 있음
                        Materialize.toast('이미 가입된 이메일입니다!', 4000);
                        return false;
                    }
                    else {
                        // 중복계정 없음
                    }

                    </c:forEach>

                    if(user_pw != confirm_pw || user_pw == null) {
                        Materialize.toast('비밀번호가 일치하지 않습니다!', 4000); // 4000 is the duration of the toast
                        return false;
                    }

                    else {
                        Materialize.toast('회원가입 성공', 4000);
                        return true;
                    }

                }

            </script>
          </div>
        </div>
      </div>

    </div>

  </main>




  </body>

</sec:authorize>
</html>