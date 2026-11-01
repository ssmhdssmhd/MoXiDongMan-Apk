package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.crypto.tls.transient, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctransient {

    /* renamed from: do, reason: not valid java name */
    public long f30798do;

    /* renamed from: if, reason: not valid java name */
    public byte[] f30799if;

    public Ctransient(long j, byte[] bArr) {
        this.f30798do = j;
        this.f30799if = bArr;
    }

    /* renamed from: new, reason: not valid java name */
    public static Ctransient m34390new(InputStream inputStream) throws IOException {
        return new Ctransient(l0.Y(inputStream), l0.P(inputStream));
    }

    /* renamed from: do, reason: not valid java name */
    public void m34391do(OutputStream outputStream) throws IOException {
        l0.z0(this.f30798do, outputStream);
        l0.o0(this.f30799if, outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public long m34392for() {
        return this.f30798do;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m34393if() {
        return this.f30799if;
    }
}
