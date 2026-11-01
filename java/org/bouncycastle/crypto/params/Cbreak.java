package org.bouncycastle.crypto.params;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.q3;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.bouncycastle.crypto.params.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak extends a4 {

    /* renamed from: for, reason: not valid java name */
    public static final int f30200for = 56;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30201if;

    public Cbreak(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[56];
        this.f30201if = bArr;
        if (56 != a22.m17case(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of X448 public key");
        }
    }

    public Cbreak(byte[] bArr, int i) {
        super(false);
        byte[] bArr2 = new byte[56];
        this.f30201if = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 56);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33802for() {
        return q3.m6371final(this.f30201if);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33803if(byte[] bArr, int i) {
        System.arraycopy(this.f30201if, 0, bArr, i, 56);
    }
}
