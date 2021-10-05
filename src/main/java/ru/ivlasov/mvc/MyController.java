package ru.ivlasov.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String showEmpDetails(@RequestParam("employeeName") String employeeName, Model model) {
        employeeName = "Mr. " + employeeName;
        model.addAttribute("employeeName", employeeName);
        return "showEmpDetailsView";
    }

}
