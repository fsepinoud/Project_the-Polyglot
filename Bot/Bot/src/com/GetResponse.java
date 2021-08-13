package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

@WebServlet("/GetResponse")
public class GetResponse extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final OkHttpClient client = new OkHttpClient().newBuilder().build();
	private String BASE_URL = "http://localhost:5000/chatbot";

	private String messageFromBot;

	public GetResponse() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Processing..");
		String userMessage = request.getParameter("sentmessage");
		String botMessage = botRequest(userMessage);

		request.setAttribute("bot_message", botMessage);
		request.setAttribute("user_message", userMessage);
		
		response.setContentType("application/text");
	    response.setCharacterEncoding("UTF-8");
		response.getWriter().write(botMessage);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	String botRequest(String message) {
		try {
			RequestBody msg = new FormBody.Builder().add("message", message).build();
			Request request = new Request.Builder().url(BASE_URL).post(msg).build();
			Response response = client.newCall(request).execute();
			JSONObject jsonObj = new JSONObject(response.body().string());
			messageFromBot = jsonObj.get("message").toString();
			response.body().close();
		} catch (JSONException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return messageFromBot;
	}

}
