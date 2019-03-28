<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<link rel="stylesheet" type="text/css" href="./css/style.css"/>

	<title>UserCreate画面</title>
</head>
<body>

<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>UserCreate</p>
		</div>
		<div>
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage"/>
			</s:if>
			<table>
			<s:form action="UserCreateConfirmAction">
				<tr>
					<td><label>ログインID：</label></td>
					<td><input type="text" name="loginUserId" value=""/></td>
				</tr>
				<tr>
					<td><label>ログインPASS：</label></td>
					<td><input type="password" name="loginPassword" value=""/></td>
				</tr>
				<tr>
					<td><label>ユーザー名：</label></td>
					<td><input type="text" name="userName" value=""/></td>
				</tr>
				<s:submit value="登録"/>
			</s:form>
			</table>
			<br/>
			<div>
				<p>前画面に戻る場合は<a href='<s:url action="HomeAction"/>'>こちら</a></p>
			</div>
		</div>
	</div>

	<div id="footer"></div>

</body>
</html>