package com.codegym.casemd3.utils;

import java.text.NumberFormat;
import java.util.Locale;

public class CurrencyUtils {
    public static Locale localeVN = new Locale("vi", "VN");
    public static NumberFormat  currencyVN = NumberFormat.getCurrencyInstance(localeVN);;
}
