package android.support.v4;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.x500.X500NameStyle;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class dl0 {
    /* renamed from: break, reason: not valid java name */
    private static boolean m1388break(char c) {
        return ('0' <= c && c <= '9') || ('a' <= c && c <= 'f') || ('A' <= c && c <= 'F');
    }

    /* renamed from: case, reason: not valid java name */
    private static int m1389case(char c) {
        if ('0' > c || c > '9') {
            return (('a' > c || c > 'f') ? c - 'A' : c - 'a') + 10;
        }
        return c - '0';
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m1390catch(oj1 oj1Var, oj1 oj1Var2) {
        if (!oj1Var.m5673else()) {
            if (oj1Var2.m5673else()) {
                return false;
            }
            return m1396for(oj1Var.m5674new(), oj1Var2.m5674new());
        }
        if (!oj1Var2.m5673else()) {
            return false;
        }
        u4[] u4VarArrM5672case = oj1Var.m5672case();
        u4[] u4VarArrM5672case2 = oj1Var2.m5672case();
        if (u4VarArrM5672case.length != u4VarArrM5672case2.length) {
            return false;
        }
        for (int i = 0; i != u4VarArrM5672case.length; i++) {
            if (!m1396for(u4VarArrM5672case[i], u4VarArrM5672case2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    public static oj1[] m1391class(String str, X500NameStyle x500NameStyle) {
        vg2 vg2Var = new vg2(str);
        ug2 ug2Var = new ug2(x500NameStyle);
        while (vg2Var.m8857do()) {
            String strM8858if = vg2Var.m8858if();
            if (strM8858if.indexOf(43) > 0) {
                vg2 vg2Var2 = new vg2(strM8858if, hy1.f2562if);
                vg2 vg2Var3 = new vg2(vg2Var2.m8858if(), hy1.f2563new);
                String strM8858if2 = vg2Var3.m8858if();
                if (!vg2Var3.m8857do()) {
                    throw new IllegalArgumentException("badly formatted directory string");
                }
                String strM8858if3 = vg2Var3.m8858if();
                Ccatch ccatchAttrNameToOID = x500NameStyle.attrNameToOID(strM8858if2.trim());
                if (vg2Var2.m8857do()) {
                    Vector vector = new Vector();
                    Vector vector2 = new Vector();
                    while (true) {
                        vector.addElement(ccatchAttrNameToOID);
                        vector2.addElement(m1403throw(strM8858if3));
                        if (!vg2Var2.m8857do()) {
                            ug2Var.m8446if(m1395final(vector), m1401super(vector2));
                            break;
                        }
                        vg2 vg2Var4 = new vg2(vg2Var2.m8858if(), hy1.f2563new);
                        String strM8858if4 = vg2Var4.m8858if();
                        if (!vg2Var4.m8857do()) {
                            throw new IllegalArgumentException("badly formatted directory string");
                        }
                        strM8858if3 = vg2Var4.m8858if();
                        ccatchAttrNameToOID = x500NameStyle.attrNameToOID(strM8858if4.trim());
                    }
                } else {
                    ug2Var.m8448try(ccatchAttrNameToOID, m1403throw(strM8858if3));
                }
            } else {
                vg2 vg2Var5 = new vg2(strM8858if, hy1.f2563new);
                String strM8858if5 = vg2Var5.m8858if();
                if (!vg2Var5.m8857do()) {
                    throw new IllegalArgumentException("badly formatted directory string");
                }
                ug2Var.m8448try(x500NameStyle.attrNameToOID(strM8858if5.trim()), m1403throw(vg2Var5.m8858if()));
            }
        }
        return ug2Var.m8444else().m7888break();
    }

    /* renamed from: const, reason: not valid java name */
    public static String m1392const(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char cCharAt = str.charAt(0);
            stringBuffer.append(cCharAt);
            int i = 1;
            while (i < str.length()) {
                char cCharAt2 = str.charAt(i);
                if (cCharAt != ' ' || cCharAt2 != ' ') {
                    stringBuffer.append(cCharAt2);
                }
                i++;
                cCharAt = cCharAt2;
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1393do(StringBuffer stringBuffer, oj1 oj1Var, Hashtable hashtable) {
        if (!oj1Var.m5673else()) {
            if (oj1Var.m5674new() != null) {
                m1398if(stringBuffer, oj1Var.m5674new(), hashtable);
                return;
            }
            return;
        }
        u4[] u4VarArrM5672case = oj1Var.m5672case();
        boolean z = true;
        for (int i = 0; i != u4VarArrM5672case.length; i++) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append(hy1.f2562if);
            }
            m1398if(stringBuffer, u4VarArrM5672case[i], hashtable);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Ccatch m1394else(String str, Hashtable hashtable) {
        if (Cfor.m36356final(str).startsWith("OID.")) {
            return new Ccatch(str.substring(4));
        }
        if (str.charAt(0) >= '0' && str.charAt(0) <= '9') {
            return new Ccatch(str);
        }
        Ccatch ccatch = (Ccatch) hashtable.get(Cfor.m36349break(str));
        if (ccatch != null) {
            return ccatch;
        }
        throw new IllegalArgumentException("Unknown object id - " + str + " - passed to distinguished name");
    }

    /* renamed from: final, reason: not valid java name */
    private static Ccatch[] m1395final(Vector vector) {
        int size = vector.size();
        Ccatch[] ccatchArr = new Ccatch[size];
        for (int i = 0; i != size; i++) {
            ccatchArr[i] = (Ccatch) vector.elementAt(i);
        }
        return ccatchArr;
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m1396for(u4 u4Var, u4 u4Var2) {
        if (u4Var == u4Var2) {
            return true;
        }
        return u4Var != null && u4Var2 != null && u4Var.m8232try().equals(u4Var2.m8232try()) && m1404try(m1399import(u4Var.m8231case())).equals(m1404try(m1399import(u4Var2.m8231case())));
    }

    /* renamed from: goto, reason: not valid java name */
    private static Cfinal m1397goto(String str) {
        try {
            return Cfinal.m33015else(org.bouncycastle.util.encoders.Cfor.m36332if(str.substring(1)));
        } catch (IOException e) {
            throw new IllegalStateException("unknown encoding in name: " + e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1398if(StringBuffer stringBuffer, u4 u4Var, Hashtable hashtable) {
        String strM32795super = (String) hashtable.get(u4Var.m8232try());
        if (strM32795super == null) {
            strM32795super = u4Var.m8232try().m32795super();
        }
        stringBuffer.append(strM32795super);
        stringBuffer.append(hy1.f2563new);
        stringBuffer.append(m1399import(u4Var.m8231case()));
    }

    /* renamed from: import, reason: not valid java name */
    public static String m1399import(ASN1Encodable aSN1Encodable) {
        StringBuffer stringBuffer = new StringBuffer();
        if (!(aSN1Encodable instanceof ASN1String) || (aSN1Encodable instanceof org.bouncycastle.asn1.w)) {
            try {
                stringBuffer.append("#" + m1400new(org.bouncycastle.util.encoders.Cfor.m36327case(aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER))));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Other value has no encoded form");
            }
        } else {
            String string = ((ASN1String) aSN1Encodable).getString();
            if (string.length() > 0 && string.charAt(0) == '#') {
                string = "\\" + string;
            }
            stringBuffer.append(string);
        }
        int length = stringBuffer.length();
        int i = (stringBuffer.length() >= 2 && stringBuffer.charAt(0) == '\\' && stringBuffer.charAt(1) == '#') ? 2 : 0;
        while (i != length) {
            if (stringBuffer.charAt(i) == ',' || stringBuffer.charAt(i) == '\"' || stringBuffer.charAt(i) == '\\' || stringBuffer.charAt(i) == '+' || stringBuffer.charAt(i) == '=' || stringBuffer.charAt(i) == '<' || stringBuffer.charAt(i) == '>' || stringBuffer.charAt(i) == ';') {
                stringBuffer.insert(i, "\\");
                i++;
                length++;
            }
            i++;
        }
        if (stringBuffer.length() > 0) {
            for (int i2 = 0; stringBuffer.length() > i2 && stringBuffer.charAt(i2) == ' '; i2 += 2) {
                stringBuffer.insert(i2, "\\");
            }
        }
        for (int length2 = stringBuffer.length() - 1; length2 >= 0 && stringBuffer.charAt(length2) == ' '; length2--) {
            stringBuffer.insert(length2, '\\');
        }
        return stringBuffer.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private static String m1400new(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return new String(cArr);
    }

    /* renamed from: super, reason: not valid java name */
    private static String[] m1401super(Vector vector) {
        int size = vector.size();
        String[] strArr = new String[size];
        for (int i = 0; i != size; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    /* renamed from: this, reason: not valid java name */
    public static String[] m1402this(Ccatch ccatch, Hashtable hashtable) {
        Enumeration enumerationElements = hashtable.elements();
        int i = 0;
        int i2 = 0;
        while (enumerationElements.hasMoreElements()) {
            if (ccatch.equals(enumerationElements.nextElement())) {
                i2++;
            }
        }
        String[] strArr = new String[i2];
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            String str = (String) enumerationKeys.nextElement();
            if (ccatch.equals(hashtable.get(str))) {
                strArr[i] = str;
                i++;
            }
        }
        return strArr;
    }

    /* renamed from: throw, reason: not valid java name */
    private static String m1403throw(String str) {
        int i;
        if (str.length() == 0 || (str.indexOf(92) < 0 && str.indexOf(34) < 0)) {
            return str.trim();
        }
        char[] charArray = str.toCharArray();
        StringBuffer stringBuffer = new StringBuffer(str.length());
        if (charArray[0] == '\\' && charArray[1] == '#') {
            i = 2;
            stringBuffer.append("\\#");
        } else {
            i = 0;
        }
        boolean z = false;
        int length = 0;
        boolean z2 = false;
        boolean z3 = false;
        char c = 0;
        while (i != charArray.length) {
            char c2 = charArray[i];
            if (c2 != ' ') {
                z3 = true;
            }
            if (c2 == '\"') {
                if (!z) {
                    z2 = !z2;
                }
                z = false;
                i++;
            } else {
                if (c2 == '\\' && !z && !z2) {
                    length = stringBuffer.length();
                    z = true;
                } else if (c2 != ' ' || z || z3) {
                    if (z && m1388break(c2)) {
                        if (c != 0) {
                            stringBuffer.append((char) ((m1389case(c) * 16) + m1389case(c2)));
                            z = false;
                            c = 0;
                        } else {
                            c = c2;
                        }
                    }
                }
                i++;
            }
            stringBuffer.append(c2);
            z = false;
            i++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.charAt(stringBuffer.length() - 1) == ' ' && length != stringBuffer.length() - 1) {
                stringBuffer.setLength(stringBuffer.length() - 1);
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public static String m1404try(String str) {
        String strM36349break = Cfor.m36349break(str);
        int i = 0;
        if (strM36349break.length() > 0 && strM36349break.charAt(0) == '#') {
            ASN1Encodable aSN1EncodableM1397goto = m1397goto(strM36349break);
            if (aSN1EncodableM1397goto instanceof ASN1String) {
                strM36349break = Cfor.m36349break(((ASN1String) aSN1EncodableM1397goto).getString());
            }
        }
        if (strM36349break.length() > 1) {
            while (true) {
                int i2 = i + 1;
                if (i2 >= strM36349break.length() || strM36349break.charAt(i) != '\\' || strM36349break.charAt(i2) != ' ') {
                    break;
                }
                i += 2;
            }
            int length = strM36349break.length() - 1;
            while (true) {
                int i3 = length - 1;
                if (i3 <= 0 || strM36349break.charAt(i3) != '\\' || strM36349break.charAt(length) != ' ') {
                    break;
                }
                length -= 2;
            }
            if (i > 0 || length < strM36349break.length() - 1) {
                strM36349break = strM36349break.substring(i, length + 1);
            }
        }
        return m1392const(strM36349break);
    }

    /* renamed from: while, reason: not valid java name */
    public static ASN1Encodable m1405while(String str, int i) throws IOException {
        int length = (str.length() - i) / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 != length; i2++) {
            int i3 = (i2 * 2) + i;
            char cCharAt = str.charAt(i3);
            char cCharAt2 = str.charAt(i3 + 1);
            bArr[i2] = (byte) (m1389case(cCharAt2) | (m1389case(cCharAt) << 4));
        }
        return Cfinal.m33015else(bArr);
    }
}
