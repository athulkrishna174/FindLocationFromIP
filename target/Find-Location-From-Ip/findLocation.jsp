<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Details of IP</title>
<link rel="stylesheet" href="./css/styles.css">
</head>
<body>
	<form action="findLocation" method="get">
		<input type="text" placeholder="Enter Ip Address" name="ipAddress" id="ipInput" required="required" autocomplete="off">
		<input type="submit" value="Find Details" id="submit">
	</form>
</body>
</html>