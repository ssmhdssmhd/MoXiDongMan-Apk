package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Mac;

/* renamed from: org.bouncycastle.jcajce.io.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private Mac f30965do;

    public Cnew(Mac mac) {
        this.f30965do = mac;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m34586do() {
        return this.f30965do.doFinal();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IllegalStateException, IOException {
        this.f30965do.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IllegalStateException, IOException {
        this.f30965do.update(bArr, i, i2);
    }
}
