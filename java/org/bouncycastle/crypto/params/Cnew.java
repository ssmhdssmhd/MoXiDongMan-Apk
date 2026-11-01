package org.bouncycastle.crypto.params;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.q3;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.rfc8032.Cif;

/* renamed from: org.bouncycastle.crypto.params.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew extends a4 {

    /* renamed from: for, reason: not valid java name */
    public static final int f30250for = 57;

    /* renamed from: new, reason: not valid java name */
    public static final int f30251new = 114;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30252if;

    public Cnew(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[57];
        this.f30252if = bArr;
        if (57 != a22.m17case(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed448 private key");
        }
    }

    public Cnew(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[57];
        this.f30252if = bArr;
        Cif.m35540import(secureRandom, bArr);
    }

    public Cnew(byte[] bArr, int i) {
        super(true);
        byte[] bArr2 = new byte[57];
        this.f30252if = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 57);
    }

    /* renamed from: for, reason: not valid java name */
    public Ctry m33853for() {
        byte[] bArr = new byte[57];
        Cif.m35543native(this.f30252if, 0, bArr, 0);
        return new Ctry(bArr, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33854if(byte[] bArr, int i) {
        System.arraycopy(this.f30252if, 0, bArr, i, 57);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m33855new() {
        return q3.m6371final(this.f30252if);
    }

    /* renamed from: try, reason: not valid java name */
    public void m33856try(int i, Ctry ctry, byte[] bArr, byte[] bArr2, int i2, int i3, byte[] bArr3, int i4) {
        byte[] bArr4 = new byte[57];
        if (ctry == null) {
            Cif.m35543native(this.f30252if, 0, bArr4, 0);
        } else {
            ctry.m33862if(bArr4, 0);
        }
        if (i == 0) {
            Cif.a(this.f30252if, 0, bArr4, 0, bArr, bArr2, i2, i3, bArr3, i4);
        } else {
            if (i != 1) {
                throw new IllegalArgumentException("algorithm");
            }
            if (64 != i3) {
                throw new IllegalArgumentException("msgLen");
            }
            Cif.d(this.f30252if, 0, bArr4, 0, bArr, bArr2, i2, bArr3, i4);
        }
    }
}
