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

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>

	<title>itemCreateConfirm画面</title>
</head>
<body>

<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>商品登録内容の確認</p>
		</div>
		<div>
			<h3>以下の内容で登録します。</h3>
			<table>
			<s:form>
				<tr>
					<td><label>商品名：</label></td>
					<td><s:property value="itemName"/></td>
				</tr>
				<tr>
					<td><label>価格：</label></td>
					<td><s:property value="itemPrice"/>円</td>
				</tr>
				<tr>
					<td><label>在庫数：</label></td>
					<td><s:property value="itemStock"/>個</td>
				</tr>
				<tr>
					<td><input type="button" value="戻る" onclick="submitAction('ItemCreateAction')"/></td>
					<td><input type="button" value="完了" onclick="submitAction('ItemCreateCompleteAction')"/></td>
				</tr>
			</s:form>
			</table>
		</div>
	</div>

	<div id="footer"></div>

</body>
</html>