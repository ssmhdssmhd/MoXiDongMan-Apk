package org.bouncycastle.pqc.crypto.xmss;

import java.io.Serializable;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.default, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdefault implements Serializable {
    private static final long serialVersionUID = 1;
    private final int height;
    private final byte[] value;

    public Cdefault(int i, byte[] bArr) {
        this.height = i;
        this.value = bArr;
    }

    public Cdefault clone() {
        return new Cdefault(getHeight(), getValue());
    }

    public int getHeight() {
        return this.height;
    }

    public byte[] getValue() {
        return Cvolatile.m36077new(this.value);
    }
}
