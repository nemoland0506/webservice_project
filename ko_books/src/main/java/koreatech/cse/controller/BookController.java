package koreatech.cse.controller;

import koreatech.cse.domain.Book;
import koreatech.cse.domain.BookSearchable;
import koreatech.cse.repository.BookMapper;
import koreatech.cse.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import koreatech.cse.domain.NaverBook;


@Controller
@RequestMapping("/book")
public class BookController {

    @Inject
    private BookMapper bookMapper;
    @Inject
    private UserService userService;



    @RequestMapping(value="/list", method=RequestMethod.GET)
    public String list(Model model, @RequestParam(required=false) String title, @RequestParam(required=false) String author, @RequestParam(required=false) String order) {
        BookSearchable searchable = new BookSearchable();
        searchable.setTitle(title);
        searchable.setAuthor(author);
        searchable.setOrder(order);
        model.addAttribute("books", bookMapper.findByScript(searchable));
        return "list";
    }

    @RequestMapping(value="/register", method=RequestMethod.GET)
    public String register(Model model) {
        Book book = new Book();
        model.addAttribute("book", book);
        return "register";
    }

    @Transactional
    @RequestMapping(value="/register", method= RequestMethod.POST)
    public String register(@ModelAttribute Book book) {
        userService.register(book);
        return "redirect:/book/list";
    }

    @RequestMapping(value="/delete", method= RequestMethod.GET)
    public String delete(@RequestParam int id) {
        bookMapper.delete(id);
        return "redirect:/book/list";
    }




}
