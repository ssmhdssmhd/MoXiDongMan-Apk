package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class dk1 extends ck1 {

    /* renamed from: break, reason: not valid java name */
    private BigInteger f1072break;

    /* renamed from: case, reason: not valid java name */
    private BigInteger f1073case;

    /* renamed from: else, reason: not valid java name */
    private BigInteger f1074else;

    /* renamed from: goto, reason: not valid java name */
    private BigInteger f1075goto;

    /* renamed from: this, reason: not valid java name */
    private BigInteger f1076this;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f1077try;

    public dk1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        super(true, bigInteger, bigInteger3);
        this.f1077try = bigInteger2;
        this.f1073case = bigInteger4;
        this.f1074else = bigInteger5;
        this.f1075goto = bigInteger6;
        this.f1076this = bigInteger7;
        this.f1072break = bigInteger8;
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m1382break() {
        return this.f1072break;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m1383case() {
        return this.f1076this;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m1384else() {
        return this.f1073case;
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m1385goto() {
        return this.f1077try;
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m1386this() {
        return this.f1074else;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m1387try() {
        return this.f1075goto;
    }
}
