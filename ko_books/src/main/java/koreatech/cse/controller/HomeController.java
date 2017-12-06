package koreatech.cse.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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


import javax.inject.Inject;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/")
public class HomeController {

    @Inject
    private BookMapper bookMapper;
    @Inject
    private UserService userService;


    @Value("${env.text}")
    private String env;

    @ModelAttribute("name")
    private String getName() {
        return "IamHomeControllerModelAttribute";
    }



    @RequestMapping
    public String home(Model model,
                       @RequestParam(required=false) String title,
                       @RequestParam(required=false) String author,
                       @RequestParam(required=false) String publisher,
                       @RequestParam(required=false) String pubdate,
                       @RequestParam(required=false) String phone,
                       @RequestParam(required=false) String major,
                       @RequestParam(required=false) String price,
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
        searchable.setPhone(phone);
        searchable.setPrice(price);
        searchable.setOrder(order);

        model.addAttribute("books", bookMapper.findByScript(searchable));

        Map majorOption = new HashMap();
        majorOption.put("기계","major_1");
        majorOption.put("메카","major_2");
        majorOption.put("전전통","major_3");
        majorOption.put("컴공","major_4");
        majorOption.put("디자인·건축","major_5");
        majorOption.put("에신화","major_6");
        majorOption.put("산경","major_7");
        majorOption.put("교양·HRD·MSC","major_8");
        majorOption.put("기타","major_9");
        model.addAttribute("majorOption",majorOption);


        return "index";
    }

    @RequestMapping("/env")
    public String env(Model model) {
        model.addAttribute("textFromController", env);
        return "hello";
    }

    @RequestMapping("/requestParamTest")
    public String requestParamTest(@RequestParam(name = "a", required=false, defaultValue = "0") int a,
                                   @RequestParam("b") String b,
                                   @RequestParam(value= "c", defaultValue = "true") boolean c) {
        System.out.println("a = " + a);
        System.out.println("b = " + b);
        System.out.println("c = " + c);
        return "hello";
    }

    @RequestMapping("/pathVariableTest/{a}/{b}/{c}")
    public String pathVariableTest(@PathVariable(value="a") String a, @PathVariable String b, @PathVariable int c) {
        System.out.println("a = " + a);
        System.out.println("b = " + b);
        System.out.println("c = " + c);
        return "hello";
    }

    @RequestMapping("/requestParamMapTest")
    public String requestParamMapTest(@RequestParam Map<String, String> map) {
        for(Map.Entry entry: map.entrySet()) {
            System.out.println(entry.getKey() + "=" + entry.getValue());
        }
        return "hello";
    }

    @RequestMapping(value = "/requestMappingGetTest",
            method = RequestMethod.GET,
            params ="test=true")
    public String requestMappingGetTest(Model model) {
        model.addAttribute("textFromController", "World");
        return "hello";
    }

    @RequestMapping(value = "/requestMappingPostTest",
            method = RequestMethod.POST)
    @ResponseBody
    public String requestMappingPostTest() {
        return "hello";
    }


}
