<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>学生管理系统</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<style>
        body{
        	background:url("images/index.jpg");
            background-size:100% 100%;
        	margin:0px;
        	background-attachment:fixed;
        	background-repeat:no-repeat;       
        }
    </style>

</head>
<body>
	<div >
	<form  method="post" style="margin-top:300px;margin-left:550px;">
		<div class="form-group">
		    <label for="usr" style="display:inline;">用&nbsp;&nbsp;&nbsp;&nbsp;户：</label>
		    <input type="text" name="usr" id="usr" />
	    </div>
	    <div class="form-group">
	        <label for="pwd">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
	        <input type="password" name="pwd" id="pwd"/>
	    </div>
	    
	    <div class="form-group">
            <label for="captcha">验证码：</label>
			<input name="code" id="code" type="text" />
            <img id="yanzheng" name="captcha" src="yanzhengma.jsp" onclick="change();" style="width:90px;height:34px"/>
       </div>
	    <!--  验证码：    <p id="1" style="display:inline"></p> -->
	     <div>
	    <button type="submit"  onclick="return logCheck();" formaction="log.jsp?req=login">登陆</button>
	    <button type="submit" class="btn btn-primary" formaction="log.jsp?req=register">注册</button> </div>
	</form>
</div>

    <script type="text/javascript">

	function change(){
		var img=document.getElementById("yanzheng");
		img.src=img.src+"?";
	}
    
	function cookieCheck(){
		var cap = document.getElementById("code").value;
		if(document.cookie.length>0){
			c_start = document.cookie.indexOf("code=");
			if(c_start != -1){
				c_start = c_start + 5;
				c_end = document.cookie.indexOf(";",c_start);
				if(c_end == -1){
					c_end = document.cookie.length;		
				} 
				if(unescape(document.cookie.substring(c_start,c_end)) == cap){
					return true;
				}else{
					alert("验证码错误。");
					return false;
				}					
			}else
				alert("请输入验证码。");
		}		
		}
    	
	function logCheck(){
		var c = document.cookie.split(";");
		var code = document.getElementById("code").value;
		if(code == "" || code == null){
			alert("请输入验证码。");
			return false;
		}
			
		else{
			for(var i=0;i<c.length;i++){
				var cname = c[i].trim();
				if(cname.substring(5,9) == code){
					return true;				
				}else
					continue;
			}alert("验证码错误");return false;
			
		}
		}
		
    	
    	
    	
	</script>




</body>
</html>