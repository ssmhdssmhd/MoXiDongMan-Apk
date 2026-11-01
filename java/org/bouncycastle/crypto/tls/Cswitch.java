package org.bouncycastle.crypto.tls;

/* renamed from: org.bouncycastle.crypto.tls.switch, reason: invalid class name */
/* loaded from: classes3.dex */
class Cswitch {

    /* renamed from: for, reason: not valid java name */
    private static final long f30769for = 281474976710655L;

    /* renamed from: new, reason: not valid java name */
    private static final long f30770new = 64;

    /* renamed from: do, reason: not valid java name */
    private long f30771do = -1;

    /* renamed from: if, reason: not valid java name */
    private long f30772if = 0;

    /* renamed from: do, reason: not valid java name */
    public void m34364do(long j) {
        if ((f30769for & j) != j) {
            throw new IllegalArgumentException("'seq' out of range");
        }
        long j2 = this.f30771do;
        if (j <= j2) {
            long j3 = j2 - j;
            if (j3 < 64) {
                this.f30772if |= 1 << ((int) j3);
                return;
            }
            return;
        }
        long j4 = j - j2;
        if (j4 >= 64) {
            this.f30772if = 1L;
        } else {
            long j5 = this.f30772if << ((int) j4);
            this.f30772if = j5;
            this.f30772if = j5 | 1;
        }
        this.f30771do = j;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m34365for(long j) {
        if ((f30769for & j) != j) {
            return true;
        }
        long j2 = this.f30771do;
        if (j > j2) {
            return false;
        }
        long j3 = j2 - j;
        return j3 >= 64 || (this.f30772if & (1 << ((int) j3))) != 0;
    }

    /* renamed from: if, reason: not valid java name */
    public void m34366if() {
        this.f30771do = -1L;
        this.f30772if = 0L;
    }
}
