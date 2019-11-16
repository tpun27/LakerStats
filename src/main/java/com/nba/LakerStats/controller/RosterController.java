package com.nba.LakerStats.controller;

import com.nba.LakerStats.CSVUtility;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/roster")
public class RosterController {

    @GetMapping
    public String getRoster(Model model) {
        model.addAttribute("rosterData", CSVUtility.parseCSVData(CSVUtility.ROSTER_PATH));
        return "roster";
    }
}
