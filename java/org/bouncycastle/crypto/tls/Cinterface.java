package org.bouncycastle.crypto.tls;

import android.support.v4.ij0;
import android.support.v4.n72;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.crypto.tls.interface, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cinterface {

    /* renamed from: do, reason: not valid java name */
    public short f30646do;

    public Cinterface(short s) {
        if (!ij0.m3471do(s)) {
            throw new IllegalArgumentException("'mode' is not a valid HeartbeatMode value");
        }
        this.f30646do = s;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cinterface m34168for(InputStream inputStream) throws IOException {
        short sC0 = l0.c0(inputStream);
        if (ij0.m3471do(sC0)) {
            return new Cinterface(sC0);
        }
        throw new n72((short) 47);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34169do(OutputStream outputStream) throws IOException {
        l0.H0(this.f30646do, outputStream);
    }

    /* renamed from: if, reason: not valid java name */
    public short m34170if() {
        return this.f30646do;
    }
}
