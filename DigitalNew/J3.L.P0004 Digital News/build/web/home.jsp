<%-- 
    Document   : home
    Created on : Mar 13, 2021, 5:23:57 PM
    Author     : Hiệu Bùi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Article</title>
        <link href="css/detail.css" rel="stylesheet" />
    </head>
    <body>
        <t:layout>
            <c:choose>
                <c:when test="${error == null}">
                    <div class="detail">
                        <p class="text-color text-title">${detail.title} </p>
                        <img src="${detail.imgUrl}" alt="">
                    </div>

                </c:when>
                <c:otherwise>
                    <h1>${error}</h1><br>
                    <h2>Click <a href="./home">here</a> to go home</h2>
                </c:otherwise>
            </c:choose>
        </t:layout>
    </body>
</html>
