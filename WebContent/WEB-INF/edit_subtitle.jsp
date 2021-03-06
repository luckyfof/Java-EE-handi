<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<input type="submit" style="position: fixed; top: 10px; right: 10px;" />
		<table>
			<c:forEach items="${ subtitles }" var="line" varStatus="status">
				<tr>
					<c:choose>
					<c:when test="${ line.matches('^[0-9]+') && !line.matches('^[0-9]{2}\\\\:[0-9]{2}\\\\:[0-9]{2}\\\\,[0-9]{3}\\\\ -->\\\\ [0-9]{2}\\\\:[0-9]{2}\\\\:[0-9]{2}\\\\,[0-9]{3}$')}">
					<td style="text-align: right;"><c:out value="${ line }" /></td>
							<td><input type="hidden" name="line${ status.index }"
								id="line${ status.index }" size="35" /></td>
					</c:when>
						<c:when
							test="${ line.matches('^[0-9]{2}\\\\:[0-9]{2}\\\\:[0-9]{2}\\\\,[0-9]{3}\\\\ -->\\\\ [0-9]{2}\\\\:[0-9]{2}\\\\:[0-9]{2}\\\\,[0-9]{3}$') }">
							<td style="text-align: right;"><c:out value="${ line }" /></td>
							<td><input type="hidden" name="line${ status.index }"
								id="line${ status.index }" size="35" /></td>
						</c:when>
						<c:otherwise>
						<td style="text-align: right;"><c:out value="${ line }" /></td>
							<td><input type="text" name="line${ status.index }"
								id="line${ status.index }" size="35" /></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>
