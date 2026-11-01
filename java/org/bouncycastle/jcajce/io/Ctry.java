package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Mac;

/* renamed from: org.bouncycastle.jcajce.io.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private Mac f30966do;

    public Ctry(Mac mac) {
        this.f30966do = mac;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IllegalStateException, IOException {
        this.f30966do.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IllegalStateException, IOException {
        this.f30966do.update(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IllegalStateException, IOException {
        this.f30966do.update(bArr, i, i2);
    }
}
