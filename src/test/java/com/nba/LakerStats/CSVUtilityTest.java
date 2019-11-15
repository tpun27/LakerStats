package com.nba.LakerStats;

import org.junit.jupiter.api.Test;

public class CSVUtilityTest {

    @Test
    public void testparseCSVDataRoster() {
        System.out.println(CSVUtility.parseCSVData(CSVUtility.ROSTER_PATH));
    }

    @Test
    public void testparseCSVDataPlayer() {
        System.out.println(CSVUtility.parseCSVData(CSVUtility.CSV_PATH_START + "0" + CSVUtility.CSV_PATH_END));
    }
}