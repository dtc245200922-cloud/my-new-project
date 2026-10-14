<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.ZonedDateTime,java.time.format.DateTimeFormatter" %>
<%
    // Lấy thời gian và múi giờ của máy chủ tại mỗi lần nhận yêu cầu.
    ZonedDateTime now = ZonedDateTime.now();
    String time = now.format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss"));
    response.setHeader("Cache-Control", "no-store");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thời gian hệ thống</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f8fafc; color: #243247; text-align: center; margin: 0; padding: 80px 20px; }
        main { max-width: 650px; margin: auto; padding: 30px; background: white; border: 1px solid #dbe3ed; border-radius: 8px; }
        h1 { color: #1b2a7a; }
        strong { color: #d45118; font-size: 24px; }
        a { display: inline-block; margin: 8px; color: #1b2a7a; }
    </style>
</head>
<body>
    <main>
        <h1>Thời gian hệ thống hiện tại</h1>
        <% if (request.getAttribute("message") != null) { %>
            <p>Chào mừng bạn đến với Servlet đầu tiên!</p>
        <% } %>
        <p><strong><%= time %></strong></p>
        <p>Múi giờ máy chủ: <%= now.getZone().getId() %></p>
        <p>Thời gian được cập nhật khi tải lại trang.</p>
        <a href="<%= request.getContextPath() %>/">Tải lại trang chủ</a>
        <a href="<%= request.getContextPath() %>/hello">Đi tới HelloServlet</a>
    </main>
</body>
</html>
