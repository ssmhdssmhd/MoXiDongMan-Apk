package org.bouncycastle.crypto.digests;

import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.digests.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements Digest {

    /* renamed from: do, reason: not valid java name */
    private Cif f29384do = new Cif();

    /* renamed from: org.bouncycastle.crypto.digests.do$if, reason: invalid class name */
    public static class Cif extends ByteArrayOutputStream {
        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m33309do(byte[] bArr, int i) {
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArr, i, size());
        }

        @Override // java.io.ByteArrayOutputStream
        public void reset() {
            super.reset();
            q3.m6365const(((ByteArrayOutputStream) this).buf);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        int size = this.f29384do.size();
        this.f29384do.m33309do(bArr, i);
        reset();
        return size;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "NULL";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.f29384do.size();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f29384do.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        this.f29384do.write(b);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        this.f29384do.write(bArr, i, i2);
    }
}
