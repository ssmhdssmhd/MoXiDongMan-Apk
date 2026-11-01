package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.final, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfinal {

    /* renamed from: do, reason: not valid java name */
    private byte[][] f32417do;

    public Cfinal(Ccatch ccatch, byte[][] bArr) {
        Objects.requireNonNull(ccatch, "params == null");
        Objects.requireNonNull(bArr, "signature == null");
        if (Cvolatile.m36068const(bArr)) {
            throw new NullPointerException("signature byte array == null");
        }
        if (bArr.length != ccatch.m35844for()) {
            throw new IllegalArgumentException("wrong signature size");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != ccatch.m35845if()) {
                throw new IllegalArgumentException("wrong signature format");
            }
        }
        this.f32417do = Cvolatile.m36082try(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[][] m35878do() {
        return Cvolatile.m36082try(this.f32417do);
    }
}
