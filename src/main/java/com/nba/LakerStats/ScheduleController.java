package com.nba.LakerStats;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {

    @GetMapping
    public String getSchedule(Model model) {
        model.addAttribute("playedData", CSVUtility.parseCSVData(CSVUtility.GAMES_PLAYED_PATH));
        model.addAttribute("scheduleData", CSVUtility.parseCSVData(CSVUtility.GAMES_SCHEDULED_PATH));
        return "schedule";
    }
}
