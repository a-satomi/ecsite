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

	<title>userCreateConfirm画面</title>
</head>
<body>

<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>userCreateConfirm</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>
			<table>
				<s:form action="UserCreateCompleteAction">
					<tr>
						<td><label>ログインID：</label></td>
						<td><s:property value="loginUserId" escape="true"/></td>
					</tr>
					<tr>
						<td><label>ログインPASS：</label></td>
						<td><s:property value="loginPassword" escape="true"/></td>
					</tr>
					<tr>
						<td><label>ユーザー名：</label></td>
						<td><s:property value="userName" escape="true"/></td>
					</tr>
					<s:submit value="完了"/>
				</s:form>
			</table>
		</div>
	</div>

	<div id="footer"></div>

</body>
</html>