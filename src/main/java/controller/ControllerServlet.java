package controller;

import model.Note;
import model.NoteRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = {"/notes", "/notes/add"})
public class ControllerServlet extends HttpServlet {
    NoteRepository noteRepository = NoteRepository.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        if (path.equals("/notes/add")){
            req.getRequestDispatcher("/addNote.jsp").forward(req, resp);
        }
        else {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        Note newNote = new Note(id, title, content);

        noteRepository.addNote(newNote);

        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
