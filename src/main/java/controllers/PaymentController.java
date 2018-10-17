package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
    @RequestMapping("/payment")
    public String products(Model m) {
        m.addAttribute("title", "Payment");
        return "payment";
    }
}
