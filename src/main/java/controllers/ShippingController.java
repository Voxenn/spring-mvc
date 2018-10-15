package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShippingController {
    @RequestMapping("/shipping")
    public String shipping(Model m) {
        m.addAttribute("title", "Shipping Calculator");
        return "shipping";
    }
}