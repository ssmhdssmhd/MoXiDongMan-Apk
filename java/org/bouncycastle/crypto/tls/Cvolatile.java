package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.crypto.tls.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cvolatile {

    /* renamed from: do, reason: not valid java name */
    public i f30816do;

    /* renamed from: if, reason: not valid java name */
    public byte[] f30817if;

    public Cvolatile(i iVar, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("'signature' cannot be null");
        }
        this.f30816do = iVar;
        this.f30817if = bArr;
    }

    /* renamed from: new, reason: not valid java name */
    public static Cvolatile m34429new(TlsContext tlsContext, InputStream inputStream) throws IOException {
        return new Cvolatile(l0.w(tlsContext) ? i.m34151new(inputStream) : null, l0.P(inputStream));
    }

    /* renamed from: do, reason: not valid java name */
    public void m34430do(OutputStream outputStream) throws IOException {
        i iVar = this.f30816do;
        if (iVar != null) {
            iVar.m34152do(outputStream);
        }
        l0.o0(this.f30817if, outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m34431for() {
        return this.f30817if;
    }

    /* renamed from: if, reason: not valid java name */
    public i m34432if() {
        return this.f30816do;
    }
}
