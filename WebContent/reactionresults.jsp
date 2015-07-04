<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import="org.json.JSONObject" %>
<%@ page import="org.json.JSONArray" %>
<%@ page import="org.djw.tools.restlet.*" %>
<%@ page import="openfda.classes.ServerAuth" %>
<%

String Reaction = "";
String Reaction2 = "";
String ReactionList = "";
if (request.getParameter("reaction1") !=null) Reaction = request.getParameter("reaction1");
if (request.getParameter("reaction2") !=null) Reaction2 = request.getParameter("reaction2");

String Message = "";
String Records = "";
if (!Reaction.equals("0")){
	try {
	    String ServerKey = "";
	    ServerAuth serverAuth = new ServerAuth();
	    ServerKey = serverAuth.getKey();

		int StatusCode = 0;
	    String JsonURL = "";
	    
	    ReactionList += Reaction;
	    if (!Reaction2.equals("0")) ReactionList += "~" + Reaction2;
		String ServiceURI = "/fda/" + ServerKey + "/search/reaction/" + ReactionList;
	
		RestClient restClient = new RestClient();
		JSONObject jResponse = restClient.getService(ServiceURI);
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
				String dat = row.getString(c);
				if (c == 0){
					dat = "<a href='druginfo.jsp?DrugName=" + dat + "'>" + dat + "</a>";
				}
				Records += "<td>" + dat + "</td>";
			}
			Records += "</tr>";
		}
		Records += "</table>";
		
	} catch (Exception e) {
		out.println("An error has occured: " + e);
	}
} else {
	Records = "No reaction selected";
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
	                <h3>Reaction Search</h3>
	                </div>
	                <div>
						<div id="searchResults" style="width:60%">
						<div><%=ReactionList.replace("~", " & ") %></div>
						<div class="pull-right"><a href="chart-responsive.jsp?ThingType=reactions&ThingList=<%=ReactionList%>">graph results</a></div>
							<%=Records %>
						</div>
	                </div>
	             </div>
	        </div>
		</div>
		<jsp:include page="inc/scriptrefs.jsp" />
	</body>
</html>
