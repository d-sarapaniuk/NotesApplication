<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Note, model.NoteRepository" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Notes App</title>
</head>
<body>

<% ArrayList<Note> noteList = NoteRepository.getInstance().getNoteList();
    if (noteList != null) {
%>
<table>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Content</th>
    </tr>
    <% for (Note note : noteList) { %>
    <tr>
        <td><%= note.getId() %></td>
        <td><%= note.getTitle() %></td>
        <td><%= note.getContent() %></td>
    </tr>
    <% } %>
</table>

<% } else { %>
<p>No notes found.</p>
<% } %>

<a href="/notes/add">Add a new note</a>
</body>
</html>
