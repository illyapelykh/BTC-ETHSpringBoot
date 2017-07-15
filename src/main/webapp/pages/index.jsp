<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
	<div id="divType1">
		<h3>Get the latest Ticker for the BTC/ETH</h3>
		<p id="p1"></p>
		<table>
			<tr>
				<th>BTC_ETH</th>
				<th>id</th>
				<th>last</th>
				<th>lowestAsk</th>
				<th>highestBid</th>
				<th>percentChange</th>
				<th>baseVolume</th>
				<th>quoteVolume</th>
				<th>isFrozen</th>
				<th>high24hr</th>
				<th>low24hr</th>
			</tr>
			<tr>
				<th><button id="btn1">Get Ticker</button></th>
				<td id="id" class="td1"></td>
				<td id="last" class="td1"></td>
				<td id="lowestAsk" class="td1"></td>
				<td id="highestBid" class="td1"></td>
				<td id="percentChange" class="td1"></td>
				<td id="baseVolume" class="td1"></td>
				<td id="quoteVolume" class="td1"></td>
				<td id="isFrozen" class="td1"></td>
				<td id="high24hr" class="td1"></td>
				<td id="low24hr" class="td1"></td>
			</tr>
		</table>
	</div>
	<div id="divType3">

		<h3>Show the latest save Ticker from the DB</h3>

		<p id="p3"></p>
		<table id="tableDB">
			<tr>
				<td id="btnDB"><button id="btn3">Show</button></td>
				<td id="idDB" class=tdDB></td>
				<td id="lastDB" class=tdDB></td>
				<td id="lowestAskDB" class=tdDB></td>
				<td id="highestBidDB" class=tdDB></td>
				<td id="percentChangeDB" class=tdDB></td>
				<td id="baseVolumeDB" class=tdDB></td>
				<td id="quoteVolumeDB" class=tdDB></td>
				<td id="isFrozenDB" class=tdDB></td>
				<td id="high24hrDB" class=tdDB></td>
				<td id="low24hrDB" class=tdDB></td>
			</tr>
			<tr>
				<th>BTC_ETH</th>
				<th>id</th>
				<th>last</th>
				<th>lowestAsk</th>
				<th>highestBid</th>
				<th>percentChange</th>
				<th>baseVolume</th>
				<th>quoteVolume</th>
				<th>isFrozen</th>
				<th>high24hr</th>
				<th>low24hr</th>
			</tr>
		</table>

	</div>
	<div>

		<h3>Save the latest Ticker to the DB</h3>

		<p id="p2"></p>

		<div id="divType2">
			<button id="btn2">Save to DB</button>
		</div>

	</div>

	<script src="/js/main.js"></script>
</body>
</html>