package org.bouncycastle.crypto.tls;

import android.support.v4.q3;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class g {

    /* renamed from: do, reason: not valid java name */
    public BigInteger f30602do;

    /* renamed from: for, reason: not valid java name */
    public BigInteger f30603for;

    /* renamed from: if, reason: not valid java name */
    public BigInteger f30604if;

    /* renamed from: new, reason: not valid java name */
    public byte[] f30605new;

    public g(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr, BigInteger bigInteger3) {
        this.f30602do = bigInteger;
        this.f30604if = bigInteger2;
        this.f30605new = q3.m6371final(bArr);
        this.f30603for = bigInteger3;
    }

    /* renamed from: case, reason: not valid java name */
    public static g m34109case(InputStream inputStream) throws IOException {
        return new g(f0.m34088case(inputStream), f0.m34088case(inputStream), l0.R(inputStream), f0.m34088case(inputStream));
    }

    /* renamed from: do, reason: not valid java name */
    public void m34110do(OutputStream outputStream) throws IOException {
        f0.m34090else(this.f30602do, outputStream);
        f0.m34090else(this.f30604if, outputStream);
        l0.q0(this.f30605new, outputStream);
        f0.m34090else(this.f30603for, outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m34111for() {
        return this.f30604if;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m34112if() {
        return this.f30603for;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m34113new() {
        return this.f30602do;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m34114try() {
        return this.f30605new;
    }
}
