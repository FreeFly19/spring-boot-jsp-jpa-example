package com.github.freefly;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("people")
public class HumanController {
    @Autowired
    private HumanRepository humanRepository;

    @GetMapping
    private String getAll(Map<String, Object> model) {
        model.put("people", humanRepository.findAll());
        return "human/human-list";
    }

    @PostMapping
    private String createHuman(@ModelAttribute Human human) {
        humanRepository.save(human);
        return "redirect:/people";
    }
}
