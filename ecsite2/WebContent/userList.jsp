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

	<title>userList画面</title>
</head>
<body>

	<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>ユーザー一覧</p>
		</div>

		<s:if test="userListDTO == null">
			<h3><s:property value="message"/></h3>
		</s:if>

		<s:if test="userListDTO != null">
			<h3><s:property value="message"/></h3>
			<div class="list">
			<table>
				<tr>
					<th>ユーザーID</th>
					<th>ログインID</th>
					<th>パスワード</th>
					<th>ユーザー名</th>
					<th>登録日時</th>
				</tr>
				<s:iterator value="userListDTO">
				<tr>
					<td><s:property value="userId"/></td>
					<td><s:property value="loginId"/></td>
					<td><s:property value="loginPass"/></td>
					<td><s:property value="userName"/></td>
					<td><s:property value="date"/></td>
				</tr>
				</s:iterator>
			</table>
			</div>

			<br/>

			<div id="text-center">
			<s:form action="UserListDeleteConfirmAction">
				<s:submit value="削除"/>
			</s:form>
			</div>
		</s:if>
		<br/>
		<s:form action="UserCreateAction">
			<s:submit value="新規登録する"/>
		</s:form>
		<br/>
		<a href='<s:url action="AdminAction"/>'>管理者TOPへ</a>


	</div>

	<div id="footer"></div>

</body>
</html>