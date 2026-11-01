package org.bouncycastle.crypto.tls;

/* renamed from: org.bouncycastle.crypto.tls.import, reason: invalid class name */
/* loaded from: classes3.dex */
class Cimport {

    /* renamed from: for, reason: not valid java name */
    private final TlsCipher f30641for;

    /* renamed from: if, reason: not valid java name */
    private final int f30642if;

    /* renamed from: do, reason: not valid java name */
    private final Cswitch f30640do = new Cswitch();

    /* renamed from: new, reason: not valid java name */
    private long f30643new = 0;

    public Cimport(int i, TlsCipher tlsCipher) {
        if (i < 0) {
            throw new IllegalArgumentException("'epoch' must be >= 0");
        }
        if (tlsCipher == null) {
            throw new IllegalArgumentException("'cipher' cannot be null");
        }
        this.f30642if = i;
        this.f30641for = tlsCipher;
    }

    /* renamed from: do, reason: not valid java name */
    public long m34162do() {
        long j = this.f30643new;
        this.f30643new = 1 + j;
        return j;
    }

    /* renamed from: for, reason: not valid java name */
    public int m34163for() {
        return this.f30642if;
    }

    /* renamed from: if, reason: not valid java name */
    public TlsCipher m34164if() {
        return this.f30641for;
    }

    /* renamed from: new, reason: not valid java name */
    public Cswitch m34165new() {
        return this.f30640do;
    }

    /* renamed from: try, reason: not valid java name */
    public long m34166try() {
        return this.f30643new;
    }
}
