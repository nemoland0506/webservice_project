package koreatech.cse.controller;

import koreatech.cse.domain.Book;
import koreatech.cse.domain.BookSearchable;
import koreatech.cse.repository.BookMapper;
import koreatech.cse.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import koreatech.cse.domain.NaverBook;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/book")
public class BookController {

    @Inject
    private BookMapper bookMapper;
    @Inject
    private UserService userService;



    @RequestMapping(value="/list", method=RequestMethod.GET)
    /*
    public String list(Model model, @RequestParam(required=false) String title, @RequestParam(required=false) String author, @RequestParam(required=false) String order) {
        BookSearchable searchable = new BookSearchable();
        searchable.setTitle(title);
        searchable.setAuthor(author);
        searchable.setOrder(order);
        model.addAttribute("books", bookMapper.findByScript(searchable));
        return "list";
    }
    */

    public String list(Model model,
                       @RequestParam(required=false) String title,
                       @RequestParam(required=false) String author,
                       @RequestParam(required=false) String publisher,
                       @RequestParam(required=false) String pubdate,
                       @RequestParam(required=false) String major,
                       @RequestParam(required=false) String order) {
        // jsp에서 변수 ${textFromController}를 정의하면 String "World"가 출력(참조)됨.
        // model.addAttribute(x, y)는 controller에서 @RequestMapping(URL)로 맵핑된 view와 연결되어
        // 객체명 x을 통해 객체값 y를 전달할 수 있다.

        BookSearchable searchable = new BookSearchable();
        searchable.setTitle(title);
        searchable.setAuthor(author);
        searchable.setPublisher(publisher);
        searchable.setPubdate(pubdate);
        searchable.setMajor(major);
        searchable.setOrder(order);

        model.addAttribute("books", bookMapper.findByScript(searchable));

        return "index";
    }


    @RequestMapping(value="/register", method=RequestMethod.GET)
    public String register(Model model) {
        model.addAttribute("book", new Book());

        return "register";
    }


    @Transactional
    @RequestMapping(value="/register", method= RequestMethod.POST)
    public String register(@ModelAttribute Book book) {

        userService.register(book);
        return "redirect:/";
    }

    @RequestMapping(value="/delete", method= RequestMethod.GET)
    public String delete(@RequestParam int id) {
        bookMapper.delete(id);
        return "redirect:/book/list";
    }




}
