package android.support.v4;

import androidx.core.app.NotificationCompat;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class vd2 extends xn1 {

    /* renamed from: case, reason: not valid java name */
    private static final Pattern f7153case = Pattern.compile("BEGIN:VCARD", 2);

    /* renamed from: else, reason: not valid java name */
    private static final Pattern f7157else = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");

    /* renamed from: goto, reason: not valid java name */
    private static final Pattern f7159goto = Pattern.compile("\r\n[ \t]");

    /* renamed from: this, reason: not valid java name */
    private static final Pattern f7161this = Pattern.compile("\\\\[nN]");

    /* renamed from: break, reason: not valid java name */
    private static final Pattern f7152break = Pattern.compile("\\\\([,;\\\\])");

    /* renamed from: catch, reason: not valid java name */
    private static final Pattern f7154catch = Pattern.compile("=");

    /* renamed from: class, reason: not valid java name */
    private static final Pattern f7155class = Pattern.compile(";");

    /* renamed from: const, reason: not valid java name */
    private static final Pattern f7156const = Pattern.compile("(?<!\\\\);+");

    /* renamed from: final, reason: not valid java name */
    private static final Pattern f7158final = Pattern.compile(",");

    /* renamed from: super, reason: not valid java name */
    private static final Pattern f7160super = Pattern.compile("[;,]");

    /* renamed from: default, reason: not valid java name */
    private static String m8830default(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    /* renamed from: extends, reason: not valid java name */
    private static String[] m8831extends(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<List<String>> it = collection.iterator();
        while (it.hasNext()) {
            String str = it.next().get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: finally, reason: not valid java name */
    private static String[] m8832finally(Collection<List<String>> collection) {
        String strSubstring;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str = list.get(0);
            if (str != null && !str.isEmpty()) {
                int i = 1;
                while (true) {
                    if (i >= list.size()) {
                        strSubstring = null;
                        break;
                    }
                    strSubstring = list.get(i);
                    int iIndexOf = strSubstring.indexOf(61);
                    if (iIndexOf < 0) {
                        break;
                    }
                    if ("TYPE".equalsIgnoreCase(strSubstring.substring(0, iIndexOf))) {
                        strSubstring = strSubstring.substring(iIndexOf + 1);
                        break;
                    }
                    i++;
                }
                arrayList.add(strSubstring);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: import, reason: not valid java name */
    private static void m8833import(Iterable<List<String>> iterable) {
        int iIndexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4 && (iIndexOf = str.indexOf(59, i2)) >= 0) {
                    strArr[i] = str.substring(i2, iIndexOf);
                    i++;
                    i2 = iIndexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                m8837static(strArr, 3, sb);
                m8837static(strArr, 1, sb);
                m8837static(strArr, 2, sb);
                m8837static(strArr, 0, sb);
                m8837static(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    private static boolean m8834native(CharSequence charSequence) {
        return charSequence == null || f7157else.matcher(charSequence).matches();
    }

    /* renamed from: public, reason: not valid java name */
    public static List<String> m8835public(CharSequence charSequence, String str, boolean z, boolean z2) {
        List<List<String>> listM8836return = m8836return(charSequence, str, z, z2);
        if (listM8836return == null || listM8836return.isEmpty()) {
            return null;
        }
        return listM8836return.get(0);
    }

    /* renamed from: return, reason: not valid java name */
    public static List<List<String>> m8836return(CharSequence charSequence, String str, boolean z, boolean z2) {
        ArrayList arrayList;
        boolean z3;
        String str2;
        String str3;
        int iIndexOf;
        String strReplaceAll;
        int length = str.length();
        int i = 0;
        int i2 = 0;
        ArrayList arrayList2 = null;
        while (i2 < length) {
            int i3 = 2;
            Matcher matcher = Pattern.compile("(?:^|\n)" + ((Object) charSequence) + "(?:;([^:]*))?:", 2).matcher(str);
            if (i2 > 0) {
                i2--;
            }
            if (!matcher.find(i2)) {
                break;
            }
            int iEnd = matcher.end(i);
            String strGroup = matcher.group(1);
            if (strGroup != null) {
                String[] strArrSplit = f7155class.split(strGroup);
                int length2 = strArrSplit.length;
                int i4 = 0;
                arrayList = null;
                z3 = false;
                str2 = null;
                str3 = null;
                while (i4 < length2) {
                    String str4 = strArrSplit[i4];
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(str4);
                    String[] strArrSplit2 = f7154catch.split(str4, i3);
                    if (strArrSplit2.length > 1) {
                        String str5 = strArrSplit2[0];
                        String str6 = strArrSplit2[1];
                        if ("ENCODING".equalsIgnoreCase(str5) && "QUOTED-PRINTABLE".equalsIgnoreCase(str6)) {
                            z3 = true;
                        } else if ("CHARSET".equalsIgnoreCase(str5)) {
                            str2 = str6;
                        } else if ("VALUE".equalsIgnoreCase(str5)) {
                            str3 = str6;
                        }
                    }
                    i4++;
                    i3 = 2;
                }
            } else {
                arrayList = null;
                z3 = false;
                str2 = null;
                str3 = null;
            }
            int i5 = iEnd;
            while (true) {
                iIndexOf = str.indexOf(10, i5);
                if (iIndexOf < 0) {
                    break;
                }
                if (iIndexOf < str.length() - 1) {
                    int i6 = iIndexOf + 1;
                    if (str.charAt(i6) == ' ' || str.charAt(i6) == '\t') {
                        i5 = iIndexOf + 2;
                    }
                }
                if (!z3 || ((iIndexOf <= 0 || str.charAt(iIndexOf - 1) != '=') && (iIndexOf < 2 || str.charAt(iIndexOf - 2) != '='))) {
                    break;
                }
                i5 = iIndexOf + 1;
            }
            if (iIndexOf < 0) {
                i2 = length;
            } else if (iIndexOf <= iEnd) {
                i2 = iIndexOf + 1;
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(1);
                }
                if (iIndexOf > 0 && str.charAt(iIndexOf - 1) == '\r') {
                    iIndexOf--;
                }
                String strSubstring = str.substring(iEnd, iIndexOf);
                if (z) {
                    strSubstring = strSubstring.trim();
                }
                if (z3) {
                    strReplaceAll = m8839while(strSubstring, str2);
                    if (z2) {
                        strReplaceAll = f7156const.matcher(strReplaceAll).replaceAll("\n").trim();
                    }
                } else {
                    if (z2) {
                        strSubstring = f7156const.matcher(strSubstring).replaceAll("\n").trim();
                    }
                    strReplaceAll = f7152break.matcher(f7161this.matcher(f7159goto.matcher(strSubstring).replaceAll("")).replaceAll("\n")).replaceAll("$1");
                }
                if (NotificationCompat.MessagingStyle.Message.KEY_DATA_URI.equals(str3)) {
                    try {
                        strReplaceAll = URI.create(strReplaceAll).getSchemeSpecificPart();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                if (arrayList == null) {
                    ArrayList arrayList3 = new ArrayList(1);
                    arrayList3.add(strReplaceAll);
                    arrayList2.add(arrayList3);
                    i2 = iIndexOf + 1;
                } else {
                    arrayList.add(0, strReplaceAll);
                    arrayList2.add(arrayList);
                    i2 = iIndexOf + 1;
                }
            }
            i = 0;
        }
        return arrayList2;
    }

    /* renamed from: static, reason: not valid java name */
    private static void m8837static(String[] strArr, int i, StringBuilder sb) {
        if (strArr[i] == null || strArr[i].isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(strArr[i]);
    }

    /* renamed from: switch, reason: not valid java name */
    private static void m8838switch(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray, StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private static String m8839while(CharSequence charSequence, String str) {
        char cCharAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < length) {
            char cCharAt2 = charSequence.charAt(i);
            if (cCharAt2 != '\n' && cCharAt2 != '\r') {
                if (cCharAt2 != '=') {
                    m8838switch(byteArrayOutputStream, str, sb);
                    sb.append(cCharAt2);
                } else if (i < length - 2 && (cCharAt = charSequence.charAt(i + 1)) != '\r' && cCharAt != '\n') {
                    i += 2;
                    char cCharAt3 = charSequence.charAt(i);
                    int iM9543class = xn1.m9543class(cCharAt);
                    int iM9543class2 = xn1.m9543class(cCharAt3);
                    if (iM9543class >= 0 && iM9543class2 >= 0) {
                        byteArrayOutputStream.write((iM9543class << 4) + iM9543class2);
                    }
                }
            }
            i++;
        }
        m8838switch(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    @Override // android.support.v4.xn1
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public r0 mo243catch(wn1 wn1Var) {
        String strM9548for = xn1.m9548for(wn1Var);
        Matcher matcher = f7153case.matcher(strM9548for);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> listM8836return = m8836return("FN", strM9548for, true, false);
        if (listM8836return == null) {
            listM8836return = m8836return("N", strM9548for, true, false);
            m8833import(listM8836return);
        }
        List<String> listM8835public = m8835public("NICKNAME", strM9548for, true, false);
        String[] strArrSplit = listM8835public == null ? null : f7158final.split(listM8835public.get(0));
        List<List<String>> listM8836return2 = m8836return("TEL", strM9548for, true, false);
        List<List<String>> listM8836return3 = m8836return("EMAIL", strM9548for, true, false);
        List<String> listM8835public2 = m8835public("NOTE", strM9548for, false, false);
        List<List<String>> listM8836return4 = m8836return("ADR", strM9548for, true, true);
        List<String> listM8835public3 = m8835public("ORG", strM9548for, true, true);
        List<String> listM8835public4 = m8835public("BDAY", strM9548for, true, false);
        List<String> list = (listM8835public4 == null || m8834native(listM8835public4.get(0))) ? listM8835public4 : null;
        List<String> listM8835public5 = m8835public("TITLE", strM9548for, true, false);
        List<List<String>> listM8836return5 = m8836return("URL", strM9548for, true, false);
        List<String> listM8835public6 = m8835public("IMPP", strM9548for, true, false);
        List<String> listM8835public7 = m8835public("GEO", strM9548for, true, false);
        String[] strArrSplit2 = listM8835public7 == null ? null : f7160super.split(listM8835public7.get(0));
        return new r0(m8831extends(listM8836return), strArrSplit, null, m8831extends(listM8836return2), m8832finally(listM8836return2), m8831extends(listM8836return3), m8832finally(listM8836return3), m8830default(listM8835public6), m8830default(listM8835public2), m8831extends(listM8836return4), m8832finally(listM8836return4), m8830default(listM8835public3), m8830default(list), m8830default(listM8835public5), m8831extends(listM8836return5), (strArrSplit2 == null || strArrSplit2.length == 2) ? strArrSplit2 : null);
    }
}
