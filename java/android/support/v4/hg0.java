package android.support.v4;

/* loaded from: classes3.dex */
public class hg0 {

    /* renamed from: do, reason: not valid java name */
    private int f2399do;

    /* renamed from: for, reason: not valid java name */
    private long f2400for;

    /* renamed from: if, reason: not valid java name */
    private int f2401if;

    /* renamed from: new, reason: not valid java name */
    private long f2402new;

    public hg0(int i, int i2) {
        this.f2399do = i;
        this.f2401if = i2;
    }

    public hg0(long j, long j2) {
        this.f2400for = j;
        this.f2402new = j2;
    }

    /* renamed from: do, reason: not valid java name */
    public int m3019do() {
        return this.f2401if;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof hg0)) {
            return false;
        }
        hg0 hg0Var = (hg0) obj;
        return hg0Var.f2401if == this.f2401if && hg0Var.f2399do == this.f2399do && hg0Var.f2402new == this.f2402new && hg0Var.f2400for == this.f2400for;
    }

    /* renamed from: for, reason: not valid java name */
    public int m3020for() {
        return this.f2399do;
    }

    public int hashCode() {
        int i = this.f2399do ^ this.f2401if;
        long j = this.f2400for;
        int i2 = (i ^ ((int) j)) ^ ((int) (j >> 32));
        long j2 = this.f2402new;
        return (i2 ^ ((int) j2)) ^ ((int) (j2 >> 32));
    }

    /* renamed from: if, reason: not valid java name */
    public long m3021if() {
        return this.f2402new;
    }

    /* renamed from: new, reason: not valid java name */
    public long m3022new() {
        return this.f2400for;
    }
}
