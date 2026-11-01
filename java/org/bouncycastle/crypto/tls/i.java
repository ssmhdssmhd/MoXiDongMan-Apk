package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class i {

    /* renamed from: do, reason: not valid java name */
    public short f30628do;

    /* renamed from: if, reason: not valid java name */
    public short f30629if;

    public i(short s, short s2) {
        if (!l0.I(s)) {
            throw new IllegalArgumentException("'hash' should be a uint8");
        }
        if (!l0.I(s2)) {
            throw new IllegalArgumentException("'signature' should be a uint8");
        }
        if (s2 == 0) {
            throw new IllegalArgumentException("'signature' MUST NOT be \"anonymous\"");
        }
        this.f30628do = s;
        this.f30629if = s2;
    }

    /* renamed from: new, reason: not valid java name */
    public static i m34151new(InputStream inputStream) throws IOException {
        return new i(l0.c0(inputStream), l0.c0(inputStream));
    }

    /* renamed from: do, reason: not valid java name */
    public void m34152do(OutputStream outputStream) throws IOException {
        l0.H0(m34154if(), outputStream);
        l0.H0(m34153for(), outputStream);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return iVar.m34154if() == m34154if() && iVar.m34153for() == m34153for();
    }

    /* renamed from: for, reason: not valid java name */
    public short m34153for() {
        return this.f30629if;
    }

    public int hashCode() {
        return (m34154if() << 16) | m34153for();
    }

    /* renamed from: if, reason: not valid java name */
    public short m34154if() {
        return this.f30628do;
    }
}
