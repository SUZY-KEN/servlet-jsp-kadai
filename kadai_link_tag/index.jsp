<%@page contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<title>トップページ用のウェルカムファイル

		</title>
		
		<style>
			body{
				font-family:serif;
				font-weight:bold;
				
			}
		
		
		</style>
	</head>

	<body>
		<a href="<%=request.getContextPath() %>/link?name=侍太郎">名前「侍太郎」に送信</a>
		<% String word=(String)request.getAttribute("name") ;%>
		
		
		<h2><%if(word!=null){out.println(word);} %></h2>
		
		
	
	</body>


</html>