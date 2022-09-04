<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="opinion.opinionDAO" %>
<%@ page import="opinion.opinionDTO" %>
<%@ page import="java.io.PrintWriter" %>

<%
	request.setCharacterEncoding("UTF-8");

	String userNickName = null;
	int opinionNumber = 0;
	String userOpinion = null;
	String referer = request.getHeader("referer");
	
	if(request.getParameter("userNickName") != null) {
		userNickName = request.getParameter("userNickName");
	}
	
	if(request.getParameter("userOpinion") != null) {
		userOpinion = request.getParameter("userOpinion");
	}

	if(userNickName == null || userNickName.equals("") || userOpinion == null || userOpinion.equals("")) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 항목이 존재합니다.')");
		script.println("history.back()");
		script.println("</script>");
		script.close();
		return;
	}
	
	opinionDAO opinionDao = new opinionDAO();
	int result = opinionDao.write(new opinionDTO(userNickName, userOpinion, opinionNumber));
	
	
	if(result == -1) { // 의견 등록 실패
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('의견 등록에 실패하였습니다.');");
		script.println("history.back()");
		script.println("</script>");
		script.close();
		return;
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='" + referer + "'");
		script.println("</script>");
		script.close();
		return;
	}

%>