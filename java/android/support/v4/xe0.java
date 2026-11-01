package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class xe0 {

    /* renamed from: case, reason: not valid java name */
    public final BigInteger f7891case;

    /* renamed from: do, reason: not valid java name */
    public final BigInteger f7892do;

    /* renamed from: else, reason: not valid java name */
    public final BigInteger f7893else;

    /* renamed from: for, reason: not valid java name */
    public final BigInteger f7894for;

    /* renamed from: goto, reason: not valid java name */
    public final BigInteger f7895goto;

    /* renamed from: if, reason: not valid java name */
    public final BigInteger f7896if;

    /* renamed from: new, reason: not valid java name */
    public final BigInteger f7897new;

    /* renamed from: this, reason: not valid java name */
    public final int f7898this;

    /* renamed from: try, reason: not valid java name */
    public final BigInteger f7899try;

    public xe0(BigInteger bigInteger, BigInteger bigInteger2, BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2, BigInteger bigInteger3, BigInteger bigInteger4, int i) {
        m9474do(bigIntegerArr, "v1");
        m9474do(bigIntegerArr2, "v2");
        this.f7892do = bigInteger;
        this.f7896if = bigInteger2;
        this.f7894for = bigIntegerArr[0];
        this.f7897new = bigIntegerArr[1];
        this.f7899try = bigIntegerArr2[0];
        this.f7891case = bigIntegerArr2[1];
        this.f7893else = bigInteger3;
        this.f7895goto = bigInteger4;
        this.f7898this = i;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m9474do(BigInteger[] bigIntegerArr, String str) {
        if (bigIntegerArr == null || bigIntegerArr.length != 2 || bigIntegerArr[0] == null || bigIntegerArr[1] == null) {
            throw new IllegalArgumentException("'" + str + "' must consist of exactly 2 (non-null) values");
        }
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger[] m9475break() {
        return new BigInteger[]{this.f7899try, this.f7891case};
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m9476case() {
        return this.f7896if;
    }

    /* renamed from: catch, reason: not valid java name */
    public BigInteger m9477catch() {
        return this.f7899try;
    }

    /* renamed from: class, reason: not valid java name */
    public BigInteger m9478class() {
        return this.f7891case;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger[] m9479else() {
        return new BigInteger[]{this.f7894for, this.f7897new};
    }

    /* renamed from: for, reason: not valid java name */
    public int m9480for() {
        return this.f7898this;
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m9481goto() {
        return this.f7894for;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m9482if() {
        return this.f7892do;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m9483new() {
        return this.f7893else;
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m9484this() {
        return this.f7897new;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m9485try() {
        return this.f7895goto;
    }
}
