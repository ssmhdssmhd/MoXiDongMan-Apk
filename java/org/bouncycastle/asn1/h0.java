package org.bouncycastle.asn1;

import android.support.v4.a22;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
class h0 extends l0 {

    /* renamed from: try, reason: not valid java name */
    private static final byte[] f29082try = new byte[0];

    /* renamed from: for, reason: not valid java name */
    private final int f29083for;

    /* renamed from: new, reason: not valid java name */
    private int f29084new;

    public h0(InputStream inputStream, int i) {
        super(inputStream, i);
        if (i < 0) {
            throw new IllegalArgumentException("negative lengths not allowed");
        }
        this.f29083for = i;
        this.f29084new = i;
        if (i == 0) {
            m33077if(true);
        }
    }

    @Override // org.bouncycastle.asn1.l0
    /* renamed from: do, reason: not valid java name */
    public int mo33045do() {
        return this.f29084new;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33046for() throws IOException {
        int i = this.f29084new;
        if (i == 0) {
            return f29082try;
        }
        byte[] bArr = new byte[i];
        int iM17case = i - a22.m17case(this.f29105do, bArr);
        this.f29084new = iM17case;
        if (iM17case == 0) {
            m33077if(true);
            return bArr;
        }
        throw new EOFException("DEF length " + this.f29083for + " object truncated by " + this.f29084new);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f29084new == 0) {
            return -1;
        }
        int i = this.f29105do.read();
        if (i >= 0) {
            int i2 = this.f29084new - 1;
            this.f29084new = i2;
            if (i2 == 0) {
                m33077if(true);
            }
            return i;
        }
        throw new EOFException("DEF length " + this.f29083for + " object truncated by " + this.f29084new);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f29084new;
        if (i3 == 0) {
            return -1;
        }
        int i4 = this.f29105do.read(bArr, i, Math.min(i2, i3));
        if (i4 >= 0) {
            int i5 = this.f29084new - i4;
            this.f29084new = i5;
            if (i5 == 0) {
                m33077if(true);
            }
            return i4;
        }
        throw new EOFException("DEF length " + this.f29083for + " object truncated by " + this.f29084new);
    }
}
