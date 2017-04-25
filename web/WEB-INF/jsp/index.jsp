<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Welcome to Spring Web MVC project</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <link href="resources-bootstrap/css/bootstrap.min.css" rel="stylesheet">
        
        <link href="resources-bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <script src="resources-bootstrap/js/jquery.js"></script>
        <script src="resources-bootstrap/js/bootstrap.min.js"></script>
        <link href="resources-bootstrap/my-css/login.css" rel="stylesheet" type="text/css"/>
        <script src="resources-bootstrap/my-js/login.js" type="text/javascript"></script>
    </head>

    <body>
    <section id="login">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-wrap">
                        <h1>Log in with your email account - Example Bluemix</h1>
                        <p class="text-danger">${mess}</p>
                        <p class="text-primary">${mess2}</p>
                        <form role="form" action="send.htm" method="post" id="login-form" autocomplete="off">
                            <div class="form-group">
                                <label for="username" class="sr-only">Email</label>
                                <input type="text" name="username" id="user" class="form-control" required="true" placeholder="somebody@example.com" value="${username}">
                            </div>
                            <div class="form-group">
                                <label for="key" class="sr-only">Password</label>
                                <input type="password" name="key" id="key" class="form-control" required="true" placeholder="Password" value="${password}">
                            </div>
                            <div class="checkbox">
                                <span class="character-checkbox" onclick="showPassword()"></span>
                                <span class="label">Show password</span>
                            </div>
                            <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Log in">
                        </form>
                        <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">Forgot your password?</a>
                        <hr>
                    </div>
                </div> <!-- /.col-xs-12 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </section>

    <div class="modal fade forget-modal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Recovery password</h4>
                </div>
                <form method="get" action="user/reset.htm">
                    <div class="modal-body">
                        <p>Type your username account</p>
                        <input type="tel" name="username" id="recovery-email" class="form-control" autocomplete="off">
                    </div>
                    <div class="modal-body">
                        <p>Type your email account</p>
                        <input type="email" name="email" id="recovery-email" class="form-control" autocomplete="off">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-custom">Recovery</button>
                    </div>
                </form>
            </div> <!-- /.modal-content -->
        </div> <!-- /.modal-dialog -->
    </div> <!-- /.modal -->

    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <p>Page © - 2014</p>
                    <p>Powered by <strong><a href="http://www.facebook.com/tavo.qiqe.lucero" target="_blank">TavoQiqe</a></strong></p>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>
