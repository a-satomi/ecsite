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

	<title>userListDeleteComplete画面</title>
</head>
<body>

	<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>削除完了</p>
		</div>
		<div>
			<s:if test="userListDTO == null">
				<h3><s:property value="message"/></h3>
			</s:if>
		</div>
		<a href='<s:url action="AdminAction"/>'>管理者TOPへ</a>
	</div>

	<div id="footer"></div>

</body>
</html>