package android.support.v4;

/* loaded from: classes3.dex */
public class mv {

    /* renamed from: do, reason: not valid java name */
    private int f4036do;

    /* renamed from: for, reason: not valid java name */
    private int f4037for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f4038if;

    public mv(byte[] bArr, int i) {
        this(bArr, i, -1);
    }

    public mv(byte[] bArr, int i, int i2) {
        this.f4038if = q3.m6371final(bArr);
        this.f4037for = i;
        this.f4036do = i2;
    }

    /* renamed from: do, reason: not valid java name */
    public int m5008do() {
        return this.f4037for;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof mv)) {
            return false;
        }
        mv mvVar = (mv) obj;
        if (mvVar.f4037for != this.f4037for) {
            return false;
        }
        return q3.m6362case(this.f4038if, mvVar.f4038if);
    }

    /* renamed from: for, reason: not valid java name */
    public int m5009for() {
        return this.f4036do;
    }

    public int hashCode() {
        return this.f4037for ^ q3.n(this.f4038if);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m5010if() {
        return q3.m6371final(this.f4038if);
    }
}
