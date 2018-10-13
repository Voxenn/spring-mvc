package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    @GetMapping("/")
    public String index(Model m) {
        m.addAttribute("attribute", "value");
        m.addAttribute("title", "Demo Store");
        m.addAttribute("end", "Take care!");
        return "index";
    }

    @GetMapping("/dispatcher/staticPage")
    public String redirect() {
        return "redirect:/pages/static.html";
    }
}
