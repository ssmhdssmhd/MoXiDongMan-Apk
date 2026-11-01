package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import java.security.Signature;
import java.security.SignatureException;

/* renamed from: org.bouncycastle.jcajce.io.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private Signature f30961do;

    public Celse(Signature signature) {
        this.f30961do = signature;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws SignatureException, IOException {
        try {
            this.f30961do.update((byte) i);
        } catch (SignatureException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws SignatureException, IOException {
        try {
            this.f30961do.update(bArr);
        } catch (SignatureException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws SignatureException, IOException {
        try {
            this.f30961do.update(bArr, i, i2);
        } catch (SignatureException e) {
            throw new IOException(e.getMessage());
        }
    }
}
