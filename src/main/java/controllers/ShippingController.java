package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShippingController {
    @GetMapping("/shipping")
    public String shipping(Model m) {
        m.addAttribute("title", "Shipping Calculator");
        return "shipping";
    }
}