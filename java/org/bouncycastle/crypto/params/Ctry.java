package org.bouncycastle.crypto.params;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.q3;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.bouncycastle.crypto.params.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry extends a4 {

    /* renamed from: for, reason: not valid java name */
    public static final int f30256for = 57;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30257if;

    public Ctry(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[57];
        this.f30257if = bArr;
        if (57 != a22.m17case(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed448 public key");
        }
    }

    public Ctry(byte[] bArr, int i) {
        super(false);
        byte[] bArr2 = new byte[57];
        this.f30257if = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 57);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33861for() {
        return q3.m6371final(this.f30257if);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33862if(byte[] bArr, int i) {
        System.arraycopy(this.f30257if, 0, bArr, i, 57);
    }
}
