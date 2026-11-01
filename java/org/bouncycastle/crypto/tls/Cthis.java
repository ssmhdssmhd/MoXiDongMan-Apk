package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.crypto.tls.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f30775do = new Cgoto();

    /* renamed from: do, reason: not valid java name */
    public Cgoto m34371do() {
        return this.f30775do;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f30775do.m34122do(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f30775do.m34122do(bArr, i, i2);
    }
}
