<%@ include file="/WEB-INF/jsp/common/include.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<%@ include file="/WEB-INF/jsp/common/css.jsp"%>
		<%@ include file="/WEB-INF/jsp/common/script.jsp"%>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<style>
			
		</style>
		
	</head>
	<body>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

		<div class="container" id="surveyInfo">
			<c:choose>
				<c:when test="${survey eq 'finance'}">
					<%@ include file="/WEB-INF/jsp/survey/content/financeSurvey.jsp"%>
				</c:when>
				<c:when test="${survey eq 'skills'}">
					<%@ include file="/WEB-INF/jsp/survey/content/skillsSurvey.jsp"%>
				</c:when>
			</c:choose>
		</div>
	</body>
</html>