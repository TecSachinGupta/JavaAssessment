package me.sachingupta;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.cloudant.client.api.ClientBuilder;
import com.cloudant.client.api.CloudantClient;
import com.cloudant.client.api.Database;

import me.sachingupta.dao.Users;
import me.sachingupta.dao.VehicleInfo;

public class CloudantDatabase {
	private static String username = "4626ad20-ddee-4767-b0d4-93ef0d0f9b7b-bluemix";
	private static String password = "f77feba0afe7ec4acaf3b048b821fea677d3ebda4e829b30680cc8e0f3bd0f6c";
	private static String url = "https://4626ad20-ddee-4767-b0d4-93ef0d0f9b7b-bluemix:f77feba0afe7ec4acaf3b048b821fea677d3ebda4e829b30680cc8e0f3bd0f6c@4626ad20-ddee-4767-b0d4-93ef0d0f9b7b-bluemix.cloudant.com";
	
	private static CloudantClient client = null;
	private static Database database1 = null;
	
	public static int addData(VehicleInfo v) {
		int status = -1;
		try {
			if (client == null)
				client = ClientBuilder.url(new URL(url))
					.username(username)
					.password(password)
					.build();
			database1 = client.database("vehicledb", true);
			
			database1.save(v);
			
			status = 1;
		}catch (Exception e) {
			// TODO: handle exception
			status = -1;
			e.printStackTrace();
		}
		
		return status;
	}
	
	
	public static List<VehicleInfo> getData(){
		List<VehicleInfo> list = null;// = new ArrayList<>();
		try {
			if (client == null)
				client = ClientBuilder.url(new URL(url))
					.username(username)
					.password(password)
					.build();
			database1 = client.database("vehicledb", false);
			list = database1.getAllDocsRequestBuilder().includeDocs(true).build().getResponse().getDocsAs(VehicleInfo.class);
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return list;
	}
	
	public static List<Users> getUsers(){
		List<Users> list = null;// = new ArrayList<>();
		try {
			if (client == null)
				client = ClientBuilder.url(new URL(url))
					.username(username)
					.password(password)
					.build();
			database1 = client.database("users", false);
			list = database1.getAllDocsRequestBuilder().includeDocs(true).build().getResponse().getDocsAs(Users.class);
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}
}