package org.bouncycastle.jce.provider;

import android.support.v4.hn0;
import android.support.v4.on0;
import android.support.v4.q3;
import android.support.v4.tg0;
import android.support.v4.wg0;
import android.support.v4.ya1;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.Ctry;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.g;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jce.provider.package, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpackage {

    /* renamed from: break, reason: not valid java name */
    private Set f31649break;

    /* renamed from: case, reason: not valid java name */
    private Set f31650case;

    /* renamed from: else, reason: not valid java name */
    private Set f31652else;

    /* renamed from: goto, reason: not valid java name */
    private Set f31654goto;

    /* renamed from: this, reason: not valid java name */
    private Set f31657this;

    /* renamed from: do, reason: not valid java name */
    private Set f31651do = new HashSet();

    /* renamed from: if, reason: not valid java name */
    private Set f31655if = new HashSet();

    /* renamed from: for, reason: not valid java name */
    private Set f31653for = new HashSet();

    /* renamed from: new, reason: not valid java name */
    private Set f31656new = new HashSet();

    /* renamed from: try, reason: not valid java name */
    private Set f31658try = new HashSet();

    private byte[][] a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int length = bArr.length;
        byte[] bArr5 = new byte[length];
        byte[] bArr6 = new byte[length];
        byte[] bArr7 = new byte[length];
        byte[] bArr8 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr5[i] = (byte) (bArr[i] & bArr2[i]);
            bArr6[i] = (byte) ((bArr[i] & bArr2[i]) | (bArr2[i] ^ (-1)));
            bArr7[i] = (byte) (bArr3[i] & bArr4[i]);
            bArr8[i] = (byte) ((bArr3[i] & bArr4[i]) | (bArr4[i] ^ (-1)));
        }
        return new byte[][]{bArr5, bArr6, bArr7, bArr8};
    }

    /* renamed from: abstract, reason: not valid java name */
    private Set m35058abstract(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return Collections.EMPTY_SET;
        }
        byte[][] bArrM35078return = m35078return(bArr, bArr2);
        byte[] bArr3 = bArrM35078return[0];
        byte[] bArr4 = bArrM35078return[1];
        byte[] bArr5 = bArrM35078return[2];
        byte[] bArr6 = bArrM35078return[3];
        byte[][] bArrA = a(bArr3, bArr4, bArr5, bArr6);
        return m35088while(m35072instanceof(bArrA[0], bArrA[2]), m35082synchronized(bArrA[1], bArrA[3])) == 1 ? Collections.EMPTY_SET : Collections.singleton(m35076protected(b(bArrA[0], bArrA[2]), b(bArr4, bArr6)));
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr[i] | bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: break, reason: not valid java name */
    private void m35059break(Set set, Csuper csuper) throws ya1 {
        if (set == null) {
            return;
        }
        if (set.isEmpty() && csuper.size() == 0) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m(csuper, (Csuper) it.next())) {
                return;
            }
        }
        throw new ya1("Subject distinguished name is not from a permitted subtree");
    }

    private String c(byte[] bArr) {
        String str = "";
        for (int i = 0; i < bArr.length / 2; i++) {
            str = str + Integer.toString(bArr[i] & 255) + ".";
        }
        String str2 = str.substring(0, str.length() - 1) + on0.f4694final;
        for (int length = bArr.length / 2; length < bArr.length; length++) {
            str2 = str2 + Integer.toString(bArr[length] & 255) + ".";
        }
        return str2.substring(0, str2.length() - 1);
    }

    /* renamed from: case, reason: not valid java name */
    private void m35060case(Set set, String str) throws ya1 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m35071import(str, (String) it.next())) {
                throw new ya1("Email address is from an excluded subtree.");
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m35061class(Set set, String str) throws ya1 {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (n(str, str2) || str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new ya1("DNS is not from a permitted subtree.");
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m35062const(Set set, String str) throws ya1 {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m35071import(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new ya1("Subject email address is not from a permitted subtree.");
        }
    }

    private String d(Set set) {
        String strSubstring = "[";
        Iterator it = set.iterator();
        while (it.hasNext()) {
            strSubstring = strSubstring + c((byte[]) it.next()) + ",";
        }
        if (strSubstring.length() > 1) {
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        return strSubstring + "]";
    }

    /* renamed from: default, reason: not valid java name */
    private Set m35063default(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String strM35079static = m35079static(((wg0) it.next()).m9148new());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    String str = (String) it2.next();
                    if (n(str, strM35079static)) {
                        hashSet.add(str);
                    } else if (n(strM35079static, str)) {
                        hashSet.add(strM35079static);
                    }
                }
            } else if (strM35079static != null) {
                hashSet.add(strM35079static);
            }
        }
        return hashSet;
    }

    private Set e(Set set, Csuper csuper) {
        if (set.isEmpty()) {
            if (csuper == null) {
                return set;
            }
            set.add(csuper);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Csuper csuper2 = (Csuper) it.next();
            if (m(csuper, csuper2)) {
                hashSet.add(csuper2);
            } else {
                if (!m(csuper2, csuper)) {
                    hashSet.add(csuper2);
                }
                hashSet.add(csuper);
            }
        }
        return hashSet;
    }

    /* renamed from: else, reason: not valid java name */
    private void m35064else(Set set, byte[] bArr) throws ya1 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m35085transient(bArr, (byte[]) it.next())) {
                throw new ya1("IP is from an excluded subtree.");
            }
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private Set m35065extends(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String strM35079static = m35079static(((wg0) it.next()).m9148new());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    m35067finally(strM35079static, (String) it2.next(), hashSet);
                }
            } else if (strM35079static != null) {
                hashSet.add(strM35079static);
            }
        }
        return hashSet;
    }

    /* renamed from: final, reason: not valid java name */
    private void m35066final(Set set, byte[] bArr) throws ya1 {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m35085transient(bArr, (byte[]) it.next())) {
                return;
            }
        }
        if (bArr.length != 0 || set.size() != 0) {
            throw new ya1("IP is not from a permitted subtree.");
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private void m35067finally(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String strSubstring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (!str.equalsIgnoreCase(str2)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!n(strSubstring, str2)) {
                    return;
                }
            } else if (!strSubstring.equalsIgnoreCase(str2)) {
                return;
            }
        } else {
            if (str.startsWith(".")) {
                if (str2.indexOf(64) != -1) {
                    if (!n(str2.substring(str.indexOf(64) + 1), str)) {
                        return;
                    }
                } else if (str2.startsWith(".")) {
                    if (!n(str, str2) && !str.equalsIgnoreCase(str2)) {
                        if (!n(str2, str)) {
                            return;
                        }
                    }
                } else if (!n(str2, str)) {
                    return;
                }
                set.add(str2);
                return;
            }
            if (str2.indexOf(64) != -1) {
                if (!str2.substring(str2.indexOf(64) + 1).equalsIgnoreCase(str)) {
                    return;
                }
                set.add(str2);
                return;
            } else if (str2.startsWith(".")) {
                if (!n(str, str2)) {
                    return;
                }
            } else if (!str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        set.add(str);
    }

    /* renamed from: for, reason: not valid java name */
    private void m35068for(Set set, Csuper csuper) throws ya1 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m(csuper, (Csuper) it.next())) {
                throw new ya1("Subject distinguished name is from an excluded subtree");
            }
        }
    }

    private Set g(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            h((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m35069goto(Set set, String str) throws ya1 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m35070implements(str, (String) it.next())) {
                throw new ya1("URI is from an excluded subtree.");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        if (n(r6.substring(r5.indexOf(64) + 1), r5) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006c, code lost:
    
        if (n(r6, r5) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
    
        if (n(r6, r5) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008a, code lost:
    
        if (r6.substring(r5.indexOf(64) + 1).equalsIgnoreCase(r5) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009e, code lost:
    
        if (r5.equalsIgnoreCase(r6) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a0, code lost:
    
        r7.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        if (r5.equalsIgnoreCase(r6) != false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void h(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String strSubstring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) == -1) {
                if (!str2.startsWith(".") ? !strSubstring.equalsIgnoreCase(str2) : !n(strSubstring, str2)) {
                }
            }
            set.add(str);
        } else if (str.startsWith(".")) {
            if (str2.indexOf(64) == -1) {
                if (str2.startsWith(".")) {
                    if (!n(str, str2) && !str.equalsIgnoreCase(str2)) {
                    }
                }
            }
        } else if (str2.indexOf(64) == -1) {
            if (str2.startsWith(".")) {
                if (!n(str, str2)) {
                }
            }
            set.add(str);
        }
        set.add(str2);
    }

    private Set i(Set set, byte[] bArr) {
        if (set.isEmpty()) {
            if (bArr == null) {
                return set;
            }
            set.add(bArr);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.addAll(j((byte[]) it.next(), bArr));
        }
        return hashSet;
    }

    /* renamed from: implements, reason: not valid java name */
    private boolean m35070implements(String str, String str2) {
        String strM35077public = m35077public(str);
        return !str2.startsWith(".") ? strM35077public.equalsIgnoreCase(str2) : n(strM35077public, str2);
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m35071import(String str, String str2) {
        String strSubstring = str.substring(str.indexOf(64) + 1);
        if (str2.indexOf(64) != -1) {
            if (str.equalsIgnoreCase(str2) || strSubstring.equalsIgnoreCase(str2.substring(1))) {
                return true;
            }
        } else if (str2.charAt(0) != '.') {
            if (strSubstring.equalsIgnoreCase(str2)) {
                return true;
            }
        } else if (n(strSubstring, str2)) {
            return true;
        }
        return false;
    }

    /* renamed from: instanceof, reason: not valid java name */
    private static byte[] m35072instanceof(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if ((bArr[i] & 65535) > (65535 & bArr2[i])) {
                return bArr;
            }
        }
        return bArr2;
    }

    /* renamed from: interface, reason: not valid java name */
    private void m35073interface(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String strSubstring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (!str.equalsIgnoreCase(str2)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!n(strSubstring, str2)) {
                    return;
                }
            } else if (!strSubstring.equalsIgnoreCase(str2)) {
                return;
            }
        } else {
            if (str.startsWith(".")) {
                if (str2.indexOf(64) != -1) {
                    if (!n(str2.substring(str.indexOf(64) + 1), str)) {
                        return;
                    }
                } else if (str2.startsWith(".")) {
                    if (!n(str, str2) && !str.equalsIgnoreCase(str2)) {
                        if (!n(str2, str)) {
                            return;
                        }
                    }
                } else if (!n(str2, str)) {
                    return;
                }
                set.add(str2);
                return;
            }
            if (str2.indexOf(64) != -1) {
                if (!str2.substring(str2.indexOf(64) + 1).equalsIgnoreCase(str)) {
                    return;
                }
                set.add(str2);
                return;
            } else if (str2.startsWith(".")) {
                if (!n(str, str2)) {
                    return;
                }
            } else if (!str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        set.add(str);
    }

    private Set j(byte[] bArr, byte[] bArr2) {
        HashSet hashSet = new HashSet();
        boolean zM6362case = q3.m6362case(bArr, bArr2);
        hashSet.add(bArr);
        if (!zM6362case) {
            hashSet.add(bArr2);
        }
        return hashSet;
    }

    private Set k(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            l((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        if (n(r6.substring(r5.indexOf(64) + 1), r5) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006c, code lost:
    
        if (n(r6, r5) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
    
        if (n(r6, r5) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008a, code lost:
    
        if (r6.substring(r5.indexOf(64) + 1).equalsIgnoreCase(r5) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009e, code lost:
    
        if (r5.equalsIgnoreCase(r6) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a0, code lost:
    
        r7.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        if (r5.equalsIgnoreCase(r6) != false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void l(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String strSubstring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) == -1) {
                if (!str2.startsWith(".") ? !strSubstring.equalsIgnoreCase(str2) : !n(strSubstring, str2)) {
                }
            }
            set.add(str);
        } else if (str.startsWith(".")) {
            if (str2.indexOf(64) == -1) {
                if (str2.startsWith(".")) {
                    if (!n(str, str2) && !str.equalsIgnoreCase(str2)) {
                    }
                }
            }
        } else if (str2.indexOf(64) == -1) {
            if (str2.startsWith(".")) {
                if (!n(str, str2)) {
                }
            }
            set.add(str);
        }
        set.add(str2);
    }

    private static boolean m(Csuper csuper, Csuper csuper2) {
        if (csuper2.size() < 1 || csuper2.size() > csuper.size()) {
            return false;
        }
        for (int size = csuper2.size() - 1; size >= 0; size--) {
            if (!csuper2.mo33075final(size).equals(csuper.mo33075final(size))) {
                return false;
            }
        }
        return true;
    }

    private boolean n(String str, String str2) {
        if (str2.startsWith(".")) {
            str2 = str2.substring(1);
        }
        String[] strArrM36350case = Cfor.m36350case(str2, Ctry.f28883do);
        String[] strArrM36350case2 = Cfor.m36350case(str, Ctry.f28883do);
        if (strArrM36350case2.length <= strArrM36350case.length) {
            return false;
        }
        int length = strArrM36350case2.length - strArrM36350case.length;
        for (int i = -1; i < strArrM36350case.length; i++) {
            if (i == -1) {
                if (strArrM36350case2[i + length].equals("")) {
                    return false;
                }
            } else if (!strArrM36350case[i].equalsIgnoreCase(strArrM36350case2[i + length])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: native, reason: not valid java name */
    private boolean m35074native(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return ((obj instanceof byte[]) && (obj2 instanceof byte[])) ? q3.m6362case((byte[]) obj, (byte[]) obj2) : obj.equals(obj2);
    }

    /* renamed from: private, reason: not valid java name */
    private Set m35075private(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            byte[] bArrMo5490const = Cclass.m32796catch(((wg0) it.next()).m9148new().m7878else()).mo5490const();
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    hashSet.addAll(m35058abstract((byte[]) it2.next(), bArrMo5490const));
                }
            } else if (bArrMo5490const != null) {
                hashSet.add(bArrMo5490const);
            }
        }
        return hashSet;
    }

    /* renamed from: protected, reason: not valid java name */
    private byte[] m35076protected(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length * 2];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr2, 0, bArr3, length, length);
        return bArr3;
    }

    /* renamed from: public, reason: not valid java name */
    private static String m35077public(String str) {
        String strSubstring = str.substring(str.indexOf(58) + 1);
        if (strSubstring.indexOf("//") != -1) {
            strSubstring = strSubstring.substring(strSubstring.indexOf("//") + 2);
        }
        if (strSubstring.lastIndexOf(58) != -1) {
            strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf(58));
        }
        String strSubstring2 = strSubstring.substring(strSubstring.indexOf(58) + 1);
        String strSubstring3 = strSubstring2.substring(strSubstring2.indexOf(64) + 1);
        return strSubstring3.indexOf(47) != -1 ? strSubstring3.substring(0, strSubstring3.indexOf(47)) : strSubstring3;
    }

    /* renamed from: return, reason: not valid java name */
    private byte[][] m35078return(byte[] bArr, byte[] bArr2) {
        int length = bArr.length / 2;
        byte[] bArr3 = new byte[length];
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr, length, bArr4, 0, length);
        byte[] bArr5 = new byte[length];
        byte[] bArr6 = new byte[length];
        System.arraycopy(bArr2, 0, bArr5, 0, length);
        System.arraycopy(bArr2, length, bArr6, 0, length);
        return new byte[][]{bArr3, bArr4, bArr5, bArr6};
    }

    /* renamed from: static, reason: not valid java name */
    private String m35079static(tg0 tg0Var) {
        return g.m33023catch(tg0Var.m7878else()).getString();
    }

    /* renamed from: super, reason: not valid java name */
    private void m35080super(Set set, String str) throws ya1 {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m35070implements(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new ya1("URI is not from a permitted subtree.");
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private int m35081switch(Collection collection) {
        int iN = 0;
        if (collection == null) {
            return 0;
        }
        for (Object obj : collection) {
            iN += obj instanceof byte[] ? q3.n((byte[]) obj) : obj.hashCode();
        }
        return iN;
    }

    /* renamed from: synchronized, reason: not valid java name */
    private static byte[] m35082synchronized(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if ((bArr[i] & 65535) < (65535 & bArr2[i])) {
                return bArr;
            }
        }
        return bArr2;
    }

    /* renamed from: throw, reason: not valid java name */
    private boolean m35083throw(Collection collection, Collection collection2) {
        boolean z;
        if (collection == collection2) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        for (Object obj : collection) {
            Iterator it = collection2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (m35074native(obj, it.next())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: throws, reason: not valid java name */
    private Set m35084throws(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            Csuper csuperM33129catch = Csuper.m33129catch(((wg0) it.next()).m9148new().m7878else().toASN1Primitive());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    Csuper csuper = (Csuper) it2.next();
                    if (m(csuperM33129catch, csuper)) {
                        hashSet.add(csuperM33129catch);
                    } else if (m(csuper, csuperM33129catch)) {
                        hashSet.add(csuper);
                    }
                }
            } else if (csuperM33129catch != null) {
                hashSet.add(csuperM33129catch);
            }
        }
        return hashSet;
    }

    /* renamed from: transient, reason: not valid java name */
    private boolean m35085transient(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length != bArr2.length / 2) {
            return false;
        }
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr2, length, bArr3, 0, length);
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr4[i] = (byte) (bArr2[i] & bArr3[i]);
            bArr5[i] = (byte) (bArr[i] & bArr3[i]);
        }
        return q3.m6362case(bArr4, bArr5);
    }

    /* renamed from: try, reason: not valid java name */
    private void m35086try(Set set, String str) throws ya1 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (n(str, str2) || str.equalsIgnoreCase(str2)) {
                throw new ya1("DNS is from an excluded subtree.");
            }
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private Set m35087volatile(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String strM35079static = m35079static(((wg0) it.next()).m9148new());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    m35073interface((String) it2.next(), strM35079static, hashSet);
                }
            } else if (strM35079static != null) {
                hashSet.add(strM35079static);
            }
        }
        return hashSet;
    }

    /* renamed from: while, reason: not valid java name */
    private static int m35088while(byte[] bArr, byte[] bArr2) {
        if (q3.m6362case(bArr, bArr2)) {
            return 0;
        }
        return q3.m6362case(m35072instanceof(bArr, bArr2), bArr) ? 1 : -1;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m35089catch(Csuper csuper) throws ya1 {
        m35059break(this.f31650case, csuper);
    }

    /* renamed from: continue, reason: not valid java name */
    public void m35090continue(wg0 wg0Var) {
        m35095strictfp(new wg0[]{wg0Var});
    }

    /* renamed from: do, reason: not valid java name */
    public void m35091do(wg0 wg0Var) {
        tg0 tg0VarM9148new = wg0Var.m9148new();
        int tagNo = tg0VarM9148new.getTagNo();
        if (tagNo == 1) {
            this.f31653for = g(this.f31653for, m35079static(tg0VarM9148new));
            return;
        }
        if (tagNo == 2) {
            this.f31655if = f(this.f31655if, m35079static(tg0VarM9148new));
            return;
        }
        if (tagNo == 4) {
            this.f31651do = e(this.f31651do, (Csuper) tg0VarM9148new.m7878else().toASN1Primitive());
        } else if (tagNo == 6) {
            this.f31656new = k(this.f31656new, m35079static(tg0VarM9148new));
        } else {
            if (tagNo != 7) {
                return;
            }
            this.f31658try = i(this.f31658try, Cclass.m32796catch(tg0VarM9148new.m7878else()).mo5490const());
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cpackage)) {
            return false;
        }
        Cpackage cpackage = (Cpackage) obj;
        return m35083throw(cpackage.f31651do, this.f31651do) && m35083throw(cpackage.f31655if, this.f31655if) && m35083throw(cpackage.f31653for, this.f31653for) && m35083throw(cpackage.f31658try, this.f31658try) && m35083throw(cpackage.f31656new, this.f31656new) && m35083throw(cpackage.f31650case, this.f31650case) && m35083throw(cpackage.f31652else, this.f31652else) && m35083throw(cpackage.f31654goto, this.f31654goto) && m35083throw(cpackage.f31649break, this.f31649break) && m35083throw(cpackage.f31657this, this.f31657this);
    }

    public Set f(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (!n(str2, str)) {
                boolean zN = n(str, str2);
                hashSet.add(str2);
                if (zN) {
                }
            }
            hashSet.add(str);
        }
        return hashSet;
    }

    public int hashCode() {
        return m35081switch(this.f31651do) + m35081switch(this.f31655if) + m35081switch(this.f31653for) + m35081switch(this.f31658try) + m35081switch(this.f31656new) + m35081switch(this.f31650case) + m35081switch(this.f31652else) + m35081switch(this.f31654goto) + m35081switch(this.f31649break) + m35081switch(this.f31657this);
    }

    /* renamed from: if, reason: not valid java name */
    public void m35092if(tg0 tg0Var) throws ya1 {
        int tagNo = tg0Var.getTagNo();
        if (tagNo == 1) {
            m35060case(this.f31653for, m35079static(tg0Var));
            return;
        }
        if (tagNo == 2) {
            m35086try(this.f31655if, g.m33023catch(tg0Var.m7878else()).getString());
            return;
        }
        if (tagNo == 4) {
            m35093new(Csuper.m33129catch(tg0Var.m7878else().toASN1Primitive()));
            return;
        }
        if (tagNo == 6) {
            m35069goto(this.f31656new, g.m33023catch(tg0Var.m7878else()).getString());
        } else {
            if (tagNo != 7) {
                return;
            }
            m35064else(this.f31658try, Cclass.m32796catch(tg0Var.m7878else()).mo5490const());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m35093new(Csuper csuper) throws ya1 {
        m35068for(this.f31651do, csuper);
    }

    /* renamed from: package, reason: not valid java name */
    public void m35094package(int i) {
        if (i == 1) {
            this.f31654goto = new HashSet();
            return;
        }
        if (i == 2) {
            this.f31652else = new HashSet();
            return;
        }
        if (i == 4) {
            this.f31650case = new HashSet();
        } else if (i == 6) {
            this.f31657this = new HashSet();
        } else {
            if (i != 7) {
                return;
            }
            this.f31649break = new HashSet();
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m35095strictfp(wg0[] wg0VarArr) {
        HashMap map = new HashMap();
        for (int i = 0; i != wg0VarArr.length; i++) {
            wg0 wg0Var = wg0VarArr[i];
            Integer numM3072for = hn0.m3072for(wg0Var.m9148new().getTagNo());
            if (map.get(numM3072for) == null) {
                map.put(numM3072for, new HashSet());
            }
            ((Set) map.get(numM3072for)).add(wg0Var);
        }
        for (Map.Entry entry : map.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if (iIntValue == 1) {
                this.f31654goto = m35065extends(this.f31654goto, (Set) entry.getValue());
            } else if (iIntValue == 2) {
                this.f31652else = m35063default(this.f31652else, (Set) entry.getValue());
            } else if (iIntValue == 4) {
                this.f31650case = m35084throws(this.f31650case, (Set) entry.getValue());
            } else if (iIntValue == 6) {
                this.f31657this = m35087volatile(this.f31657this, (Set) entry.getValue());
            } else if (iIntValue == 7) {
                this.f31649break = m35075private(this.f31649break, (Set) entry.getValue());
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m35096this(tg0 tg0Var) throws ya1 {
        int tagNo = tg0Var.getTagNo();
        if (tagNo == 1) {
            m35062const(this.f31654goto, m35079static(tg0Var));
            return;
        }
        if (tagNo == 2) {
            m35061class(this.f31652else, g.m33023catch(tg0Var.m7878else()).getString());
            return;
        }
        if (tagNo == 4) {
            m35089catch(Csuper.m33129catch(tg0Var.m7878else().toASN1Primitive()));
            return;
        }
        if (tagNo == 6) {
            m35080super(this.f31657this, g.m33023catch(tg0Var.m7878else()).getString());
        } else {
            if (tagNo != 7) {
                return;
            }
            m35066final(this.f31649break, Cclass.m32796catch(tg0Var.m7878else()).mo5490const());
        }
    }

    public String toString() {
        String str = "permitted:\n";
        if (this.f31650case != null) {
            str = (str + "DN:\n") + this.f31650case.toString() + "\n";
        }
        if (this.f31652else != null) {
            str = (str + "DNS:\n") + this.f31652else.toString() + "\n";
        }
        if (this.f31654goto != null) {
            str = (str + "Email:\n") + this.f31654goto.toString() + "\n";
        }
        if (this.f31657this != null) {
            str = (str + "URI:\n") + this.f31657this.toString() + "\n";
        }
        if (this.f31649break != null) {
            str = (str + "IP:\n") + d(this.f31649break) + "\n";
        }
        String str2 = str + "excluded:\n";
        if (!this.f31651do.isEmpty()) {
            str2 = (str2 + "DN:\n") + this.f31651do.toString() + "\n";
        }
        if (!this.f31655if.isEmpty()) {
            str2 = (str2 + "DNS:\n") + this.f31655if.toString() + "\n";
        }
        if (!this.f31653for.isEmpty()) {
            str2 = (str2 + "Email:\n") + this.f31653for.toString() + "\n";
        }
        if (!this.f31656new.isEmpty()) {
            str2 = (str2 + "URI:\n") + this.f31656new.toString() + "\n";
        }
        if (this.f31658try.isEmpty()) {
            return str2;
        }
        return (str2 + "IP:\n") + d(this.f31658try) + "\n";
    }
}
