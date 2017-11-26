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

<body>

<main>
  <div class="container" id="whole-container">

    <div class="bamboo-forest">
      <div class="container">
        <div class="card-panel z-depth-4">
          <p style="text-align:center;"><small>코리아텍 최고의 가성비 甲</small></p>
          <h5 class="flow-text"><b>책장터 회원가입 <i class="fa fa-user" aria-hidden="true"></i></b></h5>
          <form class="simple_form new_user" id="new_user" action="/users" accept-charset="UTF-8" method="post">
            <input name="utf8" type="hidden" value="✓">
            <input type="hidden" name="authenticity_token" value="nokWQ5QKi2lCSfeM1F2e5HawrvZcNxVt3AVzT9y4lAWffoanSymWKwTjwrGeAKmTw5SwWIm6cnvqbEBQDaoccg==">

            <input value="ce1d908b4676f1d6816df5a2e07c4ad9138b332031d9e4ba2c750917b9e617cb" type="hidden" name="user[userid]" id="user_userid">
            <br>
            <div class="form-inputs">
              <div class="row">
                <div class="input-field">
                  <input required="required" class="validate" type="email" value="" name="user[email]" id="user_email">
                  <label for="user_email">이메일 <i class="material-icons left">perm_identity</i></label>
                  <span class="info">정확하지 않은 이메일로 가입하면 비밀번호를 찾을 때 문제가 생길 수 있을 수 있습니다.</span>
                </div>
              </div>

              <div class="row">
                <div class="input-field">
                  <input autocomplete="off" required="required" class="validate" minlength="6" type="password" name="user[password]" id="user_password">
                  <label for="user_password">비밀번호(6글자 이상) <i class="material-icons left">lock_open</i></label>
                </div>
              </div>

              <div class="row">
                <div class="input-field">
                  <input autocomplete="off" required="required" class="validate" minlength="6" type="password" name="user[password_confirmation]" id="user_password_confirmation">
                  <label for="user_password_confirmation">비밀번호 확인(6글자 이상) <i class="material-icons left">autorenew</i></label>
                </div>
              </div>
              <button name="button" type="submit" class="btn waves-effect waves-light z-depth-3" style="background-color: #FF7F00;">
                <i class="material-icons left">done</i>회원가입
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>

  </div>

</main>




</body>
</html>