<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.findlocation.model.Location" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details of IP</title>
<link rel="stylesheet" href="./css/styles.css">
</head>
<body>
	<jsp:useBean id="location" class="com.findlocation.model.Location" scope="request"></jsp:useBean>
	
	
	<div class="container">
		<div class="raw">
			<div class="column">
				<p class="property">Country Code</p>
				<div class="propvalue" id="countryCode"><jsp:getProperty property="country_code" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Country Name</p>
				<div class="propvalue" id="countryName"><jsp:getProperty property="country_name" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Region Name</p>
				<div class="propvalue" id="regionName"><jsp:getProperty property="region_name" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">City Name</p>
				<div class="propvalue" id="cityName"><jsp:getProperty property="city_name" name="location"/></div>
			</div>
		</div>
		
		<div class="raw">
			<div class="column">
				<p class="property">Latitude</p>
				<div class="propvalue" id="latitude"><jsp:getProperty property="latitude" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Longitude</p>
				<div class="propvalue" id="longitude"><jsp:getProperty property="longitude" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Zip Code</p>
				<div class="propvalue" id="zipCode"><jsp:getProperty property="zip_code" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Time Zone</p>
				<div class="propvalue" id="timeZone"><jsp:getProperty property="time_zone" name="location"/></div>
			</div>
		</div>
		
		<div class="raw">
			<div class="column">
				<p class="property">Area Code</p>
				<div class="propvalue" id="areaCode"><jsp:getProperty property="area_code" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Weather Station Code</p>
				<div class="propvalue" id="weatherStationCode"><jsp:getProperty property="weather_station_code" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Weather Station Name</p>
				<div class="propvalue" id="weatherStationName"><jsp:getProperty property="weather_station_name" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Elevation</p>
				<div class="propvalue" id="elevation"><jsp:getProperty property="elevation" name="location"/></div>
			</div>
		</div>
		
		<div class="raw">
			<div class="column">
				<p class="property">IDD Code</p>
				<div class="propvalue" id="iddCode"><jsp:getProperty property="idd_code" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">MCC</p>
				<div class="propvalue" id="mcc"><jsp:getProperty property="mcc" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">MNC</p>
				<div class="propvalue" id="mnc"><jsp:getProperty property="mnc" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Mobile Brand</p>
				<div class="propvalue" id="mobileBrand"><jsp:getProperty property="mobile_brand" name="location"/></div>
			</div>
		</div>
		
		<div class="raw">
			<div class="column">
				<p class="property">Service Provider</p>
				<div class="propvalue" id="isp"><jsp:getProperty property="isp" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Domain Name</p>
				<div class="propvalue" id="domainName"><jsp:getProperty property="domain" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Net Speed</p>
				<div class="propvalue" id="netSpeed"><jsp:getProperty property="net_speed" name="location"/></div>
			</div>
			<div class="column">
				<p class="property">Usage Type</p>
				<div class="propvalue" id="usageType"><jsp:getProperty property="usage_type" name="location"/></div>
			</div>
		</div>
		
	</div>
	
</body>
</html>