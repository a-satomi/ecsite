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

	<title>itemCreate画面</title>
</head>
<body>

	<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>商品情報の登録</p>
		</div>
		<div>
			<s:if test="errorMassage != ''">
				<span class="error-massage"><s:property value="errorMassage"/></span>
			</s:if>
			<table>
			<s:form action="ItemCreateComfirmAction">
				<tr>
					<td><label>商品名：</label></td>
					<td><input type="text" name="itemName" value=""/></td>
				</tr>
				<tr>
					<td><label>価格：</label></td>
					<td><input type="number" name="itemPrice" value=""/></td>
				</tr>
				<tr>
					<td><label>在庫数：</label></td>
					<td><input type="number" name="itemStock" value=""/></td>
				</tr>
				<s:submit value="登録"/>
			</s:form>
			</table>
			<br/>
			<div>
				<a href='<s:url action="AdminAction"/>'>管理者TOPへ</a>
			</div>
		</div>
	</div>

	<div id="footer"></div>

</body>
</html>