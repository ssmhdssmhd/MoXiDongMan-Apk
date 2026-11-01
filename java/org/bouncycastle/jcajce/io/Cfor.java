package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;

/* renamed from: org.bouncycastle.jcajce.io.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private MessageDigest f30962do;

    public Cfor(MessageDigest messageDigest) {
        this.f30962do = messageDigest;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f30962do.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f30962do.update(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f30962do.update(bArr, i, i2);
    }
}
