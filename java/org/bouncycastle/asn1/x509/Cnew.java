package org.bouncycastle.asn1.x509;

import android.support.v4.a21;
import android.support.v4.hn0;
import android.support.v4.on0;
import android.support.v4.q3;
import android.support.v4.tg0;
import android.support.v4.tg2;
import android.support.v4.w81;
import android.support.v4.wg0;
import java.io.IOException;
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
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.asn1.x509.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements NameConstraintValidator {

    /* renamed from: break, reason: not valid java name */
    private Set f29343break;

    /* renamed from: catch, reason: not valid java name */
    private Set f29345catch;

    /* renamed from: class, reason: not valid java name */
    private Set f29346class;

    /* renamed from: else, reason: not valid java name */
    private Set f29348else;

    /* renamed from: goto, reason: not valid java name */
    private Set f29350goto;

    /* renamed from: this, reason: not valid java name */
    private Set f29353this;

    /* renamed from: do, reason: not valid java name */
    private Set f29347do = new HashSet();

    /* renamed from: if, reason: not valid java name */
    private Set f29351if = new HashSet();

    /* renamed from: for, reason: not valid java name */
    private Set f29349for = new HashSet();

    /* renamed from: new, reason: not valid java name */
    private Set f29352new = new HashSet();

    /* renamed from: try, reason: not valid java name */
    private Set f29354try = new HashSet();

    /* renamed from: case, reason: not valid java name */
    private Set f29344case = new HashSet();

    private String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length / 2; i++) {
            if (sb.length() > 0) {
                sb.append(".");
            }
            sb.append(Integer.toString(bArr[i] & 255));
        }
        sb.append(on0.f4694final);
        boolean z = true;
        for (int length = bArr.length / 2; length < bArr.length; length++) {
            if (z) {
                z = false;
            } else {
                sb.append(".");
            }
            sb.append(Integer.toString(bArr[length] & 255));
        }
        return sb.toString();
    }

    /* renamed from: abstract, reason: not valid java name */
    private Set m33250abstract(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String strM33276return = m33276return(((wg0) it.next()).m9148new());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    m33256continue((String) it2.next(), strM33276return, hashSet);
                }
            } else if (strM33276return != null) {
                hashSet.add(strM33276return);
            }
        }
        return hashSet;
    }

    private String b(Set set) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (sb.length() > 1) {
                sb.append(",");
            }
            sb.append(a((byte[]) it.next()));
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: break, reason: not valid java name */
    private void m33251break(Set set, String str) throws a21 {
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
            throw new a21("DNS is not from a permitted subtree.");
        }
    }

    private String c(Set set) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (sb.length() > 1) {
                sb.append(",");
            }
            w81 w81VarM9095new = w81.m9095new(it.next());
            sb.append(w81VarM9095new.m9097try().m32795super());
            sb.append(":");
            try {
                sb.append(Cfor.m36331goto(w81VarM9095new.m9096case().toASN1Primitive().getEncoded()));
            } catch (IOException e) {
                sb.append(e.toString());
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: case, reason: not valid java name */
    private void m33252case(Set set, w81 w81Var) throws a21 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m33281synchronized(w81Var, w81.m9095new(it.next()))) {
                throw new a21("OtherName is from an excluded subtree.");
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m33253catch(Set set, String str) throws a21 {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m33288while(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new a21("Subject email address is not from a permitted subtree.");
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m33254class(Set set, byte[] bArr) throws a21 {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m33287volatile(bArr, (byte[]) it.next())) {
                return;
            }
        }
        if (bArr.length != 0 || set.size() != 0) {
            throw new a21("IP is not from a permitted subtree.");
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m33255const(Set set, w81 w81Var) throws a21 {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m33281synchronized(w81Var, (w81) it.next())) {
                return;
            }
        }
        throw new a21("Subject OtherName is not from a permitted subtree.");
    }

    /* renamed from: continue, reason: not valid java name */
    private void m33256continue(String str, String str2, Set set) {
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

    private Set d(Set set, Csuper csuper) {
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

    /* renamed from: default, reason: not valid java name */
    private Set m33257default(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String strM33276return = m33276return(((wg0) it.next()).m9148new());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    m33260extends(strM33276return, (String) it2.next(), hashSet);
                }
            } else if (strM33276return != null) {
                hashSet.add(strM33276return);
            }
        }
        return hashSet;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33258do(tg2 tg2Var) throws a21 {
        m33265if(this.f29347do, Csuper.m33129catch(tg2Var));
    }

    private Set e(Set set, String str) {
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

    /* renamed from: else, reason: not valid java name */
    private void m33259else(Set set, String str) throws a21 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m33269interface(str, (String) it.next())) {
                throw new a21("URI is from an excluded subtree.");
            }
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private void m33260extends(String str, String str2, Set set) {
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

    private Set f(Set set, String str) {
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
            g((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    /* renamed from: final, reason: not valid java name */
    private void m33261final(Set set, String str) throws a21 {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m33269interface(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new a21("URI is not from a permitted subtree.");
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private Set m33262finally(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            byte[] bArrMo5490const = Cclass.m32796catch(((wg0) it.next()).m9148new().m7878else()).mo5490const();
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    hashSet.addAll(m33272package((byte[]) it2.next(), bArrMo5490const));
                }
            } else if (bArrMo5490const != null) {
                hashSet.add(bArrMo5490const);
            }
        }
        return hashSet;
    }

    /* renamed from: for, reason: not valid java name */
    private void m33263for(Set set, String str) throws a21 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (n(str, str2) || str.equalsIgnoreCase(str2)) {
                throw new a21("DNS is from an excluded subtree.");
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
    private void g(String str, String str2, Set set) {
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

    /* renamed from: goto, reason: not valid java name */
    private void m33264goto(tg2 tg2Var) throws a21 {
        m33282this(this.f29348else, Csuper.m33129catch(tg2Var.toASN1Primitive()));
    }

    private Set h(Set set, byte[] bArr) {
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
            hashSet.addAll(i((byte[]) it.next(), bArr));
        }
        return hashSet;
    }

    private Set i(byte[] bArr, byte[] bArr2) {
        HashSet hashSet = new HashSet();
        boolean zM6362case = q3.m6362case(bArr, bArr2);
        hashSet.add(bArr);
        if (!zM6362case) {
            hashSet.add(bArr2);
        }
        return hashSet;
    }

    /* renamed from: if, reason: not valid java name */
    private void m33265if(Set set, Csuper csuper) throws a21 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m(csuper, (Csuper) it.next())) {
                throw new a21("Subject distinguished name is from an excluded subtree");
            }
        }
    }

    /* renamed from: implements, reason: not valid java name */
    private byte[][] m33266implements(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
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

    /* renamed from: import, reason: not valid java name */
    private boolean m33267import(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return ((obj instanceof byte[]) && (obj2 instanceof byte[])) ? q3.m6362case((byte[]) obj, (byte[]) obj2) : obj.equals(obj2);
    }

    /* renamed from: instanceof, reason: not valid java name */
    private static byte[] m33268instanceof(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr[i] | bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: interface, reason: not valid java name */
    private boolean m33269interface(String str, String str2) {
        String strM33270native = m33270native(str);
        return !str2.startsWith(".") ? strM33270native.equalsIgnoreCase(str2) : n(strM33270native, str2);
    }

    private Set j(Set set, w81 w81Var) {
        HashSet hashSet = new HashSet(set);
        hashSet.add(w81Var);
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
        String[] strArrM36350case = org.bouncycastle.util.Cfor.m36350case(str2, Ctry.f28883do);
        String[] strArrM36350case2 = org.bouncycastle.util.Cfor.m36350case(str, Ctry.f28883do);
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
    private static String m33270native(String str) {
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

    /* renamed from: new, reason: not valid java name */
    private void m33271new(Set set, String str) throws a21 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m33288while(str, (String) it.next())) {
                throw new a21("Email address is from an excluded subtree.");
            }
        }
    }

    /* renamed from: package, reason: not valid java name */
    private Set m33272package(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return Collections.EMPTY_SET;
        }
        byte[][] bArrM33275public = m33275public(bArr, bArr2);
        byte[] bArr3 = bArrM33275public[0];
        byte[] bArr4 = bArrM33275public[1];
        byte[] bArr5 = bArrM33275public[2];
        byte[] bArr6 = bArrM33275public[3];
        byte[][] bArrM33266implements = m33266implements(bArr3, bArr4, bArr5, bArr6);
        return m33283throw(m33274protected(bArrM33266implements[0], bArrM33266implements[2]), m33285transient(bArrM33266implements[1], bArrM33266implements[3])) == 1 ? Collections.EMPTY_SET : Collections.singleton(m33278strictfp(m33268instanceof(bArrM33266implements[0], bArrM33266implements[2]), m33268instanceof(bArr4, bArr6)));
    }

    /* renamed from: private, reason: not valid java name */
    private Set m33273private(Set set, Set set2) {
        HashSet hashSet = new HashSet(set);
        hashSet.retainAll(set2);
        return hashSet;
    }

    /* renamed from: protected, reason: not valid java name */
    private static byte[] m33274protected(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if ((bArr[i] & 65535) > (65535 & bArr2[i])) {
                return bArr;
            }
        }
        return bArr2;
    }

    /* renamed from: public, reason: not valid java name */
    private byte[][] m33275public(byte[] bArr, byte[] bArr2) {
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

    /* renamed from: return, reason: not valid java name */
    private String m33276return(tg0 tg0Var) {
        return g.m33023catch(tg0Var.m7878else()).getString();
    }

    /* renamed from: static, reason: not valid java name */
    private int m33277static(Collection collection) {
        int iN = 0;
        if (collection == null) {
            return 0;
        }
        for (Object obj : collection) {
            iN += obj instanceof byte[] ? q3.n((byte[]) obj) : obj.hashCode();
        }
        return iN;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private byte[] m33278strictfp(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length * 2];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr2, 0, bArr3, length, length);
        return bArr3;
    }

    /* renamed from: super, reason: not valid java name */
    private boolean m33279super(Collection collection, Collection collection2) {
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
                if (m33267import(obj, it.next())) {
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

    /* renamed from: switch, reason: not valid java name */
    private Set m33280switch(Set set, Set set2) {
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

    /* renamed from: synchronized, reason: not valid java name */
    private boolean m33281synchronized(w81 w81Var, w81 w81Var2) {
        return w81Var2.equals(w81Var);
    }

    /* renamed from: this, reason: not valid java name */
    private void m33282this(Set set, Csuper csuper) throws a21 {
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
        throw new a21("Subject distinguished name is not from a permitted subtree");
    }

    /* renamed from: throw, reason: not valid java name */
    private static int m33283throw(byte[] bArr, byte[] bArr2) {
        if (q3.m6362case(bArr, bArr2)) {
            return 0;
        }
        return q3.m6362case(m33274protected(bArr, bArr2), bArr) ? 1 : -1;
    }

    /* renamed from: throws, reason: not valid java name */
    private Set m33284throws(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String strM33276return = m33276return(((wg0) it.next()).m9148new());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    String str = (String) it2.next();
                    if (n(str, strM33276return)) {
                        hashSet.add(str);
                    } else if (n(strM33276return, str)) {
                        hashSet.add(strM33276return);
                    }
                }
            } else if (strM33276return != null) {
                hashSet.add(strM33276return);
            }
        }
        return hashSet;
    }

    /* renamed from: transient, reason: not valid java name */
    private static byte[] m33285transient(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if ((bArr[i] & 65535) < (65535 & bArr2[i])) {
                return bArr;
            }
        }
        return bArr2;
    }

    /* renamed from: try, reason: not valid java name */
    private void m33286try(Set set, byte[] bArr) throws a21 {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (m33287volatile(bArr, (byte[]) it.next())) {
                throw new a21("IP is from an excluded subtree.");
            }
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private boolean m33287volatile(byte[] bArr, byte[] bArr2) {
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

    /* renamed from: while, reason: not valid java name */
    private boolean m33288while(String str, String str2) {
        String strSubstring = str.substring(str.indexOf(64) + 1);
        if (str2.indexOf(64) != -1) {
            if (str.equalsIgnoreCase(str2)) {
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

    @Override // org.bouncycastle.asn1.x509.NameConstraintValidator
    public void addExcludedSubtree(wg0 wg0Var) {
        tg0 tg0VarM9148new = wg0Var.m9148new();
        int tagNo = tg0VarM9148new.getTagNo();
        if (tagNo == 0) {
            this.f29344case = j(this.f29344case, w81.m9095new(tg0VarM9148new.m7878else()));
            return;
        }
        if (tagNo == 1) {
            this.f29349for = f(this.f29349for, m33276return(tg0VarM9148new));
            return;
        }
        if (tagNo == 2) {
            this.f29351if = e(this.f29351if, m33276return(tg0VarM9148new));
            return;
        }
        if (tagNo == 4) {
            this.f29347do = d(this.f29347do, (Csuper) tg0VarM9148new.m7878else().toASN1Primitive());
            return;
        }
        if (tagNo == 6) {
            this.f29352new = k(this.f29352new, m33276return(tg0VarM9148new));
        } else {
            if (tagNo == 7) {
                this.f29354try = h(this.f29354try, Cclass.m32796catch(tg0VarM9148new.m7878else()).mo5490const());
                return;
            }
            throw new IllegalStateException("Unknown tag encountered: " + tg0VarM9148new.getTagNo());
        }
    }

    @Override // org.bouncycastle.asn1.x509.NameConstraintValidator
    public void checkExcluded(tg0 tg0Var) throws a21 {
        int tagNo = tg0Var.getTagNo();
        if (tagNo == 0) {
            m33252case(this.f29344case, w81.m9095new(tg0Var.m7878else()));
            return;
        }
        if (tagNo == 1) {
            m33271new(this.f29349for, m33276return(tg0Var));
            return;
        }
        if (tagNo == 2) {
            m33263for(this.f29351if, g.m33023catch(tg0Var.m7878else()).getString());
            return;
        }
        if (tagNo == 4) {
            m33258do(tg2.m7884else(tg0Var.m7878else()));
            return;
        }
        if (tagNo == 6) {
            m33259else(this.f29352new, g.m33023catch(tg0Var.m7878else()).getString());
            return;
        }
        if (tagNo == 7) {
            m33286try(this.f29354try, Cclass.m32796catch(tg0Var.m7878else()).mo5490const());
        } else {
            throw new IllegalStateException("Unknown tag encountered: " + tg0Var.getTagNo());
        }
    }

    @Override // org.bouncycastle.asn1.x509.NameConstraintValidator
    public void checkPermitted(tg0 tg0Var) throws a21 {
        int tagNo = tg0Var.getTagNo();
        if (tagNo == 0) {
            m33255const(this.f29346class, w81.m9095new(tg0Var.m7878else()));
            return;
        }
        if (tagNo == 1) {
            m33253catch(this.f29353this, m33276return(tg0Var));
            return;
        }
        if (tagNo == 2) {
            m33251break(this.f29350goto, g.m33023catch(tg0Var.m7878else()).getString());
            return;
        }
        if (tagNo == 4) {
            m33264goto(tg2.m7884else(tg0Var.m7878else()));
            return;
        }
        if (tagNo == 6) {
            m33261final(this.f29343break, g.m33023catch(tg0Var.m7878else()).getString());
            return;
        }
        if (tagNo == 7) {
            m33254class(this.f29345catch, Cclass.m32796catch(tg0Var.m7878else()).mo5490const());
        } else {
            throw new IllegalStateException("Unknown tag encountered: " + tg0Var.getTagNo());
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cnew)) {
            return false;
        }
        Cnew cnew = (Cnew) obj;
        return m33279super(cnew.f29347do, this.f29347do) && m33279super(cnew.f29351if, this.f29351if) && m33279super(cnew.f29349for, this.f29349for) && m33279super(cnew.f29354try, this.f29354try) && m33279super(cnew.f29352new, this.f29352new) && m33279super(cnew.f29344case, this.f29344case) && m33279super(cnew.f29348else, this.f29348else) && m33279super(cnew.f29350goto, this.f29350goto) && m33279super(cnew.f29353this, this.f29353this) && m33279super(cnew.f29345catch, this.f29345catch) && m33279super(cnew.f29343break, this.f29343break) && m33279super(cnew.f29346class, this.f29346class);
    }

    public int hashCode() {
        return m33277static(this.f29347do) + m33277static(this.f29351if) + m33277static(this.f29349for) + m33277static(this.f29354try) + m33277static(this.f29352new) + m33277static(this.f29344case) + m33277static(this.f29348else) + m33277static(this.f29350goto) + m33277static(this.f29353this) + m33277static(this.f29345catch) + m33277static(this.f29343break) + m33277static(this.f29346class);
    }

    @Override // org.bouncycastle.asn1.x509.NameConstraintValidator
    public void intersectEmptyPermittedSubtree(int i) {
        if (i == 0) {
            this.f29346class = new HashSet();
            return;
        }
        if (i == 1) {
            this.f29353this = new HashSet();
            return;
        }
        if (i == 2) {
            this.f29350goto = new HashSet();
            return;
        }
        if (i == 4) {
            this.f29348else = new HashSet();
            return;
        }
        if (i == 6) {
            this.f29343break = new HashSet();
        } else {
            if (i == 7) {
                this.f29345catch = new HashSet();
                return;
            }
            throw new IllegalStateException("Unknown tag encountered: " + i);
        }
    }

    @Override // org.bouncycastle.asn1.x509.NameConstraintValidator
    public void intersectPermittedSubtree(wg0 wg0Var) {
        intersectPermittedSubtree(new wg0[]{wg0Var});
    }

    @Override // org.bouncycastle.asn1.x509.NameConstraintValidator
    public void intersectPermittedSubtree(wg0[] wg0VarArr) {
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
            if (iIntValue == 0) {
                this.f29346class = m33273private(this.f29346class, (Set) entry.getValue());
            } else if (iIntValue == 1) {
                this.f29353this = m33257default(this.f29353this, (Set) entry.getValue());
            } else if (iIntValue == 2) {
                this.f29350goto = m33284throws(this.f29350goto, (Set) entry.getValue());
            } else if (iIntValue == 4) {
                this.f29348else = m33280switch(this.f29348else, (Set) entry.getValue());
            } else if (iIntValue == 6) {
                this.f29343break = m33250abstract(this.f29343break, (Set) entry.getValue());
            } else {
                if (iIntValue != 7) {
                    throw new IllegalStateException("Unknown tag encountered: " + iIntValue);
                }
                this.f29345catch = m33262finally(this.f29345catch, (Set) entry.getValue());
            }
        }
    }

    public String toString() {
        String str = "permitted:\n";
        if (this.f29348else != null) {
            str = (str + "DN:\n") + this.f29348else.toString() + "\n";
        }
        if (this.f29350goto != null) {
            str = (str + "DNS:\n") + this.f29350goto.toString() + "\n";
        }
        if (this.f29353this != null) {
            str = (str + "Email:\n") + this.f29353this.toString() + "\n";
        }
        if (this.f29343break != null) {
            str = (str + "URI:\n") + this.f29343break.toString() + "\n";
        }
        if (this.f29345catch != null) {
            str = (str + "IP:\n") + b(this.f29345catch) + "\n";
        }
        if (this.f29346class != null) {
            str = (str + "OtherName:\n") + c(this.f29346class) + "\n";
        }
        String str2 = str + "excluded:\n";
        if (!this.f29347do.isEmpty()) {
            str2 = (str2 + "DN:\n") + this.f29347do.toString() + "\n";
        }
        if (!this.f29351if.isEmpty()) {
            str2 = (str2 + "DNS:\n") + this.f29351if.toString() + "\n";
        }
        if (!this.f29349for.isEmpty()) {
            str2 = (str2 + "Email:\n") + this.f29349for.toString() + "\n";
        }
        if (!this.f29352new.isEmpty()) {
            str2 = (str2 + "URI:\n") + this.f29352new.toString() + "\n";
        }
        if (!this.f29354try.isEmpty()) {
            str2 = (str2 + "IP:\n") + b(this.f29354try) + "\n";
        }
        if (this.f29344case.isEmpty()) {
            return str2;
        }
        return (str2 + "OtherName:\n") + c(this.f29344case) + "\n";
    }
}
