package org.bouncycastle.crypto.params;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.og2;
import android.support.v4.q3;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.crypto.params.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis extends a4 {

    /* renamed from: for, reason: not valid java name */
    public static final int f30253for = 56;

    /* renamed from: new, reason: not valid java name */
    public static final int f30254new = 56;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30255if;

    public Cthis(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[56];
        this.f30255if = bArr;
        if (56 != a22.m17case(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of X448 private key");
        }
    }

    public Cthis(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[56];
        this.f30255if = bArr;
        og2.m5647new(secureRandom, bArr);
    }

    public Cthis(byte[] bArr, int i) {
        super(true);
        byte[] bArr2 = new byte[56];
        this.f30255if = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 56);
    }

    /* renamed from: for, reason: not valid java name */
    public Cbreak m33857for() {
        byte[] bArr = new byte[56];
        og2.m5649try(this.f30255if, 0, bArr, 0);
        return new Cbreak(bArr, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33858if(byte[] bArr, int i) {
        System.arraycopy(this.f30255if, 0, bArr, i, 56);
    }

    /* renamed from: new, reason: not valid java name */
    public void m33859new(Cbreak cbreak, byte[] bArr, int i) {
        byte[] bArr2 = new byte[56];
        cbreak.m33803if(bArr2, 0);
        if (!og2.m5642do(this.f30255if, 0, bArr2, 0, bArr, i)) {
            throw new IllegalStateException("X448 agreement failed");
        }
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m33860try() {
        return q3.m6371final(this.f30255if);
    }
}
