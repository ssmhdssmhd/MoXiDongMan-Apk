package android.support.v4;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.StringRes;
import com.wsw.cospa.CartoonApplication;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import org.apache.commons.lang3.Cclass;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* loaded from: classes2.dex */
public class l22 {

    /* renamed from: do, reason: not valid java name */
    private static final String f3522do = "StringUtils";

    /* renamed from: for, reason: not valid java name */
    private static final int f3523for = 2;

    /* renamed from: if, reason: not valid java name */
    private static final int f3524if = 24;

    /* renamed from: new, reason: not valid java name */
    private static final int f3525new = 60;

    /* renamed from: try, reason: not valid java name */
    private static final HashMap<Character, Integer> f3526try = m4575this();

    /* renamed from: break, reason: not valid java name */
    public static String m4552break(int i, int i2) {
        return m4553case("%d/%d", Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* renamed from: case, reason: not valid java name */
    public static String m4553case(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m4554catch(@StringRes int i) {
        return CartoonApplication.m24693try().getResources().getString(i);
    }

    /* renamed from: class, reason: not valid java name */
    public static String m4555class(@StringRes int i, Object... objArr) {
        return CartoonApplication.m24693try().getString(i, objArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m4556const(String str) {
        int i;
        try {
            if (Cclass.A(str)) {
                return "null";
            }
            String strReplace = str.replace("\n", "");
            int length = strReplace.length();
            while (i < length) {
                char cCharAt = strReplace.charAt(i);
                i = (cCharAt > 31 && cCharAt < 127) ? i + 1 : 0;
                return URLEncoder.encode(strReplace, "UTF-8");
            }
            return strReplace;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m4557default(String str, String str2) {
        if (str2.length() > str.length()) {
            return false;
        }
        return str.substring(0, str2.length()).equalsIgnoreCase(str2);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m4558do(String str) {
        byte[] bArrDecode = Base64.decode(str, 0);
        try {
            return new String(bArrDecode, "UTF-8");
        } catch (Exception unused) {
            return new String(bArrDecode);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static String m4559else(String str) {
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] == 12288) {
                charArray[i] = ' ';
            } else if (charArray[i] > 65280 && charArray[i] < 65375) {
                charArray[i] = (char) (charArray[i] - 65248);
            }
        }
        return new String(charArray);
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m4560extends(String str) {
        if (str == null) {
            return -1;
        }
        String strReplaceAll = m4559else(str).replaceAll("\\s", "");
        try {
            return Integer.parseInt(strReplaceAll);
        } catch (Exception unused) {
            return m4565if(strReplaceAll);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static String m4561final(String str) {
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] == ' ') {
                charArray[i] = 12288;
            } else if (charArray[i] > ' ' && charArray[i] < 127) {
                charArray[i] = (char) (charArray[i] + 65248);
            }
        }
        return new String(charArray);
    }

    /* renamed from: finally, reason: not valid java name */
    public static String m4562finally(String str) {
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m4563for(long j, String str) {
        return new SimpleDateFormat(str).format(new Date(j));
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m4564goto(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(on0.f4694final, 9);
        return iIndexOf == -1 ? str : str.substring(0, iIndexOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a2  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m4565if(String str) {
        char[] charArray = str.toCharArray();
        if (charArray.length > 1 && str.matches("^[〇零一二三四五六七八九]$")) {
            for (int i = 0; i < charArray.length; i++) {
                charArray[i] = (char) (f3526try.get(Character.valueOf(charArray[i])).intValue() + 48);
            }
            return Integer.parseInt(new String(charArray));
        }
        int i2 = 0;
        int iIntValue = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < charArray.length; i4++) {
            try {
                HashMap<Character, Integer> map = f3526try;
                int iIntValue2 = map.get(Character.valueOf(charArray[i4])).intValue();
                if (iIntValue2 == 100000000) {
                    i3 = (i3 * FastDtoa.kTen8) + ((i2 + iIntValue) * iIntValue2);
                    i2 = 0;
                } else if (iIntValue2 == 10000) {
                    i2 = (i2 + iIntValue) * iIntValue2;
                } else if (iIntValue2 >= 10) {
                    if (iIntValue == 0) {
                        iIntValue = 1;
                    }
                    i2 += iIntValue2 * iIntValue;
                } else {
                    if (i4 < 2 || i4 != charArray.length - 1) {
                        iIntValue = (iIntValue * 10) + iIntValue2;
                    } else {
                        int i5 = i4 - 1;
                        if (map.get(Character.valueOf(charArray[i5])).intValue() > 10) {
                            iIntValue = (iIntValue2 * map.get(Character.valueOf(charArray[i5])).intValue()) / 10;
                        }
                    }
                }
                iIntValue = 0;
            } catch (Exception unused) {
                return -1;
            }
        }
        return i2 + iIntValue + i3;
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m4566import(String str) {
        if (!TextUtils.isEmpty(str)) {
            String strTrim = str.trim();
            if (strTrim.startsWith("[") && strTrim.endsWith("]")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m4567native(String str) {
        if (!TextUtils.isEmpty(str)) {
            String strTrim = str.trim();
            if (strTrim.startsWith("{") && strTrim.endsWith("}")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m4568new(String str, String str2) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
        Calendar calendar = Calendar.getInstance();
        try {
            Date date = simpleDateFormat.parse(str);
            long timeInMillis = calendar.getTimeInMillis();
            calendar.setTime(date);
            long jAbs = Math.abs((timeInMillis - date.getTime()) / 1000);
            long j = jAbs / 60;
            long j2 = j / 60;
            long j3 = j2 / 60;
            if (calendar.get(10) == 0) {
                return j3 == 0 ? "今天" : j3 < 2 ? "昨天" : new SimpleDateFormat("yyyy-MM-dd").format(date);
            }
            if (jAbs < 60) {
                return jAbs + "秒前";
            }
            if (j < 60) {
                return j + "分钟前";
            }
            if (j2 >= 24) {
                return j3 < 2 ? "昨天" : new SimpleDateFormat("yyyy-MM-dd").format(date);
            }
            return j2 + "小时前";
        } catch (ParseException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static String m4569package(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("(^\\s+|\\s+$)", "");
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m4570public(String str) {
        if (!TextUtils.isEmpty(str)) {
            String strTrim = str.trim();
            if (strTrim.startsWith("{") && strTrim.endsWith("}")) {
                return true;
            }
            if (strTrim.startsWith("[") && strTrim.endsWith("]")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m4571return(String str) {
        return str == null || str.length() == 0 || str.trim().length() == 0;
    }

    /* renamed from: static, reason: not valid java name */
    public static String m4572static(CharSequence charSequence, Iterable<? extends CharSequence> iterable) {
        Objects.requireNonNull(charSequence);
        Objects.requireNonNull(iterable);
        g22 g22Var = new g22(charSequence);
        Iterator<? extends CharSequence> it = iterable.iterator();
        while (it.hasNext()) {
            g22Var.m2553do(it.next());
        }
        return g22Var.toString();
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m4573super(char c) {
        return c >= 19968 && c <= 40869;
    }

    /* renamed from: switch, reason: not valid java name */
    public static String m4574switch(CharSequence charSequence, CharSequence... charSequenceArr) {
        Objects.requireNonNull(charSequence);
        Objects.requireNonNull(charSequenceArr);
        g22 g22Var = new g22(charSequence);
        for (CharSequence charSequence2 : charSequenceArr) {
            g22Var.m2553do(charSequence2);
        }
        return g22Var.toString();
    }

    /* renamed from: this, reason: not valid java name */
    private static HashMap<Character, Integer> m4575this() {
        HashMap<Character, Integer> map = new HashMap<>();
        char[] charArray = "零一二三四五六七八九十".toCharArray();
        for (int i = 0; i <= 10; i++) {
            map.put(Character.valueOf(charArray[i]), Integer.valueOf(i));
        }
        map.put((char) 12295, 0);
        map.put((char) 20004, 2);
        map.put((char) 30334, 100);
        map.put((char) 21315, 1000);
        map.put((char) 19975, Integer.valueOf(FastDtoa.kTen4));
        map.put((char) 20159, Integer.valueOf(FastDtoa.kTen8));
        return map;
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m4576throw(String str) {
        if (str == null) {
            return false;
        }
        for (char c : str.toCharArray()) {
            if (m4573super(c)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: throws, reason: not valid java name */
    public static String m4577throws(String str, String str2, int i) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(str2);
        if (i < 0) {
            i += strArrSplit.length;
        }
        if (i < 0 || i >= strArrSplit.length) {
            return null;
        }
        return strArrSplit[i];
    }

    /* renamed from: try, reason: not valid java name */
    public static String m4578try(String str) {
        StringBuilder sb = new StringBuilder();
        sb.ensureCapacity(str.length() * 6);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isDigit(cCharAt) || Character.isLowerCase(cCharAt) || Character.isUpperCase(cCharAt)) {
                sb.append(cCharAt);
            } else if (cCharAt < 256) {
                sb.append("%");
                if (cCharAt < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toString(cCharAt, 16));
            } else {
                sb.append("%u");
                sb.append(Integer.toString(cCharAt, 16));
            }
        }
        return sb.toString();
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m4579while(String str) {
        if (!TextUtils.isEmpty(str)) {
            String strTrim = str.trim();
            if (strTrim.startsWith("{") && strTrim.endsWith("}")) {
                return true;
            }
            if (strTrim.startsWith("[") && strTrim.endsWith("]")) {
                return true;
            }
        }
        return false;
    }
}
