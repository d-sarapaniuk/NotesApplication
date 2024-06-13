<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Note</title>
</head>
<body>

<h2>Add Note</h2>
<form action="/notes" method="post">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id"><br><br>
    <label for="title">Title:</label>
    <input type="text" id="title" name="title"><br><br>
    <label for="content">Content:</label>
    <textarea id="content" name="content"></textarea><br><br>
    <input type="submit" value="Add Note">
</form>

<a href="notes">Back to Notes List</a>
</body>
</html>

