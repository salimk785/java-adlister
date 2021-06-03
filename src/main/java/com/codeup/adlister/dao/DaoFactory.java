package com.codeup.adlister.dao;

import sun.security.krb5.Config;

public class DaoFactory {
    private static Ads adsDao;
    private static Config config = new config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }
}
