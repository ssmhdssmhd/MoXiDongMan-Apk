package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.class, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cclass {

    /* renamed from: do, reason: not valid java name */
    private final byte[][] f32402do;

    public Cclass(Ccatch ccatch, byte[][] bArr) {
        Objects.requireNonNull(ccatch, "params == null");
        Objects.requireNonNull(bArr, "privateKey == null");
        if (Cvolatile.m36068const(bArr)) {
            throw new NullPointerException("privateKey byte array == null");
        }
        if (bArr.length != ccatch.m35844for()) {
            throw new IllegalArgumentException("wrong privateKey format");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != ccatch.m35845if()) {
                throw new IllegalArgumentException("wrong privateKey format");
            }
        }
        this.f32402do = Cvolatile.m36082try(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[][] m35848do() {
        return Cvolatile.m36082try(this.f32402do);
    }
}
