package android.support.v4;

import com.google.zxing.client.result.Ccase;
import com.google.zxing.client.result.Cfor;
import com.google.zxing.client.result.Cif;
import com.google.zxing.client.result.Cnew;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public abstract class xn1 {

    /* renamed from: try, reason: not valid java name */
    private static final String f7995try = "\ufeff";

    /* renamed from: do, reason: not valid java name */
    private static final xn1[] f7991do = {new Cnew(), new Cif(), new Ccase(), new q0(), new vd2(), new Cfor(), new wd2(), new t60(), new uq1(), new f52(), new rq1(), new tq1(), new ah0(), new ag2(), new za2(), new ya2(), new hl0(), new pf1(), new d90(), new yd2()};

    /* renamed from: if, reason: not valid java name */
    private static final Pattern f7993if = Pattern.compile("\\d+");

    /* renamed from: for, reason: not valid java name */
    private static final Pattern f7992for = Pattern.compile("&");

    /* renamed from: new, reason: not valid java name */
    private static final Pattern f7994new = Pattern.compile("=");

    /* renamed from: break, reason: not valid java name */
    public static String[] m9541break(String str) {
        if (str == null) {
            return null;
        }
        return new String[]{str};
    }

    /* renamed from: case, reason: not valid java name */
    public static String[] m9542case(String str, String str2, char c, boolean z) {
        int length = str2.length();
        ArrayList arrayList = null;
        int i = 0;
        while (i < length) {
            int iIndexOf = str2.indexOf(str, i);
            if (iIndexOf < 0) {
                break;
            }
            int length2 = iIndexOf + str.length();
            ArrayList arrayList2 = arrayList;
            boolean z2 = true;
            int length3 = length2;
            while (z2) {
                int iIndexOf2 = str2.indexOf(c, length3);
                if (iIndexOf2 < 0) {
                    length3 = str2.length();
                } else if (m9550if(str2, iIndexOf2) % 2 != 0) {
                    length3 = iIndexOf2 + 1;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(3);
                    }
                    String strM9552super = m9552super(str2.substring(length2, iIndexOf2));
                    if (z) {
                        strM9552super = strM9552super.trim();
                    }
                    if (!strM9552super.isEmpty()) {
                        arrayList2.add(strM9552super);
                    }
                    length3 = iIndexOf2 + 1;
                }
                z2 = false;
            }
            i = length3;
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m9543class(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: const, reason: not valid java name */
    public static Map<String, String> m9544const(String str) {
        int iIndexOf = str.indexOf(63);
        if (iIndexOf < 0) {
            return null;
        }
        HashMap map = new HashMap(3);
        for (String str2 : f7992for.split(str.substring(iIndexOf + 1))) {
            m9545do(str2, map);
        }
        return map;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m9545do(CharSequence charSequence, Map<String, String> map) {
        String[] strArrSplit = f7994new.split(charSequence, 2);
        if (strArrSplit.length == 2) {
            try {
                map.put(strArrSplit[0], m9554throw(strArrSplit[1]));
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static String m9546else(String str, String str2, char c, boolean z) {
        String[] strArrM9542case = m9542case(str, str2, c, z);
        if (strArrM9542case == null) {
            return null;
        }
        return strArrM9542case[0];
    }

    /* renamed from: final, reason: not valid java name */
    public static oc1 m9547final(wn1 wn1Var) {
        for (xn1 xn1Var : f7991do) {
            oc1 oc1VarMo243catch = xn1Var.mo243catch(wn1Var);
            if (oc1VarMo243catch != null) {
                return oc1VarMo243catch;
            }
        }
        return new h62(wn1Var.m9245else(), null);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m9548for(wn1 wn1Var) {
        String strM9245else = wn1Var.m9245else();
        return strM9245else.startsWith(f7995try) ? strM9245else.substring(1) : strM9245else;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m9549goto(String str, StringBuilder sb) {
        if (str != null) {
            sb.append('\n');
            sb.append(str);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static int m9550if(CharSequence charSequence, int i) {
        int i2 = 0;
        for (int i3 = i - 1; i3 >= 0 && charSequence.charAt(i3) == '\\'; i3--) {
            i2++;
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m9551new(CharSequence charSequence, int i) {
        return charSequence != null && i > 0 && i == charSequence.length() && f7993if.matcher(charSequence).matches();
    }

    /* renamed from: super, reason: not valid java name */
    public static String m9552super(String str) {
        int iIndexOf = str.indexOf(92);
        if (iIndexOf < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length - 1);
        sb.append(str.toCharArray(), 0, iIndexOf);
        boolean z = false;
        while (iIndexOf < length) {
            char cCharAt = str.charAt(iIndexOf);
            if (z || cCharAt != '\\') {
                sb.append(cCharAt);
                z = false;
            } else {
                z = true;
            }
            iIndexOf++;
        }
        return sb.toString();
    }

    /* renamed from: this, reason: not valid java name */
    public static void m9553this(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                sb.append('\n');
                sb.append(str);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m9554throw(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m9555try(CharSequence charSequence, int i, int i2) {
        int i3;
        return charSequence != null && i2 > 0 && charSequence.length() >= (i3 = i2 + i) && f7993if.matcher(charSequence.subSequence(i, i3)).matches();
    }

    /* renamed from: catch */
    public abstract oc1 mo243catch(wn1 wn1Var);
}
