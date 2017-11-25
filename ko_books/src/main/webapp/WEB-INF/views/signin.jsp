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
            <script>
                $(document).ready(function () {
                    if ("" == "failed") {
                        alert("아우누리 로그인에 실패하였습니다.");
                    }
                    else if ("" == "duplicated") {
                        alert("이미 대나무숲에 가입된 아우누리 아이디입니다.");
                    }
                });
            </script>
            <div id="sign_modal" class="modal" style="z-index: 1005;">
                <div class="modal-content">
                    <div class="modal-container">
                        <h5 class="flow-text">아우누리 로그인</h5>
                        <br>
                        <div class="form-group">
                            <form action="/main/auth" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="Lodu32Bv1vzqi4QHhFMJhoq9nlSUYgDzTckHqv0e8XECmOvFu3xszAHM6mQwA22fwiwZJn22ee/4fwF88rxhHQ==">
                                <div class="row">
                                    <div class="input-field modal-field">
                                        <input type="text" name="ID" id="ID" class="validate" required="required">
                                        <label for="ID" class="active">
                                            <i class="material-icons left">perm_identity</i>아이디</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field modal-field">
                                        <input type="password" name="Password" id="Password" class="validate" required="required">
                                        <label for="Password">
                                            <i class="material-icons left">lock_open</i>비밀번호</label>
                                    </div>
                                </div>
                                <button name="button" type="submit" class="btn waves-effect waves-light z-depth-3" style="background-color: #22449C;">
                                    로그인
                                </button></form>      </div>
                    </div>
                </div>
                <br>
            </div>
            <div class="bamboo-forest">
                <div class="container">
                    <div class="card-panel z-depth-4">
                        <p style="text-align:center;"><small>코리아텍 최고의 가성비 甲</small></p>
                        <h5 class="flow-text"><b>코리아텍 책 장터 <i class="fa fa-book" aria-hidden="true"></i></b></h5>
                        <form class="simple_form new_user" id="new_user" action="/users/sign_in" accept-charset="UTF-8" method="post">
                            <input name="utf8" type="hidden" value="✓">
                            <div style="font-style: italic; font-weight:300; padding-left:50%; color:red; font-size:13px"></div>
                            <br>
                            <div class="form-inputs">
                                <div class="row">
                                    <div class="input-field">
                                        <input required="required" class="validate" type="email" value="" name="user[email]" id="user_email">
                                        <label for="user_email">이메일 <i class="material-icons left">perm_identity</i></label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="input-field">
                                        <input required="required" class="validate" minlength="6" type="password" name="user[password]" id="user_password">
                                        <label for="user_password">비밀번호 <i class="material-icons left">lock_open</i></label>
                                    </div>
                                </div>

                                <div class="remember_me_check">
                                    <input name="user[remember_me]" type="hidden" value="0">
                                    <input id="remember_chkbox" type="checkbox" value="1" name="user[remember_me]">
                                    <label for="remember_chkbox">로그인 상태 유지</label>
                                </div>
                                <br>
                                <br>
                                <button name="button" type="submit" class="btn waves-effect waves-light z-depth-3" style="background-color: #FF7F00;">
                                    <i class="material-icons left">done</i>로그인
                                </button>
                                <br><br>
                                <button class="btn lighten-1 waves-effect waves-light z-depth-3 modal-trigger" type="button" data-target="sign_modal">
                                    <i class="material-icons left">navigate_next</i>아우누리로 회원가입
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