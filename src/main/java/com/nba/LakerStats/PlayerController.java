package com.nba.LakerStats;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/player/{id}")
public class PlayerController {

    @GetMapping
    public String getPlayer(Model model, @PathVariable("id") String id) {
        String path = CSVUtility.CSV_PATH_START + id + CSVUtility.CSV_PATH_END;
        model.addAttribute("playerData", CSVUtility.parseCSVData(path));
        return "player";
    }
}
