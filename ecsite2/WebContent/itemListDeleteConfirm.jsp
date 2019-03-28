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

	<title>itemListDeleteConfirm画面</title>
</head>
<body>

	<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>商品情報の削除</p>
		</div>
		<div>
			<h3>すべての商品を削除します。よろしいですか？</h3>
		<br/>
		<s:form theme="simple">
			<input type="hidden" name="deleteFlg" value="1"/>
			<s:submit value="ＯＫ" method="delete" onclick="submitAction('ItemListDeleteCompleteAction')"/>
			<s:submit value="キャンセル" onclick="submitAction('ItemListAction')"/>
		</s:form>
		</div>
	</div>

	<div id="footer"></div>

</body>
</html>