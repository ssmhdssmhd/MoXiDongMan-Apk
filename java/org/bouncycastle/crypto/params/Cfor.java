package org.bouncycastle.crypto.params;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.q3;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.bouncycastle.crypto.params.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor extends a4 {

    /* renamed from: for, reason: not valid java name */
    public static final int f30243for = 32;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30244if;

    public Cfor(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[32];
        this.f30244if = bArr;
        if (32 != a22.m17case(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed25519 public key");
        }
    }

    public Cfor(byte[] bArr, int i) {
        super(false);
        byte[] bArr2 = new byte[32];
        this.f30244if = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 32);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33845for() {
        return q3.m6371final(this.f30244if);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33846if(byte[] bArr, int i) {
        System.arraycopy(this.f30244if, 0, bArr, i, 32);
    }
}
