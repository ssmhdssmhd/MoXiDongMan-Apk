package android.support.v4;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.lang3.Cclass;
import org.apache.commons.lang3.text.Cfor;
import org.apache.commons.lang3.text.Cif;
import org.apache.commons.lang3.text.Cnew;

/* loaded from: classes3.dex */
public class u12 {

    /* renamed from: else, reason: not valid java name */
    public static final char f6731else = '$';

    /* renamed from: case, reason: not valid java name */
    private boolean f6734case;

    /* renamed from: do, reason: not valid java name */
    private char f6735do;

    /* renamed from: for, reason: not valid java name */
    private Cnew f6736for;

    /* renamed from: if, reason: not valid java name */
    private Cnew f6737if;

    /* renamed from: new, reason: not valid java name */
    private Cnew f6738new;

    /* renamed from: try, reason: not valid java name */
    private Cfor<?> f6739try;

    /* renamed from: goto, reason: not valid java name */
    public static final Cnew f6732goto = Cnew.m32558const("${");

    /* renamed from: this, reason: not valid java name */
    public static final Cnew f6733this = Cnew.m32558const("}");

    /* renamed from: break, reason: not valid java name */
    public static final Cnew f6730break = Cnew.m32558const(":-");

    public u12() {
        this((Cfor<?>) null, f6732goto, f6733this, '$');
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int c(Cif cif, int i, int i2, List<String> list) {
        Cnew cnew;
        Cnew cnew2;
        char c;
        boolean z;
        String strSubstring;
        int iMo32569else;
        Cnew cnewM8208new = m8208new();
        Cnew cnewM8193case = m8193case();
        char cM8202if = m8202if();
        Cnew cnewM8200for = m8200for();
        boolean zM8196else = m8196else();
        boolean z2 = list == null;
        int i3 = i;
        int i4 = i + i2;
        int i5 = 0;
        int i6 = 0;
        char[] cArr = cif.buffer;
        List<String> arrayList = list;
        while (i3 < i4) {
            int iMo32569else2 = cnewM8208new.mo32569else(cArr, i3, i, i4);
            if (iMo32569else2 == 0) {
                i3++;
                cnew = cnewM8208new;
                cnew2 = cnewM8193case;
                c = cM8202if;
                z = z2;
            } else if (i3 > i) {
                int i7 = i3 - 1;
                if (cArr[i7] != cM8202if) {
                    int i8 = i3 + iMo32569else2;
                    int i9 = i8;
                    int i10 = 0;
                    while (true) {
                        if (i9 >= i4) {
                            cnew = cnewM8208new;
                            cnew2 = cnewM8193case;
                            c = cM8202if;
                            z = z2;
                            i3 = i9;
                            break;
                        }
                        if (!zM8196else || (iMo32569else = cnewM8208new.mo32569else(cArr, i9, i, i4)) == 0) {
                            int iMo32569else3 = cnewM8193case.mo32569else(cArr, i9, i, i4);
                            if (iMo32569else3 == 0) {
                                i9++;
                            } else if (i10 == 0) {
                                cnew2 = cnewM8193case;
                                c = cM8202if;
                                String str = new String(cArr, i8, (i9 - i3) - iMo32569else2);
                                if (zM8196else) {
                                    Cif cif2 = new Cif(str);
                                    d(cif2, 0, cif2.length());
                                    str = cif2.toString();
                                }
                                int i11 = i9 + iMo32569else3;
                                if (cnewM8200for != null) {
                                    char[] charArray = str.toCharArray();
                                    z = z2;
                                    int i12 = 0;
                                    while (i12 < charArray.length && (zM8196else || cnewM8208new.mo32569else(charArray, i12, i12, charArray.length) == 0)) {
                                        int iM32568case = cnewM8200for.m32568case(charArray, i12);
                                        if (iM32568case != 0) {
                                            cnew = cnewM8208new;
                                            String strSubstring2 = str.substring(0, i12);
                                            strSubstring = str.substring(i12 + iM32568case);
                                            str = strSubstring2;
                                            break;
                                        }
                                        i12++;
                                        cnewM8208new = cnewM8208new;
                                    }
                                    cnew = cnewM8208new;
                                } else {
                                    cnew = cnewM8208new;
                                    z = z2;
                                }
                                strSubstring = null;
                                if (arrayList == null) {
                                    arrayList = new ArrayList<>();
                                    arrayList.add(new String(cArr, i, i2));
                                }
                                m8189do(str, arrayList);
                                arrayList.add(str);
                                String strM8209private = m8209private(str, cif, i3, i11);
                                if (strM8209private != null) {
                                    strSubstring = strM8209private;
                                }
                                if (strSubstring != null) {
                                    int length = strSubstring.length();
                                    cif.replace(i3, i11, strSubstring);
                                    int iC = (c(cif, i3, length, arrayList) + length) - (i11 - i3);
                                    i4 += iC;
                                    i5 += iC;
                                    cArr = cif.buffer;
                                    i3 = i11 + iC;
                                    i6 = 1;
                                } else {
                                    i3 = i11;
                                }
                                arrayList.remove(arrayList.size() - 1);
                            } else {
                                i10--;
                                i9 += iMo32569else3;
                                cM8202if = cM8202if;
                                cnewM8208new = cnewM8208new;
                            }
                        } else {
                            i10++;
                            i9 += iMo32569else;
                        }
                    }
                } else {
                    cif.deleteCharAt(i7);
                    i5--;
                    i4--;
                    cnew = cnewM8208new;
                    cnew2 = cnewM8193case;
                    c = cM8202if;
                    cArr = cif.buffer;
                    z = z2;
                    i6 = 1;
                }
            }
            cnewM8193case = cnew2;
            cM8202if = c;
            z2 = z;
            cnewM8208new = cnew;
        }
        return z2 ? i6 : i5;
    }

    /* renamed from: catch, reason: not valid java name */
    public static <V> String m8186catch(Object obj, Map<String, V> map) {
        return new u12(map).m8192break(obj);
    }

    /* renamed from: class, reason: not valid java name */
    public static <V> String m8187class(Object obj, Map<String, V> map, String str, String str2) {
        return new u12(map, str, str2).m8192break(obj);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m8188const(Object obj, Properties properties) {
        if (properties == null) {
            return obj.toString();
        }
        HashMap map = new HashMap();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str = (String) enumerationPropertyNames.nextElement();
            map.put(str, properties.getProperty(str));
        }
        return m8186catch(obj, map);
    }

    /* renamed from: do, reason: not valid java name */
    private void m8189do(String str, List<String> list) {
        if (list.contains(str)) {
            Cif cif = new Cif(256);
            cif.append("Infinite loop in property interpolation of ");
            cif.append(list.remove(0));
            cif.append(": ");
            cif.appendWithSeparators(list, "->");
            throw new IllegalStateException(cif.toString());
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static String m8190package(Object obj) {
        return new u12(Cfor.m32549new()).m8192break(obj);
    }

    public u12 a(String str) {
        if (str != null) {
            return b(Cnew.m32558const(str));
        }
        throw new IllegalArgumentException("Variable suffix must not be null!");
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m8191abstract(boolean z) {
        this.f6734case = z;
    }

    public u12 b(Cnew cnew) {
        if (cnew == null) {
            throw new IllegalArgumentException("Variable suffix matcher must not be null!");
        }
        this.f6736for = cnew;
        return this;
    }

    /* renamed from: break, reason: not valid java name */
    public String m8192break(Object obj) {
        if (obj == null) {
            return null;
        }
        Cif cifAppend = new Cif().append(obj);
        d(cifAppend, 0, cifAppend.length());
        return cifAppend.toString();
    }

    /* renamed from: case, reason: not valid java name */
    public Cnew m8193case() {
        return this.f6736for;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m8194continue(char c) {
        this.f6735do = c;
    }

    public boolean d(Cif cif, int i, int i2) {
        return c(cif, i, i2, null) > 0;
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m8195default(StringBuilder sb, int i, int i2) {
        if (sb == null) {
            return false;
        }
        Cif cifAppend = new Cif(i2).append(sb, i, i2);
        if (!d(cifAppend, 0, i2)) {
            return false;
        }
        sb.replace(i, i2 + i, cifAppend.toString());
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m8196else() {
        return this.f6734case;
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m8197extends(Cif cif) {
        if (cif == null) {
            return false;
        }
        return d(cif, 0, cif.length());
    }

    /* renamed from: final, reason: not valid java name */
    public String m8198final(String str) {
        if (str == null) {
            return null;
        }
        Cif cif = new Cif(str);
        return !d(cif, 0, str.length()) ? str : cif.toString();
    }

    /* renamed from: finally, reason: not valid java name */
    public boolean m8199finally(Cif cif, int i, int i2) {
        if (cif == null) {
            return false;
        }
        return d(cif, i, i2);
    }

    /* renamed from: for, reason: not valid java name */
    public Cnew m8200for() {
        return this.f6738new;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m8201goto(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return m8218this(charSequence, 0, charSequence.length());
    }

    /* renamed from: if, reason: not valid java name */
    public char m8202if() {
        return this.f6735do;
    }

    /* renamed from: implements, reason: not valid java name */
    public u12 m8203implements(Cnew cnew) {
        if (cnew == null) {
            throw new IllegalArgumentException("Variable prefix matcher must not be null!");
        }
        this.f6737if = cnew;
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public String m8204import(Cif cif) {
        if (cif == null) {
            return null;
        }
        Cif cifAppend = new Cif(cif.length()).append(cif);
        d(cifAppend, 0, cifAppend.length());
        return cifAppend.toString();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m8205instanceof(Cfor<?> cfor) {
        this.f6739try = cfor;
    }

    /* renamed from: interface, reason: not valid java name */
    public u12 m8206interface(Cnew cnew) {
        this.f6738new = cnew;
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public String m8207native(Cif cif, int i, int i2) {
        if (cif == null) {
            return null;
        }
        Cif cifAppend = new Cif(i2).append(cif, i, i2);
        d(cifAppend, 0, i2);
        return cifAppend.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public Cnew m8208new() {
        return this.f6737if;
    }

    /* renamed from: private, reason: not valid java name */
    public String m8209private(String str, Cif cif, int i, int i2) {
        Cfor<?> cforM8222try = m8222try();
        if (cforM8222try == null) {
            return null;
        }
        return cforM8222try.mo32550do(str);
    }

    /* renamed from: protected, reason: not valid java name */
    public u12 m8210protected(char c) {
        return m8203implements(Cnew.m32559do(c));
    }

    /* renamed from: public, reason: not valid java name */
    public String m8211public(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        Cif cifAppend = new Cif(cArr.length).append(cArr);
        d(cifAppend, 0, cArr.length);
        return cifAppend.toString();
    }

    /* renamed from: return, reason: not valid java name */
    public String m8212return(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        Cif cifAppend = new Cif(i2).append(cArr, i, i2);
        d(cifAppend, 0, i2);
        return cifAppend.toString();
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m8213static(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return false;
        }
        return m8216switch(stringBuffer, 0, stringBuffer.length());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public u12 m8214strictfp(char c) {
        return m8206interface(Cnew.m32559do(c));
    }

    /* renamed from: super, reason: not valid java name */
    public String m8215super(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        Cif cifAppend = new Cif(i2).append(str, i, i2);
        return !d(cifAppend, 0, i2) ? str.substring(i, i2 + i) : cifAppend.toString();
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m8216switch(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null) {
            return false;
        }
        Cif cifAppend = new Cif(i2).append(stringBuffer, i, i2);
        if (!d(cifAppend, 0, i2)) {
            return false;
        }
        stringBuffer.replace(i, i2 + i, cifAppend.toString());
        return true;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public u12 m8217synchronized(char c) {
        return b(Cnew.m32559do(c));
    }

    /* renamed from: this, reason: not valid java name */
    public String m8218this(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            return null;
        }
        Cif cifAppend = new Cif(i2).append(charSequence, i, i2);
        d(cifAppend, 0, i2);
        return cifAppend.toString();
    }

    /* renamed from: throw, reason: not valid java name */
    public String m8219throw(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return null;
        }
        Cif cifAppend = new Cif(stringBuffer.length()).append(stringBuffer);
        d(cifAppend, 0, cifAppend.length());
        return cifAppend.toString();
    }

    /* renamed from: throws, reason: not valid java name */
    public boolean m8220throws(StringBuilder sb) {
        if (sb == null) {
            return false;
        }
        return m8195default(sb, 0, sb.length());
    }

    /* renamed from: transient, reason: not valid java name */
    public u12 m8221transient(String str) {
        if (str != null) {
            return m8203implements(Cnew.m32558const(str));
        }
        throw new IllegalArgumentException("Variable prefix must not be null!");
    }

    /* renamed from: try, reason: not valid java name */
    public Cfor<?> m8222try() {
        return this.f6739try;
    }

    /* renamed from: volatile, reason: not valid java name */
    public u12 m8223volatile(String str) {
        if (!Cclass.A(str)) {
            return m8206interface(Cnew.m32558const(str));
        }
        m8206interface(null);
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public String m8224while(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null) {
            return null;
        }
        Cif cifAppend = new Cif(i2).append(stringBuffer, i, i2);
        d(cifAppend, 0, i2);
        return cifAppend.toString();
    }

    public <V> u12(Map<String, V> map) {
        this((Cfor<?>) Cfor.m32548if(map), f6732goto, f6733this, '$');
    }

    public <V> u12(Map<String, V> map, String str, String str2) {
        this((Cfor<?>) Cfor.m32548if(map), str, str2, '$');
    }

    public <V> u12(Map<String, V> map, String str, String str2, char c) {
        this((Cfor<?>) Cfor.m32548if(map), str, str2, c);
    }

    public <V> u12(Map<String, V> map, String str, String str2, char c, String str3) {
        this((Cfor<?>) Cfor.m32548if(map), str, str2, c, str3);
    }

    public u12(Cfor<?> cfor) {
        this(cfor, f6732goto, f6733this, '$');
    }

    public u12(Cfor<?> cfor, String str, String str2, char c) {
        m8205instanceof(cfor);
        m8221transient(str);
        a(str2);
        m8194continue(c);
        m8206interface(f6730break);
    }

    public u12(Cfor<?> cfor, String str, String str2, char c, String str3) {
        m8205instanceof(cfor);
        m8221transient(str);
        a(str2);
        m8194continue(c);
        m8223volatile(str3);
    }

    public u12(Cfor<?> cfor, Cnew cnew, Cnew cnew2, char c) {
        this(cfor, cnew, cnew2, c, f6730break);
    }

    public u12(Cfor<?> cfor, Cnew cnew, Cnew cnew2, char c, Cnew cnew3) {
        m8205instanceof(cfor);
        m8203implements(cnew);
        b(cnew2);
        m8194continue(c);
        m8206interface(cnew3);
    }
}
