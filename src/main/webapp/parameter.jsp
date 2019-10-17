<%-- 
    Document   : random
    Created on : Sep 23, 2018, 8:44:44 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv = "refresh" content = "1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" integrity="sha256-46qynGAkLSFpVbEBog43gvNhfrOj+BmwXdxFgVK/Kvc=" crossorigin="anonymous" />
    </head>
    <%
        String color="blue";//從 request.getParameter("...") 取得 color 參數
        String text = "hello";
        String icon = "fa-accessible-icon";
        String [] colors = new String[] {"blue", "yellow", "red", "brown", "lightpurple", "green", "white"};
        String [] texts = new String[] {"剪刀", "石頭", "布"};
        String [] icons = new String[] {"fa-accessible-icon"};
        
        String parameter = request.getParameter("color");
        if (parameter != null) {
            color = parameter;
        } else {
            color = colors[(int) (Math.random()*1000%colors.length)];
            text = texts[(int) (Math.random()*1000%texts.length)];
            icon = icons[(int) (Math.random()*1000%icons.length)];
        }
        // 額外：若 user 沒輸入參數，就隨機抓顏色
    %>
    <!--
    利用 
    這個寫法，產生 bgcolor 屬性的內容
    -->
    <body bgcolor="<%=color%>">
        <script>
            // 導入java腳本，可輸入運算 (因為html沒有運算能力)
        </script>
        <h1>Hello World!  <%=text%></h1>
        <span class = "fab <%=icon%>"></span>
    </body>
</html>
