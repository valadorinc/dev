<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import="org.json.JSONObject" %>
<%@ page import="org.json.JSONArray" %>
<%@ page import="org.djw.tools.restlet.*" %>
<%@ page import="openfda.classes.ServerAuth" %>
<%

String Drug = "";
String Drug2 = "";
String Drug1a = "";
String Drug2a = "";

String Limit = "";
if (request.getParameter("drug1") !=null) Drug = request.getParameter("drug1");
if (request.getParameter("drug2") !=null) Drug2 = request.getParameter("drug2");
if (request.getParameter("drug1a") !=null) Drug1a = request.getParameter("drug1a");
if (request.getParameter("drug2a") !=null) Drug2a = request.getParameter("drug2a");
if (request.getParameter("limit") !=null) Limit = request.getParameter("limit");

String Message = "";
String Records = "";
if (!Drug.equals("0")){
	try {
	    String ServerKey = "";
	    ServerAuth serverAuth = new ServerAuth();
	    ServerKey = serverAuth.getKey();

		int StatusCode = 0;
	    String JsonURL = "";
	    String DrugList = "";
	    DrugList += Drug;
	    if (!Drug2.equals("0")) DrugList += "~" + Drug2;
	    if (!Drug1a.equals("")) DrugList += "~" + Drug1a;
	    if (!Drug2a.equals("")) DrugList += "~" + Drug2a;
	
		String ServiceURI = "/fda/" + ServerKey + "/search/drug/" + DrugList;
	
		RestClient restClient = new RestClient();
		JSONObject jResponse = restClient.getService(ServiceURI);
//System.out.println(jResponse.toString(1));
	 	JSONObject jBody = jResponse.getJSONObject("Body");
		JSONArray cols = jBody.getJSONObject("ReportOutput").getJSONArray("cols");
		JSONArray rows = jBody.getJSONObject("ReportOutput").getJSONArray("rows");
	
		Records = "<table  class='table table-striped'>";
		Records += "<tr>";
		for (int i=0; i<cols.length(); i++){
			Records += "<th>" + cols.getString(i) + "</th>";
		}
		Records += "</tr>";
		for (int i=0; i<rows.length(); i++){
			Records += "<tr>";
			for (int c=0; c<cols.length(); c++){
				JSONArray row = rows.getJSONArray(i);
				Records += "<td>" + row.getString(c) + "</td>";
			}
			Records += "</tr>";
		}
		Records += "</table>";
		
	} catch (Exception e) {
		out.println("An error has occured: " + e);
	}
} else {
	Records = "No drug selected";
}

%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="inc/head.jsp" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		
	</head>
	<body>
		<jsp:include page="inc/header.jsp" />
		<div id="wrapper">
			<jsp:include page="inc/sidebar.jsp" />
			        <div id="main-wrapper" class="col-md-11 pull-right">
	            <div id="main">
	              <div class="page-header">
	                <h3>Drug Search</h3>
	              </div>
	                <div>
	                	<div id="searchResults" style="width:60%">
							<%=Records %>
						</div>
	                </div>
	             </div>
	        </div>
		</div>
		<jsp:include page="inc/scriptrefs.jsp" />
	</body>
</html>

