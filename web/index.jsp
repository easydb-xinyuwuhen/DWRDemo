<%--
  Created by IntelliJ IDEA.
  User: xinyuwuhen
  Date: 8/25/15
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title></title>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/util.js"></script>
    <script type="text/javascript" src="dwr/interface/MessagePush.js"></script>
                                                                                                                                                                                                                                                                                                                    
    <script type="text/javascript">
        function show(data) {
            document.getElementById("area").innerHTML = document.getElementById("area").innerHTML + "\n" + data;
        }
        function send() {
            var msg = $('#in').val();
            MessagePush.send(msg);

        }
    </script>
</head>
<body onload="dwr.engine.setActiveReverseAjax(true);">
<textarea style="width: 800px; height: 500px;" id="area">
</textarea>
<br/>
<input type="text" style="width: 800px;" id="in"
        /> <input type="button" onclick="send()" value="发送">
</body>
</html>
