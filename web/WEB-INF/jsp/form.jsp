<%-- 
    Document   : form
    Created on : Jan 11, 2017, 10:32:34 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <link href="resources-bootstrap/css/bootstrap.min.css" rel="stylesheet">
        
    </head>

    <body>
        <div class="container">
            <div class="col-md-4 col-md-offset-4">
                <h3 class="text-center"><b>SINH VIÊN POLY</b></h3>
                <form action="insert.htm" method="post">
                    <div class="form-group">
                        <label for="">Ho va ten</label>
                        <input class="form-control" type="text" name="name"></input>
                    </div>

                    <div class="form-group">
                        <label for="">Dien TB</label> 
                        <input class="form-control" type="text" name="mark"></input> 
                    </div>

                    <div class="form-group">
                        <label for="">Chuyen Nganh</label> <br>
                        <p class="text-primary">
                        <input name="major" type="radio" value="APP" checked="checked"/>
                        Ung Dung Phan Mem</p>
                        <p class="text-primary">
                        <input name="major" type="radio" value="WEB"/>
                        Thiet Ke Web</p>
                    </div>
                    <hr>
                    <p class="text-danger">${msg}</p>
                    <button class="btn btn-primary" type="submit">Luu</button> 
                </form>
            </div>
        </div>
    </body>
</html>

