package com.github.freefly;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
import java.util.Optional;

@Controller
public class HomeController {

    @GetMapping
    public String home(Map<String, Object> model, @RequestParam("name") Optional<String> oName) {
        String name = oName.orElse("world!");

        model.put("name", name);

        return "welcome";
    }

}
