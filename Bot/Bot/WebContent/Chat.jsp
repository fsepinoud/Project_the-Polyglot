<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chat Bot</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Raleway:wght@500&display=swap"
	rel="stylesheet">
</head>
<body>

	<section class="msger">
		<header class="msger-header">
			<div class="msger-header-title">
				<i class="fas fa-comment-alt"></i> My Chatbot
			</div>
			<div class="msger-header-options">
				<span><i class="fas fa-cog"></i></span>
			</div>
		</header>

		<main class="msger-chat">
			<div class="msg left-msg">
				<div class="msg-img"
					style="background-image: url(assets/img/botBg.svg)"></div>

				<div class="msg-bubble">
					<div class="msg-info">
						<div class="msg-info-name">BOT</div>
						<div class="msg-info-time">12:45</div>
					</div>

					<div class="msg-text">Hi, welcome to ChatRobo Go ahead and
						send me a message. 😄</div>
				</div>
			</div>
		</main>

		<form class="msger-inputarea">
			<input type="text" class="msger-input"
				placeholder="Enter your message...">
			<button type="submit" class="msger-send-btn">Send</button>
		</form>
	</section>
</body>
<script src="assets/js/app.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
    var test = <%=request.getAttribute("bot_message")%>;
</script>
<link rel="stylesheet" type="text/css" href="assets/css/styles.css">
</html>