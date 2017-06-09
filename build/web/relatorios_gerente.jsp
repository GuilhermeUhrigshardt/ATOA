<%-- 
    Document   : relatorios_gerente
    Created on : Jun 6, 2017, 9:54:09 PM
    Author     : guilh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:if test="${sessionScope.funcionarioatoa.cargo.nomeCargo != 'Gerente'}">
    <c:redirect url="/erro.jsp">
        <c:param name="msg" value="Acesso negado!"/>
    </c:redirect>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <c:if test="${!empty requestScope.msg}">
            <script>
                alert("${requestScope.msg}");
            </script>
        </c:if>
        <title>Relatórios</title>
    </head>
    <body>
        <center>
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                      <div class="navbar-header">
                        <a class="navbar-brand" href="/ATOA/manter_tipos_atividades.jsp">AT-OA</a>
                      </div>
                      <ul class="nav navbar-nav">
                        <li><a href="/ATOA/manter_tipos_atividades.jsp">Tipos Atividades</a></li>
                        <li><a href="/ATOA/ManterAtividades">Atividades</a></li>
                        <li><a href="/ATOA/ManterRelatorios">Relatórios</a></li>
                      </ul>
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="/ATOA/ProcessaLogout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                      </ul>
                    </div>
                  </nav>
                  <div style="text-align:left;">
                    Bem vindo, <c:out value="${sessionScope.funcionarioatoa.nomeFuncionario}"/><span style="float:right;"></span>
                  </div>
            <br/><br/><br/>
            <h3>Relatórios</h3>
            <br/><br/>
            <select name="funcionario">
                <c:forEach items="${listaFuncionario}" var="item">
                    <option value="${item.idFuncionario}">${item.nomeFuncionario}</option>
                </c:forEach>
            </select>
            <br/>
            <a href="ATOA/RelatorioFuncionario"><input value="Relatório por Funcionário"></a>
            <br/><br/>
            <a href="ATOA/RelatorioDepartamento"><input value="Relatório por Departamento"></a>
        </center>
    </body>
</html>
