package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.j41;
import fi.iki.elonen.Cdo;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.import, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cimport {

    /* renamed from: do, reason: not valid java name */
    private static final Object f17693do;

    /* renamed from: for, reason: not valid java name */
    private static final Object[][] f17694for;

    /* renamed from: if, reason: not valid java name */
    private static final Object[][] f17695if;

    /* renamed from: new, reason: not valid java name */
    private static final Object[][] f17696new;

    /* renamed from: try, reason: not valid java name */
    private static final Object[][] f17697try;

    static {
        Object obj = new Object();
        f17693do = obj;
        f17695if = new Object[][]{new Object[]{"00", 18}, new Object[]{"01", 14}, new Object[]{"02", 14}, new Object[]{"10", obj, 20}, new Object[]{"11", 6}, new Object[]{"12", 6}, new Object[]{Cdo.HEADER_WEBSOCKET_VERSION_VALUE, 6}, new Object[]{"15", 6}, new Object[]{"17", 6}, new Object[]{"20", 2}, new Object[]{"21", obj, 20}, new Object[]{"22", obj, 29}, new Object[]{"30", obj, 8}, new Object[]{"37", obj, 8}, new Object[]{"90", obj, 30}, new Object[]{"91", obj, 30}, new Object[]{"92", obj, 30}, new Object[]{"93", obj, 30}, new Object[]{"94", obj, 30}, new Object[]{"95", obj, 30}, new Object[]{"96", obj, 30}, new Object[]{"97", obj, 30}, new Object[]{"98", obj, 30}, new Object[]{"99", obj, 30}};
        f17694for = new Object[][]{new Object[]{"240", obj, 30}, new Object[]{"241", obj, 30}, new Object[]{"242", obj, 6}, new Object[]{"250", obj, 30}, new Object[]{"251", obj, 30}, new Object[]{"253", obj, 17}, new Object[]{"254", obj, 20}, new Object[]{"400", obj, 30}, new Object[]{"401", obj, 30}, new Object[]{"402", 17}, new Object[]{"403", obj, 30}, new Object[]{"410", 13}, new Object[]{"411", 13}, new Object[]{"412", 13}, new Object[]{"413", 13}, new Object[]{"414", 13}, new Object[]{"420", obj, 20}, new Object[]{"421", obj, 15}, new Object[]{"422", 3}, new Object[]{"423", obj, 15}, new Object[]{"424", 3}, new Object[]{"425", 3}, new Object[]{"426", 3}};
        f17696new = new Object[][]{new Object[]{"310", 6}, new Object[]{"311", 6}, new Object[]{"312", 6}, new Object[]{"313", 6}, new Object[]{"314", 6}, new Object[]{"315", 6}, new Object[]{"316", 6}, new Object[]{"320", 6}, new Object[]{"321", 6}, new Object[]{"322", 6}, new Object[]{"323", 6}, new Object[]{"324", 6}, new Object[]{"325", 6}, new Object[]{"326", 6}, new Object[]{"327", 6}, new Object[]{"328", 6}, new Object[]{"329", 6}, new Object[]{"330", 6}, new Object[]{"331", 6}, new Object[]{"332", 6}, new Object[]{"333", 6}, new Object[]{"334", 6}, new Object[]{"335", 6}, new Object[]{"336", 6}, new Object[]{"340", 6}, new Object[]{"341", 6}, new Object[]{"342", 6}, new Object[]{"343", 6}, new Object[]{"344", 6}, new Object[]{"345", 6}, new Object[]{"346", 6}, new Object[]{"347", 6}, new Object[]{"348", 6}, new Object[]{"349", 6}, new Object[]{"350", 6}, new Object[]{"351", 6}, new Object[]{"352", 6}, new Object[]{"353", 6}, new Object[]{"354", 6}, new Object[]{"355", 6}, new Object[]{"356", 6}, new Object[]{"357", 6}, new Object[]{"360", 6}, new Object[]{"361", 6}, new Object[]{"362", 6}, new Object[]{"363", 6}, new Object[]{"364", 6}, new Object[]{"365", 6}, new Object[]{"366", 6}, new Object[]{"367", 6}, new Object[]{"368", 6}, new Object[]{"369", 6}, new Object[]{"390", obj, 15}, new Object[]{"391", obj, 18}, new Object[]{"392", obj, 15}, new Object[]{"393", obj, 18}, new Object[]{"703", obj, 30}};
        f17697try = new Object[][]{new Object[]{"7001", 13}, new Object[]{"7002", obj, 30}, new Object[]{"7003", 10}, new Object[]{"8001", 14}, new Object[]{"8002", obj, 20}, new Object[]{"8003", obj, 30}, new Object[]{"8004", obj, 30}, new Object[]{"8005", 6}, new Object[]{"8006", 18}, new Object[]{"8007", obj, 30}, new Object[]{"8008", obj, 12}, new Object[]{"8018", 18}, new Object[]{"8020", obj, 25}, new Object[]{"8100", 6}, new Object[]{"8101", 10}, new Object[]{"8102", 2}, new Object[]{"8110", obj, 70}, new Object[]{"8200", obj, 70}};
    }

    private Cimport() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m22063do(String str) throws j41 {
        if (str.isEmpty()) {
            return null;
        }
        if (str.length() < 2) {
            throw j41.getNotFoundInstance();
        }
        String strSubstring = str.substring(0, 2);
        for (Object[] objArr : f17695if) {
            if (objArr[0].equals(strSubstring)) {
                return objArr[1] == f17693do ? m22064for(2, ((Integer) objArr[2]).intValue(), str) : m22065if(2, ((Integer) objArr[1]).intValue(), str);
            }
        }
        if (str.length() < 3) {
            throw j41.getNotFoundInstance();
        }
        String strSubstring2 = str.substring(0, 3);
        for (Object[] objArr2 : f17694for) {
            if (objArr2[0].equals(strSubstring2)) {
                return objArr2[1] == f17693do ? m22064for(3, ((Integer) objArr2[2]).intValue(), str) : m22065if(3, ((Integer) objArr2[1]).intValue(), str);
            }
        }
        for (Object[] objArr3 : f17696new) {
            if (objArr3[0].equals(strSubstring2)) {
                return objArr3[1] == f17693do ? m22064for(4, ((Integer) objArr3[2]).intValue(), str) : m22065if(4, ((Integer) objArr3[1]).intValue(), str);
            }
        }
        if (str.length() < 4) {
            throw j41.getNotFoundInstance();
        }
        String strSubstring3 = str.substring(0, 4);
        for (Object[] objArr4 : f17697try) {
            if (objArr4[0].equals(strSubstring3)) {
                return objArr4[1] == f17693do ? m22064for(4, ((Integer) objArr4[2]).intValue(), str) : m22065if(4, ((Integer) objArr4[1]).intValue(), str);
            }
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: for, reason: not valid java name */
    private static String m22064for(int i, int i2, String str) throws j41 {
        String strSubstring = str.substring(0, i);
        int length = i2 + i;
        if (str.length() < length) {
            length = str.length();
        }
        String strSubstring2 = str.substring(i, length);
        String str2 = "(" + strSubstring + ')' + strSubstring2;
        String strM22063do = m22063do(str.substring(length));
        if (strM22063do == null) {
            return str2;
        }
        return str2 + strM22063do;
    }

    /* renamed from: if, reason: not valid java name */
    private static String m22065if(int i, int i2, String str) throws j41 {
        if (str.length() < i) {
            throw j41.getNotFoundInstance();
        }
        String strSubstring = str.substring(0, i);
        int i3 = i2 + i;
        if (str.length() < i3) {
            throw j41.getNotFoundInstance();
        }
        String strSubstring2 = str.substring(i, i3);
        String str2 = "(" + strSubstring + ')' + strSubstring2;
        String strM22063do = m22063do(str.substring(i3));
        if (strM22063do == null) {
            return str2;
        }
        return str2 + strM22063do;
    }
}
