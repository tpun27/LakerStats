package com.nba.LakerStats;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CSVUtility {

    public final static String CSV_PATH_START = "src/main/resources/static/csv/";
    public final static String CSV_PATH_END = ".csv";
    public final static String ROSTER_PATH = CSV_PATH_START + "LakersRoster.csv";
    public final static String GAMES_PLAYED_PATH = CSV_PATH_START + "games_played.csv";
    public final static String GAMES_SCHEDULED_PATH = CSV_PATH_START + "games_scheduled.csv";

    public static ArrayList<List<String>> parseCSVData(String path) {
        ArrayList<List<String>> data = new ArrayList<>();
        try {
            BufferedReader csvReader = new BufferedReader(new FileReader(path));
            String row;
            while ((row = csvReader.readLine()) != null) {
                data.add(Arrays.asList(row.split(",")));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return data;
    }
}
