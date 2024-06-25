<%@page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
	
		<title></title>
	</head>

	<body>
	
	<%String name=(String)request.getAttribute("name");
	
	String email=(String)request.getAttribute("email");
	String addres=(String)request.getAttribute("addres");
	String phone=(String)request.getAttribute("phone_number");
	
	
	
	%>
		<h1>入力内容をご確認ください</h1>
		<h2>問題がなければ「確定」、修正する場合は「キャンセル」をクリックしてください。</h2>
		
			<table border=1>
					
				<tr>
					<td>氏名</td>
					<td><%=name %></td>	
				</tr>
				
				<tr>
					<td>メールアドレス</td>
					<td><%=email %></td>	
				</tr>
				
				<tr>
					<td>住所</td>
						<td><%=addres %></td>	
				</tr>
				
				<tr>
					<td>電話番号</td>
						<td><%=phone %></td>	
				</tr>
				
				
			
			
			</table>
		
			
			<p>
			
			<button onclick="location.href='<%= request.getContextPath() %>/complete';" >確定</button>
			
			<button onclick="history.back();">キャンセル</button>
			
			</p>
	
	</body>

</html>
