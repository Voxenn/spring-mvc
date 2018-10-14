package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    @GetMapping("/")
    public String index(Model m) {
        m.addAttribute("attribute", "Exceptional quality. <br /> Unique inventory. <br /> Outstanding service.");
        m.addAttribute("title", "Sotai");
        m.addAttribute("end", "Take care!");
        return "index";
    }

    @GetMapping("/dispatcher/staticPage")
    public String redirect() {
        return "redirect:/pages/static.html";
    }
}
