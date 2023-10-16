<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
  String path = request.getRealPath("upload");

  MultipartRequest multi = new MultipartRequest(request, path, 1024*10, "UTF-8");
  String filename = path + "/" + multi.getFilesystemName("userfile"); // 업로드되는 파>일명
%>

<li>업로드 성공 : <%=filename%></li>
