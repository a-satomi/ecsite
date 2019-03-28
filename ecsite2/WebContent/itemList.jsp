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

	<title>itemList画面</title>
</head>
<body>

	<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>商品一覧</p>
		</div>

		<s:if test="itemListDTO == null">
			<h3><s:property value="message"/></h3>
		</s:if>

		<s:if test="itemListDTO != null">
			<h3><s:property value="message"/></h3>
			<div class="list">
			<table>
				<tr>
					<th>商品ID</th>
					<th>商品名</th>
					<th>価格</th>
					<th>在庫数</th>
					<th>登録日時</th>
				</tr>
				<s:iterator value="itemListDTO">
				<tr>
					<td><s:property value="itemId"/></td>
					<td><s:property value="itemName"/></td>
					<td><s:property value="itemPrice"/></td>
					<td><s:property value="itemStock"/></td>
					<td><s:property value="date"/></td>
				</tr>
				</s:iterator>
			</table>
			</div>

			<br/>

			<div id="text-center">
			<s:form action="ItemListDeleteConfirmAction">
				<s:submit value="削除"/>
			</s:form>
			</div>
		</s:if>
		<br/>
		<s:form action="ItemCreateAction">
			<s:submit value="商品を登録する"/>
		</s:form>
		<br/>
		<a href='<s:url action="AdminAction"/>'>管理者TOPへ</a>


	</div>

	<div id="footer"></div>

</body>
</html>