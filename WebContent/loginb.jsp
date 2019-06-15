<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.json.JSONObject,org.json.JSONArray" %>
<html>
 
<head>
    <title>练习</title>
    
</head>
<body>
<button onclick="jget()">获取</button><br/>
第一个值<span style="display:block" id="1">hhh</span><br/>
第二个值<span style="display:block" id="2">ddd</span><br/>
<button onclick="jget1()">获取</button><br/>


<script type="text/javascript">
function jget(){
	
	window.location.href="login1.jsp";
	}
function jget1(){
	var json='<%=request.getParameter("r")%>';
	var ja = JSON.parse(json);
	document.getElementById("1").style.display = ja[0].p1;
	document.getElementById("2").style.display = ja[0].p2;
}


</script>


</body>
</html>
