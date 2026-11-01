package android.support.v4;

import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class m30 {

    /* renamed from: do, reason: not valid java name */
    private final Cnew f3828do;

    /* renamed from: for, reason: not valid java name */
    private final int f3829for;

    /* renamed from: if, reason: not valid java name */
    private final Cnew f3830if;

    /* renamed from: new, reason: not valid java name */
    private final int f3831new;

    public m30(int i, Cnew cnew, Cnew cnew2, int i2) {
        if (!cnew.m35477this().m35427final(cnew2.m35477this())) {
            throw new IllegalArgumentException("points need to be on the same curve");
        }
        this.f3829for = i;
        this.f3828do = cnew;
        this.f3830if = cnew2;
        this.f3831new = i2;
    }

    /* renamed from: else, reason: not valid java name */
    private static int m4826else(int i) {
        int i2 = 0;
        while (true) {
            i >>= 1;
            if (i == 0) {
                return i2;
            }
            i2++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public int m4827case() {
        return this.f3828do.m35477this().mo35334switch();
    }

    /* renamed from: do, reason: not valid java name */
    public int m4828do() {
        return this.f3831new;
    }

    /* renamed from: for, reason: not valid java name */
    public Cnew m4829for() {
        return this.f3828do;
    }

    /* renamed from: if, reason: not valid java name */
    public int m4830if() {
        return ((this.f3828do.m35477this().mo35334switch() - (m4826else(this.f3831new) + 13)) / 8) * 8;
    }

    /* renamed from: new, reason: not valid java name */
    public Cnew m4831new() {
        return this.f3830if;
    }

    /* renamed from: try, reason: not valid java name */
    public int m4832try() {
        return this.f3829for;
    }
}
