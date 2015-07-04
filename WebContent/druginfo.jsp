<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import="org.json.JSONObject" %>
<%@ page import="org.json.JSONArray" %>
<%@ page import="org.djw.tools.restlet.*" %>
<%@ page import="openfda.classes.ServerAuth" %>
<%

String DrugName = "";
if (request.getParameter("DrugName") !=null) DrugName = request.getParameter("DrugName");

String Message = "";
JSONArray images = new JSONArray();
JSONObject DrugInfo = new JSONObject();
String Images = "";
if (!DrugName.equals("")){
	try {
	    String ServerKey = "";
	    ServerAuth serverAuth = new ServerAuth();
	    ServerKey = serverAuth.getKey();

		int StatusCode = 0;
	    String JsonURL = "";
		String ServiceURI = "/fda/" + ServerKey + "/druginfo/" + DrugName;
	
		RestClient restClient = new RestClient();
		JSONObject jResponse = restClient.getService(ServiceURI);
 	 	JSONObject jBody = jResponse.getJSONObject("Body");
 	 	DrugInfo = jBody.getJSONObject("DrugInfo");
 	 	
	 	images = DrugInfo.getJSONArray("images");
 		
	 	for (int i=0; i<images.length(); i++){
	 		Images += "'<img src='" + images.getString(i) + "'><br>";
	 	}
	 	
	} catch (Exception e) {
		out.println("An error has occured: " + e);
	}
} else {
	Images = "No images found";
}
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="inc/head.jsp" />
	</head>
	<body>
		<jsp:include page="inc/header.jsp" />
		<div id="wrapper">
			<jsp:include page="inc/sidebar.jsp" />
			        <div id="main-wrapper" class="col-md-11 pull-right">
	            <div id="main">
	              <div class="page-header">
	                <h3>Drug Info</h3>
	              </div>
	              <div>
					<dl class="dl-horizontal">
					  <dt>Product NDC</dt>
					  <dd><%=DrugInfo.getString("product_ndc") %></dd>
					  <dt>Substance Name</dt>
					  <dd><%=DrugInfo.getString("substance_name") %></dd>
					  <dt>Product Type</dt>
					  <dd><%=DrugInfo.getString("product_type") %></dd>
					  <dt>Route</dt>
					  <dd><%=DrugInfo.getString("route") %></dd>
					  <dt>Generic Name</dt>
					  <dd><%=DrugInfo.getString("generic_name") %></dd>
					  <dt>Brand Name</dt>
					  <dd><%=DrugInfo.getString("brand_name") %></dd>
					  <dt>Manufacturer Name</dt>
					  <dd><%=DrugInfo.getString("manufacturer_name") %></dd>
					</dl>						
				</div>
	              
	              
	              
	              
                <div>
                	<%=Images%>
                </div>
	             </div>
	        </div>
		</div>
		<jsp:include page="inc/scriptrefs.jsp" />
	</body>
</html>

			
