
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="CommonHeader.jsp"></jsp:include>

<c:forEach var="myprod" items="${list}">
<li>${myprod.pid}</li>
</c:forEach>
<jsp:include page="CommonFooter.jsp"></jsp:include>
