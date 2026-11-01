package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.djb.Cdo;

/* loaded from: classes3.dex */
public class et extends Cfor.Cif {

    /* renamed from: do, reason: not valid java name */
    public int[] f1581do;

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f1580if = Cdo.f31817import;

    /* renamed from: for, reason: not valid java name */
    private static final int[] f1579for = {1242472624, -991028441, -1389370248, 792926214, 1039914919, 726466713, 1338105611, 730014848};

    public et() {
        this.f1581do = k21.m4180class();
    }

    public et(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1580if) >= 0) {
            throw new IllegalArgumentException("x value invalid for Curve25519FieldElement");
        }
        this.f1581do = dt.m1527case(bigInteger);
    }

    public et(int[] iArr) {
        this.f1581do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return k21.m4186extends(this.f1581do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "Curve25519Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        dt.m1535goto(this.f1581do, ((et) cfor).f1581do, iArrM4180class);
        return new et(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        dt.m1531do(this.f1581do, ((et) cfor).f1581do, iArrM4180class);
        return new et(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f1580if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof et) {
            return k21.m4214while(this.f1581do, ((et) obj).f1581do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM4180class = k21.m4180class();
        dt.m1526break(this.f1581do, iArrM4180class);
        return new et(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM4180class = k21.m4180class();
        e01.m1572case(dt.f1125if, this.f1581do, iArrM4180class);
        return new et(iArrM4180class);
    }

    public int hashCode() {
        return f1580if.hashCode() ^ q3.r(this.f1581do, 0, 8);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM4180class = k21.m4180class();
        dt.m1534for(this.f1581do, iArrM4180class);
        return new et(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        e01.m1572case(dt.f1125if, ((et) cfor).f1581do, iArrM4180class);
        dt.m1535goto(iArrM4180class, this.f1581do, iArrM4180class);
        return new et(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        dt.m1544while(this.f1581do, ((et) cfor).f1581do, iArrM4180class);
        return new et(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return k21.m4202return(this.f1581do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return k21.h(this.f1581do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f1581do;
        if (k21.m4186extends(iArr) || k21.m4210throws(iArr)) {
            return this;
        }
        int[] iArrM4180class = k21.m4180class();
        dt.m1530const(iArr, iArrM4180class);
        dt.m1535goto(iArrM4180class, iArr, iArrM4180class);
        dt.m1530const(iArrM4180class, iArrM4180class);
        dt.m1535goto(iArrM4180class, iArr, iArrM4180class);
        int[] iArrM4180class2 = k21.m4180class();
        dt.m1530const(iArrM4180class, iArrM4180class2);
        dt.m1535goto(iArrM4180class2, iArr, iArrM4180class2);
        int[] iArrM4180class3 = k21.m4180class();
        dt.m1533final(iArrM4180class2, 3, iArrM4180class3);
        dt.m1535goto(iArrM4180class3, iArrM4180class, iArrM4180class3);
        dt.m1533final(iArrM4180class3, 4, iArrM4180class);
        dt.m1535goto(iArrM4180class, iArrM4180class2, iArrM4180class);
        dt.m1533final(iArrM4180class, 4, iArrM4180class3);
        dt.m1535goto(iArrM4180class3, iArrM4180class2, iArrM4180class3);
        dt.m1533final(iArrM4180class3, 15, iArrM4180class2);
        dt.m1535goto(iArrM4180class2, iArrM4180class3, iArrM4180class2);
        dt.m1533final(iArrM4180class2, 30, iArrM4180class3);
        dt.m1535goto(iArrM4180class3, iArrM4180class2, iArrM4180class3);
        dt.m1533final(iArrM4180class3, 60, iArrM4180class2);
        dt.m1535goto(iArrM4180class2, iArrM4180class3, iArrM4180class2);
        dt.m1533final(iArrM4180class2, 11, iArrM4180class3);
        dt.m1535goto(iArrM4180class3, iArrM4180class, iArrM4180class3);
        dt.m1533final(iArrM4180class3, 120, iArrM4180class);
        dt.m1535goto(iArrM4180class, iArrM4180class2, iArrM4180class);
        dt.m1530const(iArrM4180class, iArrM4180class);
        dt.m1530const(iArrM4180class, iArrM4180class2);
        if (k21.m4214while(iArr, iArrM4180class2)) {
            return new et(iArrM4180class);
        }
        dt.m1535goto(iArrM4180class, f1579for, iArrM4180class);
        dt.m1530const(iArrM4180class, iArrM4180class2);
        if (k21.m4214while(iArr, iArrM4180class2)) {
            return new et(iArrM4180class);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return k21.m4210throws(this.f1581do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM4180class = k21.m4180class();
        dt.m1530const(this.f1581do, iArrM4180class);
        return new et(iArrM4180class);
    }
}
