package org.bouncycastle.crypto.tls;

import android.support.v4.a22;
import android.support.v4.hj0;
import android.support.v4.n72;
import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.crypto.tls.protected, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cprotected {

    /* renamed from: do, reason: not valid java name */
    public short f30705do;

    /* renamed from: for, reason: not valid java name */
    public int f30706for;

    /* renamed from: if, reason: not valid java name */
    public byte[] f30707if;

    /* renamed from: org.bouncycastle.crypto.tls.protected$do, reason: invalid class name */
    public static class Cdo extends ByteArrayOutputStream {
        /* renamed from: do, reason: not valid java name */
        public byte[] m34243do(int i) {
            if (((ByteArrayOutputStream) this).count < i + 16) {
                return null;
            }
            return q3.m6397volatile(((ByteArrayOutputStream) this).buf, i);
        }
    }

    public Cprotected(short s, byte[] bArr, int i) {
        if (!hj0.m3046do(s)) {
            throw new IllegalArgumentException("'type' is not a valid HeartbeatMessageType value");
        }
        if (bArr == null || bArr.length >= 65536) {
            throw new IllegalArgumentException("'payload' must have length < 2^16");
        }
        if (i < 16) {
            throw new IllegalArgumentException("'paddingLength' must be at least 16");
        }
        this.f30705do = s;
        this.f30707if = bArr;
        this.f30706for = i;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cprotected m34241if(InputStream inputStream) throws IOException {
        short sC0 = l0.c0(inputStream);
        if (!hj0.m3046do(sC0)) {
            throw new n72((short) 47);
        }
        int iT = l0.T(inputStream);
        Cdo cdo = new Cdo();
        a22.m22if(inputStream, cdo);
        byte[] bArrM34243do = cdo.m34243do(iT);
        if (bArrM34243do == null) {
            return null;
        }
        return new Cprotected(sC0, bArrM34243do, cdo.size() - bArrM34243do.length);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34242do(TlsContext tlsContext, OutputStream outputStream) throws IOException {
        l0.H0(this.f30705do, outputStream);
        l0.m34181break(this.f30707if.length);
        l0.r0(this.f30707if.length, outputStream);
        outputStream.write(this.f30707if);
        byte[] bArr = new byte[this.f30706for];
        tlsContext.getNonceRandomGenerator().nextBytes(bArr);
        outputStream.write(bArr);
    }
}
