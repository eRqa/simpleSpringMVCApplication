package ru.ivlasov.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails() {
        return "askEmpDetailsView";
    }

    @RequestMapping("/showDetails")
    public String showEmpDetails() {
        return "showEmpDetailsView";
    }

}
