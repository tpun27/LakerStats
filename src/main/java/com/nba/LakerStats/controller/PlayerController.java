package com.nba.LakerStats.controller;

import com.nba.LakerStats.CSVUtility;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/player/{id}")
public class PlayerController {

    final static String IMG_PATH_START = "/img/";
    final static String IMG_PATH_END = ".png";

    @GetMapping
    public String getPlayer(Model model, @PathVariable("id") String id) {
        String csvPath = CSVUtility.CSV_PATH_START + id + CSVUtility.CSV_PATH_END;
        String imgPath = IMG_PATH_START + id + IMG_PATH_END;
        model.addAttribute("playerData", CSVUtility.parseCSVData(csvPath));
        model.addAttribute("imgPath", imgPath);
        return "player";
    }
}
