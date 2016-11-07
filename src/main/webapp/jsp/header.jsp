<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<security:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin"/>
<security:authentication property="principal" var="user"/>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>Student</title>
    <link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>">
    <link rel="stylesheet" href="<c:url value="/css/cooperate.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" type="text/css">
    <link type="text/css" href="<c:url value="/css/datepicker.css"/>" rel="stylesheet"/>
    <link type="text/css" href="<c:url value="/css/dataTables.bootstrap.css"/>" rel="stylesheet"/>
    <script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/jquery.form.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/jquery.validate.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/jquery.dataTables.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/validate.customMethod.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/bootstrap-datepicker.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/validate.messages_ru.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/dataTables.bootstrap.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/locale/bootstrap-datepicker.ru.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/mvc.js"/>"></script>
    <script type="text/javascript">

        $(document).ajaxStart(function () {
            $('html').css({'cursor': 'wait'});
        });

        $(document).ajaxStop(function () {
            $('html').css({'cursor': 'default'});
        });

        $.extend($.fn.dataTable.defaults, {
            "language": {
                "url": '<c:url value="/js/locale/dataTablesRu.json"/>'
            }
        });


    </script>
</head>
<div class="navbar navbar-custom navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Студенты</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<c:url value="/"/>">Студенты</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="<c:url value="/adminPage"/>"><span class="glyphicon glyphicon-user"></span> Странница  администратора</a>
                </li>
                <li>
                    <a href="<c:url value="/userPage"/>"><span class="glyphicon glyphicon-th-list"></span> Страница пользователя</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a style="cursor:default"> <c:out value="${user.username}"/> </a>
                </li>
                <li>
                    <a href="<c:url value="/logout"/>" title="Выйти">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="messages" class="pull-right alert alert-info fade in " style="width: 20%; display: none"></div>

