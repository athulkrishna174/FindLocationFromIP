package com.findlocation.service;

import com.findlocation.model.Location;

import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.WebTarget;
import jakarta.ws.rs.core.MediaType;

public class FindLocationService {
	
	private static final String BASE_ADDRESS = "https://api.ip2location.com/v2/";
	private static final String KEY = "AMBK3EPGO0";
	private static final String PACKAGE = "WS24";
	
	
	public Location getLocation(String ipAddress) {
		Client client = ClientBuilder.newClient();
		
		WebTarget baseTarget = client.target(BASE_ADDRESS);
		
		Location location = baseTarget
							.queryParam("ip", ipAddress)
							.queryParam("key", KEY)
							.queryParam("package", PACKAGE)
							.request(MediaType.APPLICATION_JSON)
							.get(Location.class);
		return location;
	}
}
