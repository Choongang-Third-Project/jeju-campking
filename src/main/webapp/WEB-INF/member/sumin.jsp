<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Camp Statistics</title>
</head>
<body>
<%--<h1>Camp Statistics</h1>--%>
<%--<p>Total Camps: ${totalCount}</p>--%>
<%--<p>Normal Camps: ${normalCount} (${normalPercentage}%)</p>--%>
<%--<p>Car Camps: ${carCount} (${carPercentage}%)</p>--%>
<%--<p>Caravan Camps: ${caravanCount} (${caravanPercentage}%)</p>--%>
<%--<p>Glamping Camps: ${glampingCount} (${glampingPercentage}%)</p>--%>

<%--<c:forEach items="${camps}" var="camp">--%>
<%--    <tr>--%>
<%--        <td>${camp.camp_type_normal}</td>--%>
<%--        <td>${camp.count}</td>--%>
<%--        <td>${camp.percentage}%</td>--%>
<%--    </tr>--%>
<%--</c:forEach>--%>

<p>Total Count: ${c.totalCount}</p>
<p>Normal Count: ${c.normalCount}</p>
<p>Car Count: ${c.carCount}</p>
<p>Caravan Count: ${c.caravanCount}</p>
<p>Glamping Count: ${c.glampingCount}</p>
<p>Normal Percentage: ${c.normalPercentage}</p>
<p>Car Percentage: ${c.carPercentage}</p>
<p>Caravan Percentage: ${c.caravanPercentage}</p>
<p>Glamping Percentage: ${c.glampingPercentage}</p>

</body>
</html>