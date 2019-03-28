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

	<title>buyItemComplete画面</title>
</head>
<body>

<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>buyItemComplete</p>
		</div>
		<div>
			<h3>購入手続きが完了致しました。</h3>
			<br/>
			<p><a href='<s:url action="MyPageAction"/>'>マイページ</a>から購入履歴の確認が可能です。</p>
			<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
		</div>
	</div>

	<div id="footer"></div>

</body>
</html>