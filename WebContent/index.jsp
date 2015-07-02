<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>
<h1>ApplicationRx</h1>
<p>
	Submission for pool2.
</p>
<p>
	Select functional area to get output.
</p>

<div>
	<form name="patialDrugForm" method="post" action="partialdrugsearch.jsp">
		<h3>REQ 16542: The user can directly type the name of the drug into the search fields.</h3>
		Type name or partial name of the drug (ex: "od"): <input type="text" name="PartialName">
		<p><input type="submit"></p>
	</form>	
</div>

<div>
	<form name="patialReactionForm" method="post" action="partialreactionsearch.jsp">
		<h3>REQ 16549: The user can directly type the name of a reaction into the search fields.</h3>
		Type name or partial name of the drug (ex: "pain"): <input type="text" name="PartialName">
		<p><input type="submit"></p>
	</form>	
</div>

<div>
		<h3>REQ 16550: The user can select the desired reaction from a list of available reactions.</h3>
		16553. The user can drill down through the output data where applicable - Reactions<br>
		<a href="reactionsearch.jsp">reaction search</a>
</div>

<div>
		<h3>REQ 16722. The user can select the desired drug from a list of available drugs..</h3>
		<a href="drugsearch.jsp">drug search</a>
</div>
<div>
		<h3>#16728. A chart is displayed based on the results returned from a user search..</h3>
		<a href="chart-responsive.jsp">Chart</a>
</div>
<div>
		<h3>Lookup table utilities.</h3>
		<a href="util">utilities</a>
</div>
</body>
</html>