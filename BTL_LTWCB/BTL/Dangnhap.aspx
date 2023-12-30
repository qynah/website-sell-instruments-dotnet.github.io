<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="BTL.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="Style/Dangnhap.css" rel="stylesheet" />
</head>
<body>
    <form action="Dangnhap.aspx" method="post" runat="server">
        <div class="modal-login">
            <div class="modal-login_title">
                <a href="Trangchu.aspx">
                    <img src="Img/banner_icon/Logo.png" class="logo-login" alt="">
                </a>
                <p>Đăng Nhập</p>
            </div>
            <div class="modal__body-login">
                <div class="modal__inner">
                    <div class="modal__header">
                        <h3 class="modal__header-register">Đăng nhập</h3>
                        <a class="linkRegister" href="Dangky.aspx">Đăng ký</a>
                    </div>
                    <div class="modal__infor">
                        <input type="text" id="username" name="username" class="username-login" placeholder="Tên đăng nhập">
                        <input type="password" id="password" name="password" class="password-login" placeholder="Mật khẩu">
                    </div>
                    <div class="modal_error">
                        <p runat="server" id="mess_error"></p>
                    </div>
                    <a href="doimk.aspx">Đổi mật khẩu</a>

                    <div class="modal__option">
                        <spand class="modal__des-item-password">Quyên mật khẩu</spand>
                        <spand class="modal__des-item-help">Cần trợ giúp?</spand>
                    </div>
                    <div class="modal__control-login">
                        <a href="Trangchu.aspx" class="return-login">Trở lại</a>
                        <button id="submit" runat="server" class="login">Đăng nhập</button>
                    </div>
                    <div class="modal__connection-login">
                        <button class="modal__connection-face">
                            <i class="icon-facebook fa-brands fa-facebook"></i>Kết
                        nối
                        với Facebook</button>
                        <button class="modal__connection-google">
                            <i class="icon-google fa-brands fa-google"></i>Kết
                        nối
                        với
                        Google</button>
                    </div>
                    <div class="modal__end"></div>
                </div>
            </div>
        </div>
    </form>

    <script>
        var username = document.querySelector('.username-login')
        var password = document.querySelector('.password-login')
        var error = document.querySelector('#mess_error')
        var checklogin = true

        username.onblur = function () {
            if (username.value.trim() == "") {
                error.innerHTML = "Điền đầy đủ tên tài khoản và mật khẩu"
                checklogin = false
            } else {
                checklogin = true
            }
        }

        password.onblur = function () {
            if (password.value.trim() == "") {
                error.innerHTML = "Điền đầy đủ tên tài khoản và mật khẩu"
                checklogin = false
            } else {
                checklogin = true
            }
        }

        username.onclick = function () {
            error.innerHTML = ""
        }

        password.onclick = function () {
            error.innerHTML = ""
        }

        submit.onclick = function (e) {
            if (checklogin == false) {
                dem++;
                e.preventDefault();
            }
        }


    </script>
</body>
</html>
