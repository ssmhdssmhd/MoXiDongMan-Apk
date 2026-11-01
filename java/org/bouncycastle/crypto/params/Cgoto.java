package org.bouncycastle.crypto.params;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.q3;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.bouncycastle.crypto.params.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto extends a4 {

    /* renamed from: for, reason: not valid java name */
    public static final int f30245for = 32;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30246if;

    public Cgoto(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[32];
        this.f30246if = bArr;
        if (32 != a22.m17case(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of X25519 public key");
        }
    }

    public Cgoto(byte[] bArr, int i) {
        super(false);
        byte[] bArr2 = new byte[32];
        this.f30246if = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 32);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33847for() {
        return q3.m6371final(this.f30246if);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33848if(byte[] bArr, int i) {
        System.arraycopy(this.f30246if, 0, bArr, i, 32);
    }
}
