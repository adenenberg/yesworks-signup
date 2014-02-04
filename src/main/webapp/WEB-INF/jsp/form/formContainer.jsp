<%@ include file="/WEB-INF/jsp/common/include.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<%@ include file="/WEB-INF/jsp/common/css.jsp"%>
		<%@ include file="/WEB-INF/jsp/common/script.jsp"%>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<script type="text/javascript">
			$j(document).ready(function() {
				
				updateFormTabs(${step}, ${maxStep});
				
				$j("#birthDate").datepicker({
					startDate: "-30y",
					startView: 2,
					autoclose: true
				});
			});
		</script>
		
		<style>
			
		</style>
		
	</head>
	<body>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

		<jsp:include page="/WEB-INF/jsp/form/formNav.jsp"/>

		<div class="container" id="formInfo">
			<c:choose>
				<c:when test="${step eq 1}">
					<%@ include file="/WEB-INF/jsp/form/content/personalInfo.jsp"%>
				</c:when>
				<c:when test="${step eq 2}">
				
				</c:when>
				<c:when test="${step eq 3}">
				
				</c:when>
				<c:when test="${step eq 4}">
				
				</c:when>
				<c:when test="${step eq 5}">
				
				</c:when>
				<c:otherwise>
				
				</c:otherwise>
			</c:choose>
		</div>
	</body>
</html>