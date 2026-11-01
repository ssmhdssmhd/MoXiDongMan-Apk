package org.bouncycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
class i0 extends l0 {

    /* renamed from: case, reason: not valid java name */
    private boolean f29086case;

    /* renamed from: for, reason: not valid java name */
    private int f29087for;

    /* renamed from: new, reason: not valid java name */
    private int f29088new;

    /* renamed from: try, reason: not valid java name */
    private boolean f29089try;

    public i0(InputStream inputStream, int i) throws IOException {
        super(inputStream, i);
        this.f29089try = false;
        this.f29086case = true;
        this.f29087for = inputStream.read();
        int i2 = inputStream.read();
        this.f29088new = i2;
        if (i2 < 0) {
            throw new EOFException();
        }
        m33051for();
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m33051for() {
        if (!this.f29089try && this.f29086case && this.f29087for == 0 && this.f29088new == 0) {
            this.f29089try = true;
            m33077if(true);
        }
        return this.f29089try;
    }

    /* renamed from: new, reason: not valid java name */
    public void m33052new(boolean z) {
        this.f29086case = z;
        m33051for();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (m33051for()) {
            return -1;
        }
        int i = this.f29105do.read();
        if (i < 0) {
            throw new EOFException();
        }
        int i2 = this.f29087for;
        this.f29087for = this.f29088new;
        this.f29088new = i;
        return i2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f29086case || i2 < 3) {
            return super.read(bArr, i, i2);
        }
        if (this.f29089try) {
            return -1;
        }
        int i3 = this.f29105do.read(bArr, i + 2, i2 - 2);
        if (i3 < 0) {
            throw new EOFException();
        }
        bArr[i] = (byte) this.f29087for;
        bArr[i + 1] = (byte) this.f29088new;
        this.f29087for = this.f29105do.read();
        int i4 = this.f29105do.read();
        this.f29088new = i4;
        if (i4 >= 0) {
            return i3 + 2;
        }
        throw new EOFException();
    }
}
