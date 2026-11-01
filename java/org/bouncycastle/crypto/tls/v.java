package org.bouncycastle.crypto.tls;

import android.support.v4.hn0;
import android.support.v4.n72;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Hashtable;

/* loaded from: classes3.dex */
public class v {

    /* renamed from: do, reason: not valid java name */
    public static final Integer f30809do = hn0.m3072for(22);

    /* renamed from: if, reason: not valid java name */
    public static final Integer f30813if = hn0.m3072for(23);

    /* renamed from: for, reason: not valid java name */
    public static final Integer f30811for = hn0.m3072for(15);

    /* renamed from: new, reason: not valid java name */
    public static final Integer f30814new = hn0.m3072for(1);

    /* renamed from: try, reason: not valid java name */
    public static final Integer f30815try = hn0.m3072for(21);

    /* renamed from: case, reason: not valid java name */
    public static final Integer f30808case = hn0.m3072for(0);

    /* renamed from: else, reason: not valid java name */
    public static final Integer f30810else = hn0.m3072for(5);

    /* renamed from: goto, reason: not valid java name */
    public static final Integer f30812goto = hn0.m3072for(4);

    /* renamed from: abstract, reason: not valid java name */
    public static Cinterface m34394abstract(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Cinterface cinterfaceM34168for = Cinterface.m34168for(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        return cinterfaceM34168for;
    }

    /* renamed from: break, reason: not valid java name */
    public static byte[] m34395break() {
        return m34423this();
    }

    /* renamed from: case, reason: not valid java name */
    public static void m34396case(Hashtable hashtable, f fVar) throws IOException {
        hashtable.put(f30808case, m34421super(fVar));
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte[] m34397catch() {
        return m34423this();
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m34398class(Cinterface cinterface) throws IOException {
        if (cinterface == null) {
            throw new n72((short) 80);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        cinterface.m34169do(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: const, reason: not valid java name */
    public static byte[] m34399const(short s) throws IOException {
        l0.m34200native(s);
        byte[] bArr = new byte[1];
        l0.I0(s, bArr, 0);
        return bArr;
    }

    /* renamed from: continue, reason: not valid java name */
    public static short m34400continue(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        if (bArr.length == 1) {
            return l0.d0(bArr, 0);
        }
        throw new n72((short) 50);
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m34401default(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30813if);
        if (bArrB == null) {
            return false;
        }
        return m34415private(bArrB);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m34402do(Hashtable hashtable) {
        hashtable.put(f30809do, m34395break());
    }

    /* renamed from: else, reason: not valid java name */
    public static void m34403else(Hashtable hashtable, Cconst cconst) throws IOException {
        hashtable.put(f30810else, m34424throw(cconst));
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m34404extends(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30812goto);
        if (bArrB == null) {
            return false;
        }
        return m34416protected(bArrB);
    }

    /* renamed from: final, reason: not valid java name */
    public static byte[] m34405final(int i) throws IOException {
        l0.m34181break(i);
        return new byte[i];
    }

    /* renamed from: finally, reason: not valid java name */
    private static boolean m34406finally(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        if (bArr.length == 0) {
            return true;
        }
        throw new n72((short) 47);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m34407for(Hashtable hashtable, Cinterface cinterface) throws IOException {
        hashtable.put(f30811for, m34398class(cinterface));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m34408goto(Hashtable hashtable) {
        hashtable.put(f30812goto, m34428while());
    }

    /* renamed from: if, reason: not valid java name */
    public static void m34409if(Hashtable hashtable) {
        hashtable.put(f30813if, m34397catch());
    }

    /* renamed from: import, reason: not valid java name */
    public static Hashtable m34410import(Hashtable hashtable) {
        return hashtable == null ? new Hashtable() : hashtable;
    }

    /* renamed from: interface, reason: not valid java name */
    public static Cconst m34411interface(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Cconst cconstM34040case = Cconst.m34040case(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        return cconstM34040case;
    }

    /* renamed from: native, reason: not valid java name */
    public static Cinterface m34412native(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30811for);
        if (bArrB == null) {
            return null;
        }
        return m34394abstract(bArrB);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m34413new(Hashtable hashtable, short s) throws IOException {
        hashtable.put(f30814new, m34399const(s));
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m34414package(byte[] bArr) throws IOException {
        return m34406finally(bArr);
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m34415private(byte[] bArr) throws IOException {
        return m34406finally(bArr);
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m34416protected(byte[] bArr) throws IOException {
        return m34406finally(bArr);
    }

    /* renamed from: public, reason: not valid java name */
    public static short m34417public(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30814new);
        if (bArrB == null) {
            return (short) -1;
        }
        return m34400continue(bArrB);
    }

    /* renamed from: return, reason: not valid java name */
    public static int m34418return(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30815try);
        if (bArrB == null) {
            return -1;
        }
        return m34420strictfp(bArrB);
    }

    /* renamed from: static, reason: not valid java name */
    public static f m34419static(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30808case);
        if (bArrB == null) {
            return null;
        }
        return m34427volatile(bArrB);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m34420strictfp(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        for (byte b : bArr) {
            if (b != 0) {
                throw new n72((short) 47);
            }
        }
        return bArr.length;
    }

    /* renamed from: super, reason: not valid java name */
    public static byte[] m34421super(f fVar) throws IOException {
        if (fVar == null) {
            throw new n72((short) 80);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        fVar.m34087if(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: switch, reason: not valid java name */
    public static Cconst m34422switch(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30810else);
        if (bArrB == null) {
            return null;
        }
        return m34411interface(bArrB);
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m34423this() {
        return l0.f30675do;
    }

    /* renamed from: throw, reason: not valid java name */
    public static byte[] m34424throw(Cconst cconst) throws IOException {
        if (cconst == null) {
            throw new n72((short) 80);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        cconst.m34042do(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m34425throws(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30809do);
        if (bArrB == null) {
            return false;
        }
        return m34414package(bArrB);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m34426try(Hashtable hashtable, int i) throws IOException {
        hashtable.put(f30815try, m34405final(i));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static f m34427volatile(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        f fVarM34085new = f.m34085new(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        return fVarM34085new;
    }

    /* renamed from: while, reason: not valid java name */
    public static byte[] m34428while() {
        return m34423this();
    }
}
