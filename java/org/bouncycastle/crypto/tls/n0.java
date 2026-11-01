package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class n0 {

    /* renamed from: do, reason: not valid java name */
    public String f30688do;

    /* renamed from: if, reason: not valid java name */
    public byte[] f30689if;

    public n0(String str, byte[] bArr) {
        if (str == null || str.length() < 1 || str.length() >= 65536) {
            throw new IllegalArgumentException("'url' must have length from 1 to (2^16 - 1)");
        }
        if (bArr != null && bArr.length != 20) {
            throw new IllegalArgumentException("'sha1Hash' must have length == 20, if present");
        }
        this.f30688do = str;
        this.f30689if = bArr;
    }

    /* renamed from: new, reason: not valid java name */
    public static n0 m34219new(TlsContext tlsContext, InputStream inputStream) throws IOException {
        byte[] bArrP = l0.P(inputStream);
        if (bArrP.length < 1) {
            throw new n72((short) 47);
        }
        String strM36359if = Cfor.m36359if(bArrP);
        byte[] bArrO = null;
        short sC0 = l0.c0(inputStream);
        if (sC0 != 0) {
            if (sC0 != 1) {
                throw new n72((short) 47);
            }
            bArrO = l0.O(20, inputStream);
        } else if (l0.w(tlsContext)) {
            throw new n72((short) 47);
        }
        return new n0(strM36359if, bArrO);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34220do(OutputStream outputStream) throws IOException {
        l0.o0(Cfor.m36358goto(this.f30688do), outputStream);
        if (this.f30689if == null) {
            l0.F0(0, outputStream);
        } else {
            l0.F0(1, outputStream);
            outputStream.write(this.f30689if);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public String m34221for() {
        return this.f30688do;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m34222if() {
        return this.f30689if;
    }
}
