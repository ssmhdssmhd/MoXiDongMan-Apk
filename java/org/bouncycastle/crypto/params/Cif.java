package org.bouncycastle.crypto.params;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.q3;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.rfc8032.Cdo;

/* renamed from: org.bouncycastle.crypto.params.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends a4 {

    /* renamed from: for, reason: not valid java name */
    public static final int f30247for = 32;

    /* renamed from: new, reason: not valid java name */
    public static final int f30248new = 64;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30249if;

    public Cif(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[32];
        this.f30249if = bArr;
        if (32 != a22.m17case(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed25519 private key");
        }
    }

    public Cif(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[32];
        this.f30249if = bArr;
        Cdo.m35522while(secureRandom, bArr);
    }

    public Cif(byte[] bArr, int i) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.f30249if = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 32);
    }

    /* renamed from: for, reason: not valid java name */
    public Cfor m33849for() {
        byte[] bArr = new byte[32];
        Cdo.m35501import(this.f30249if, 0, bArr, 0);
        return new Cfor(bArr, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33850if(byte[] bArr, int i) {
        System.arraycopy(this.f30249if, 0, bArr, i, 32);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m33851new() {
        return q3.m6371final(this.f30249if);
    }

    /* renamed from: try, reason: not valid java name */
    public void m33852try(int i, Cfor cfor, byte[] bArr, byte[] bArr2, int i2, int i3, byte[] bArr3, int i4) {
        byte[] bArr4 = new byte[32];
        if (cfor == null) {
            Cdo.m35501import(this.f30249if, 0, bArr4, 0);
        } else {
            cfor.m33846if(bArr4, 0);
        }
        if (i == 0) {
            if (bArr != null) {
                throw new IllegalArgumentException("ctx");
            }
            Cdo.e(this.f30249if, 0, bArr4, 0, bArr2, i2, i3, bArr3, i4);
        } else if (i == 1) {
            Cdo.f(this.f30249if, 0, bArr4, 0, bArr, bArr2, i2, i3, bArr3, i4);
        } else {
            if (i != 2) {
                throw new IllegalArgumentException("algorithm");
            }
            if (64 != i3) {
                throw new IllegalArgumentException("msgLen");
            }
            Cdo.i(this.f30249if, 0, bArr4, 0, bArr, bArr2, i2, bArr3, i4);
        }
    }
}
