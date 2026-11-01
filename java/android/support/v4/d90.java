package android.support.v4;

import com.alibaba.fastjson.parser.JSONLexer;
import com.google.zxing.Cdo;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class d90 extends xn1 {
    /* renamed from: import, reason: not valid java name */
    private static String m1171import(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(i);
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt != '(') {
                sb.append(cCharAt);
            } else {
                if (m1172while(i2, strSubstring) != null) {
                    break;
                }
                sb.append('(');
            }
        }
        return sb.toString();
    }

    /* renamed from: while, reason: not valid java name */
    private static String m1172while(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String strSubstring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt == ')') {
                return sb.toString();
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    @Override // android.support.v4.xn1
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public c90 mo243catch(wn1 wn1Var) {
        c90 c90Var = null;
        if (wn1Var.m9248if() != Cdo.RSS_EXPANDED) {
            return null;
        }
        String strM9548for = xn1.m9548for(wn1Var);
        HashMap map = new HashMap();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String strSubstring = null;
        String str10 = null;
        String strSubstring2 = null;
        String strSubstring3 = null;
        int i = 0;
        while (i < strM9548for.length()) {
            String strM1172while = m1172while(i, strM9548for);
            if (strM1172while == null) {
                return c90Var;
            }
            char c = 2;
            int length = i + strM1172while.length() + 2;
            String strM1171import = m1171import(length, strM9548for);
            int length2 = length + strM1171import.length();
            switch (strM1172while.hashCode()) {
                case 1536:
                    if (!strM1172while.equals("00")) {
                        c = 65535;
                        break;
                    } else {
                        c = 0;
                        break;
                    }
                case 1537:
                    if (strM1172while.equals("01")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1567:
                    if (!strM1172while.equals("10")) {
                    }
                    break;
                case 1568:
                    if (strM1172while.equals("11")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1570:
                    if (strM1172while.equals(fi.iki.elonen.Cdo.HEADER_WEBSOCKET_VERSION_VALUE)) {
                        c = 4;
                        break;
                    }
                    break;
                case 1572:
                    if (strM1172while.equals("15")) {
                        c = 5;
                        break;
                    }
                    break;
                case 1574:
                    if (strM1172while.equals("17")) {
                        c = 6;
                        break;
                    }
                    break;
                case 1567966:
                    if (strM1172while.equals("3100")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1567967:
                    if (strM1172while.equals("3101")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 1567968:
                    if (strM1172while.equals("3102")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 1567969:
                    if (strM1172while.equals("3103")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1567970:
                    if (strM1172while.equals("3104")) {
                        c = 11;
                        break;
                    }
                    break;
                case 1567971:
                    if (strM1172while.equals("3105")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 1567972:
                    if (strM1172while.equals("3106")) {
                        c = wk.f7547for;
                        break;
                    }
                    break;
                case 1567973:
                    if (strM1172while.equals("3107")) {
                        c = 14;
                        break;
                    }
                    break;
                case 1567974:
                    if (strM1172while.equals("3108")) {
                        c = 15;
                        break;
                    }
                    break;
                case 1567975:
                    if (strM1172while.equals("3109")) {
                        c = 16;
                        break;
                    }
                    break;
                case 1568927:
                    if (strM1172while.equals("3200")) {
                        c = 17;
                        break;
                    }
                    break;
                case 1568928:
                    if (strM1172while.equals("3201")) {
                        c = 18;
                        break;
                    }
                    break;
                case 1568929:
                    if (strM1172while.equals("3202")) {
                        c = 19;
                        break;
                    }
                    break;
                case 1568930:
                    if (strM1172while.equals("3203")) {
                        c = 20;
                        break;
                    }
                    break;
                case 1568931:
                    if (strM1172while.equals("3204")) {
                        c = 21;
                        break;
                    }
                    break;
                case 1568932:
                    if (strM1172while.equals("3205")) {
                        c = 22;
                        break;
                    }
                    break;
                case 1568933:
                    if (strM1172while.equals("3206")) {
                        c = 23;
                        break;
                    }
                    break;
                case 1568934:
                    if (strM1172while.equals("3207")) {
                        c = 24;
                        break;
                    }
                    break;
                case 1568935:
                    if (strM1172while.equals("3208")) {
                        c = 25;
                        break;
                    }
                    break;
                case 1568936:
                    if (strM1172while.equals("3209")) {
                        c = JSONLexer.EOI;
                        break;
                    }
                    break;
                case 1575716:
                    if (strM1172while.equals("3920")) {
                        c = 27;
                        break;
                    }
                    break;
                case 1575717:
                    if (strM1172while.equals("3921")) {
                        c = 28;
                        break;
                    }
                    break;
                case 1575718:
                    if (strM1172while.equals("3922")) {
                        c = 29;
                        break;
                    }
                    break;
                case 1575719:
                    if (strM1172while.equals("3923")) {
                        c = 30;
                        break;
                    }
                    break;
                case 1575747:
                    if (strM1172while.equals("3930")) {
                        c = 31;
                        break;
                    }
                    break;
                case 1575748:
                    if (strM1172while.equals("3931")) {
                        c = ' ';
                        break;
                    }
                    break;
                case 1575749:
                    if (strM1172while.equals("3932")) {
                        c = '!';
                        break;
                    }
                    break;
                case 1575750:
                    if (strM1172while.equals("3933")) {
                        c = ca2.f674do;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    str2 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 1:
                    str = strM1171import;
                    i = length2;
                    c90Var = null;
                case 2:
                    str3 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 3:
                    str4 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 4:
                    str5 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 5:
                    str6 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 6:
                    str7 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 7:
                case '\b':
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                case 16:
                    strSubstring = strM1172while.substring(3);
                    str9 = c90.f641while;
                    str8 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    strSubstring = strM1172while.substring(3);
                    str9 = c90.f640import;
                    str8 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 27:
                case 28:
                case 29:
                case 30:
                    strSubstring2 = strM1172while.substring(3);
                    str10 = strM1171import;
                    i = length2;
                    c90Var = null;
                case 31:
                case ' ':
                case '!':
                case '\"':
                    if (strM1171import.length() < 4) {
                        return null;
                    }
                    String strSubstring4 = strM1171import.substring(3);
                    strSubstring3 = strM1171import.substring(0, 3);
                    str10 = strSubstring4;
                    i = length2;
                    c90Var = null;
                    strSubstring2 = strM1172while.substring(3);
                default:
                    map.put(strM1172while, strM1171import);
                    i = length2;
                    c90Var = null;
            }
        }
        return new c90(strM9548for, str, str2, str3, str4, str5, str6, str7, str8, str9, strSubstring, str10, strSubstring2, strSubstring3, map);
    }
}
