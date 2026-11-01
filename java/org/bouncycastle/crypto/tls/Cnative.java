package org.bouncycastle.crypto.tls;

import android.support.v4.dy0;
import android.support.v4.n72;
import android.support.v4.q3;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: org.bouncycastle.crypto.tls.native, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnative {

    /* renamed from: do, reason: not valid java name */
    public final SecureRandom f30690do;

    public Cnative(SecureRandom secureRandom) {
        if (secureRandom == null) {
            throw new IllegalArgumentException("'secureRandom' cannot be null");
        }
        this.f30690do = secureRandom;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m34223case(int i, short s) throws IOException {
        int iA = l0.a(i);
        if (iA == 1 || iA == 2) {
            throw new n72(s);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m34224do(Creturn creturn, short s) throws IOException {
        if (s >= 0) {
            if (!dy0.m1569do(s)) {
                throw new n72((short) 80);
            }
            creturn.m34284const(1 << (s + 8));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m34225for(Cbreak cbreak) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        cbreak.m34016if(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: if, reason: not valid java name */
    public static short m34226if(boolean z, Hashtable hashtable, Hashtable hashtable2, short s) throws IOException {
        short sM34417public = v.m34417public(hashtable2);
        if (sM34417public < 0 || (dy0.m1569do(sM34417public) && (z || sM34417public == v.m34417public(hashtable)))) {
            return sM34417public;
        }
        throw new n72(s);
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m34227new(Vector vector) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a0.w(byteArrayOutputStream, vector);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: try, reason: not valid java name */
    public void m34228try(byte[] bArr, byte[] bArr2) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        byte[] bArrO = l0.O(bArr2.length, byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        if (!q3.m6360abstract(bArr2, bArrO)) {
            throw new n72((short) 40);
        }
    }
}
