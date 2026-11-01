package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.const, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cconst {

    /* renamed from: do, reason: not valid java name */
    private final byte[][] f32403do;

    public Cconst(Ccatch ccatch, byte[][] bArr) {
        Objects.requireNonNull(ccatch, "params == null");
        Objects.requireNonNull(bArr, "publicKey == null");
        if (Cvolatile.m36068const(bArr)) {
            throw new NullPointerException("publicKey byte array == null");
        }
        if (bArr.length != ccatch.m35844for()) {
            throw new IllegalArgumentException("wrong publicKey size");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != ccatch.m35845if()) {
                throw new IllegalArgumentException("wrong publicKey format");
            }
        }
        this.f32403do = Cvolatile.m36082try(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[][] m35849do() {
        return Cvolatile.m36082try(this.f32403do);
    }
}
