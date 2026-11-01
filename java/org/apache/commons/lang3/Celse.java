package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* renamed from: org.apache.commons.lang3.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: do, reason: not valid java name */
    private static final ConcurrentMap<String, List<Locale>> f28701do = new ConcurrentHashMap();

    /* renamed from: if, reason: not valid java name */
    private static final ConcurrentMap<String, List<Locale>> f28702if = new ConcurrentHashMap();

    /* renamed from: org.apache.commons.lang3.else$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private static final List<Locale> f28703do;

        /* renamed from: if, reason: not valid java name */
        private static final Set<Locale> f28704if;

        static {
            ArrayList arrayList = new ArrayList(Arrays.asList(Locale.getAvailableLocales()));
            f28703do = Collections.unmodifiableList(arrayList);
            f28704if = Collections.unmodifiableSet(new HashSet(arrayList));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static List<Locale> m32355case(Locale locale) {
        return m32357else(locale, locale);
    }

    /* renamed from: do, reason: not valid java name */
    public static List<Locale> m32356do() {
        return Cdo.f28703do;
    }

    /* renamed from: else, reason: not valid java name */
    public static List<Locale> m32357else(Locale locale, Locale locale2) {
        ArrayList arrayList = new ArrayList(4);
        if (locale != null) {
            arrayList.add(locale);
            if (locale.getVariant().length() > 0) {
                arrayList.add(new Locale(locale.getLanguage(), locale.getCountry()));
            }
            if (locale.getCountry().length() > 0) {
                arrayList.add(new Locale(locale.getLanguage(), ""));
            }
            if (!arrayList.contains(locale2)) {
                arrayList.add(locale2);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Locale> m32358for(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        List<Locale> list = f28702if.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        List<Locale> listM32356do = m32356do();
        for (int i = 0; i < listM32356do.size(); i++) {
            Locale locale = listM32356do.get(i);
            if (str.equals(locale.getLanguage()) && locale.getCountry().length() != 0 && locale.getVariant().isEmpty()) {
                arrayList.add(locale);
            }
        }
        List<Locale> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        ConcurrentMap<String, List<Locale>> concurrentMap = f28702if;
        concurrentMap.putIfAbsent(str, listUnmodifiableList);
        return concurrentMap.get(str);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Locale m32359goto(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return new Locale("", "");
        }
        if (str.contains("#")) {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        int length = str.length();
        if (length < 2) {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        if (str.charAt(0) == '_') {
            if (length < 3) {
                throw new IllegalArgumentException("Invalid locale format: " + str);
            }
            char cCharAt = str.charAt(1);
            char cCharAt2 = str.charAt(2);
            if (!Character.isUpperCase(cCharAt) || !Character.isUpperCase(cCharAt2)) {
                throw new IllegalArgumentException("Invalid locale format: " + str);
            }
            if (length == 3) {
                return new Locale("", str.substring(1, 3));
            }
            if (length < 5) {
                throw new IllegalArgumentException("Invalid locale format: " + str);
            }
            if (str.charAt(3) == '_') {
                return new Locale("", str.substring(1, 3), str.substring(4));
            }
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        String[] strArrSplit = str.split("_", -1);
        int length2 = strArrSplit.length - 1;
        if (length2 == 0) {
            if (Cclass.q(str) && (length == 2 || length == 3)) {
                return new Locale(str);
            }
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        if (length2 == 1) {
            if (Cclass.q(strArrSplit[0]) && ((strArrSplit[0].length() == 2 || strArrSplit[0].length() == 3) && strArrSplit[1].length() == 2 && Cclass.r(strArrSplit[1]))) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        if (length2 == 2 && Cclass.q(strArrSplit[0]) && ((strArrSplit[0].length() == 2 || strArrSplit[0].length() == 3) && ((strArrSplit[1].length() == 0 || (strArrSplit[1].length() == 2 && Cclass.r(strArrSplit[1]))) && strArrSplit[2].length() > 0))) {
            return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
        }
        throw new IllegalArgumentException("Invalid locale format: " + str);
    }

    /* renamed from: if, reason: not valid java name */
    public static Set<Locale> m32360if() {
        return Cdo.f28704if;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m32361new(Locale locale) {
        return m32356do().contains(locale);
    }

    /* renamed from: try, reason: not valid java name */
    public static List<Locale> m32362try(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        List<Locale> list = f28701do.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        List<Locale> listM32356do = m32356do();
        for (int i = 0; i < listM32356do.size(); i++) {
            Locale locale = listM32356do.get(i);
            if (str.equals(locale.getCountry()) && locale.getVariant().isEmpty()) {
                arrayList.add(locale);
            }
        }
        List<Locale> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        ConcurrentMap<String, List<Locale>> concurrentMap = f28701do;
        concurrentMap.putIfAbsent(str, listUnmodifiableList);
        return concurrentMap.get(str);
    }
}
