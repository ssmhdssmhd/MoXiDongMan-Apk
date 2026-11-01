package org.bouncycastle.crypto.params;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.jg2;
import android.support.v4.q3;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.crypto.params.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse extends a4 {

    /* renamed from: for, reason: not valid java name */
    public static final int f30240for = 32;

    /* renamed from: new, reason: not valid java name */
    public static final int f30241new = 32;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30242if;

    public Celse(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[32];
        this.f30242if = bArr;
        if (32 != a22.m17case(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of X25519 private key");
        }
    }

    public Celse(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[32];
        this.f30242if = bArr;
        jg2.m3874new(secureRandom, bArr);
    }

    public Celse(byte[] bArr, int i) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.f30242if = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, 32);
    }

    /* renamed from: for, reason: not valid java name */
    public Cgoto m33841for() {
        byte[] bArr = new byte[32];
        jg2.m3876try(this.f30242if, 0, bArr, 0);
        return new Cgoto(bArr, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33842if(byte[] bArr, int i) {
        System.arraycopy(this.f30242if, 0, bArr, i, 32);
    }

    /* renamed from: new, reason: not valid java name */
    public void m33843new(Cgoto cgoto, byte[] bArr, int i) {
        byte[] bArr2 = new byte[32];
        cgoto.m33848if(bArr2, 0);
        if (!jg2.m3869do(this.f30242if, 0, bArr2, 0, bArr, i)) {
            throw new IllegalStateException("X25519 agreement failed");
        }
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m33844try() {
        return q3.m6371final(this.f30242if);
    }
}
