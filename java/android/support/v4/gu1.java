package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Ccase;

/* loaded from: classes3.dex */
public class gu1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f2247if = Ccase.f31842import;

    /* renamed from: do, reason: not valid java name */
    public int[] f2248do;

    public gu1() {
        this.f2248do = i21.m3208break();
    }

    public gu1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f2247if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192R1FieldElement");
        }
        this.f2248do = fu1.m2430try(bigInteger);
    }

    public gu1(int[] iArr) {
        this.f2248do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return i21.m3241throws(this.f2248do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP192R1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM3208break = i21.m3208break();
        fu1.m2421else(this.f2248do, ((gu1) cfor).f2248do, iArrM3208break);
        return new gu1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM3208break = i21.m3208break();
        fu1.m2420do(this.f2248do, ((gu1) cfor).f2248do, iArrM3208break);
        return new gu1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f2247if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gu1) {
            return i21.m3236super(this.f2248do, ((gu1) obj).f2248do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM3208break = i21.m3208break();
        fu1.m2428this(this.f2248do, iArrM3208break);
        return new gu1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM3208break = i21.m3208break();
        e01.m1572case(fu1.f2001if, this.f2248do, iArrM3208break);
        return new gu1(iArrM3208break);
    }

    public int hashCode() {
        return f2247if.hashCode() ^ q3.r(this.f2248do, 0, 6);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM3208break = i21.m3208break();
        fu1.m2423for(this.f2248do, iArrM3208break);
        return new gu1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM3208break = i21.m3208break();
        e01.m1572case(fu1.f2001if, ((gu1) cfor).f2248do, iArrM3208break);
        fu1.m2421else(iArrM3208break, this.f2248do, iArrM3208break);
        return new gu1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM3208break = i21.m3208break();
        fu1.m2427super(this.f2248do, ((gu1) cfor).f2248do, iArrM3208break);
        return new gu1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return i21.m3227native(this.f2248do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return i21.d(this.f2248do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f2248do;
        if (i21.m3241throws(iArr) || i21.m3234static(iArr)) {
            return this;
        }
        int[] iArrM3208break = i21.m3208break();
        int[] iArrM3208break2 = i21.m3208break();
        fu1.m2418class(iArr, iArrM3208break);
        fu1.m2421else(iArrM3208break, iArr, iArrM3208break);
        fu1.m2419const(iArrM3208break, 2, iArrM3208break2);
        fu1.m2421else(iArrM3208break2, iArrM3208break, iArrM3208break2);
        fu1.m2419const(iArrM3208break2, 4, iArrM3208break);
        fu1.m2421else(iArrM3208break, iArrM3208break2, iArrM3208break);
        fu1.m2419const(iArrM3208break, 8, iArrM3208break2);
        fu1.m2421else(iArrM3208break2, iArrM3208break, iArrM3208break2);
        fu1.m2419const(iArrM3208break2, 16, iArrM3208break);
        fu1.m2421else(iArrM3208break, iArrM3208break2, iArrM3208break);
        fu1.m2419const(iArrM3208break, 32, iArrM3208break2);
        fu1.m2421else(iArrM3208break2, iArrM3208break, iArrM3208break2);
        fu1.m2419const(iArrM3208break2, 64, iArrM3208break);
        fu1.m2421else(iArrM3208break, iArrM3208break2, iArrM3208break);
        fu1.m2419const(iArrM3208break, 62, iArrM3208break);
        fu1.m2418class(iArrM3208break, iArrM3208break2);
        if (i21.m3236super(iArr, iArrM3208break2)) {
            return new gu1(iArrM3208break);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return i21.m3234static(this.f2248do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM3208break = i21.m3208break();
        fu1.m2418class(this.f2248do, iArrM3208break);
        return new gu1(iArrM3208break);
    }
}
