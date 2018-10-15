package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShoppingController {
    @RequestMapping("/shopping")
    public String shopping(Model m) {
        m.addAttribute("title", "Shopping Cart");
        return "shopping";
    }
}
