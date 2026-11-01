package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Cdo;

/* loaded from: classes3.dex */
public class tt1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f6693if = Cdo.f31870import;

    /* renamed from: do, reason: not valid java name */
    public int[] f6694do;

    public tt1() {
        this.f6694do = g21.m2514break();
    }

    public tt1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f6693if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP128R1FieldElement");
        }
        this.f6694do = st1.m7595try(bigInteger);
    }

    public tt1(int[] iArr) {
        this.f6694do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return g21.m2547throws(this.f6694do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP128R1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM2514break = g21.m2514break();
        st1.m7586else(this.f6694do, ((tt1) cfor).f6694do, iArrM2514break);
        return new tt1(iArrM2514break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM2514break = g21.m2514break();
        st1.m7585do(this.f6694do, ((tt1) cfor).f6694do, iArrM2514break);
        return new tt1(iArrM2514break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f6693if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof tt1) {
            return g21.m2542super(this.f6694do, ((tt1) obj).f6694do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM2514break = g21.m2514break();
        st1.m7593this(this.f6694do, iArrM2514break);
        return new tt1(iArrM2514break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM2514break = g21.m2514break();
        e01.m1572case(st1.f6252if, this.f6694do, iArrM2514break);
        return new tt1(iArrM2514break);
    }

    public int hashCode() {
        return f6693if.hashCode() ^ q3.r(this.f6694do, 0, 4);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM2514break = g21.m2514break();
        st1.m7588for(this.f6694do, iArrM2514break);
        return new tt1(iArrM2514break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM2514break = g21.m2514break();
        e01.m1572case(st1.f6252if, ((tt1) cfor).f6694do, iArrM2514break);
        st1.m7586else(iArrM2514break, this.f6694do, iArrM2514break);
        return new tt1(iArrM2514break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM2514break = g21.m2514break();
        st1.m7592super(this.f6694do, ((tt1) cfor).f6694do, iArrM2514break);
        return new tt1(iArrM2514break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return g21.m2533native(this.f6694do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return g21.e(this.f6694do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f6694do;
        if (g21.m2547throws(iArr) || g21.m2540static(iArr)) {
            return this;
        }
        int[] iArrM2514break = g21.m2514break();
        st1.m7583class(iArr, iArrM2514break);
        st1.m7586else(iArrM2514break, iArr, iArrM2514break);
        int[] iArrM2514break2 = g21.m2514break();
        st1.m7584const(iArrM2514break, 2, iArrM2514break2);
        st1.m7586else(iArrM2514break2, iArrM2514break, iArrM2514break2);
        int[] iArrM2514break3 = g21.m2514break();
        st1.m7584const(iArrM2514break2, 4, iArrM2514break3);
        st1.m7586else(iArrM2514break3, iArrM2514break2, iArrM2514break3);
        st1.m7584const(iArrM2514break3, 2, iArrM2514break2);
        st1.m7586else(iArrM2514break2, iArrM2514break, iArrM2514break2);
        st1.m7584const(iArrM2514break2, 10, iArrM2514break);
        st1.m7586else(iArrM2514break, iArrM2514break2, iArrM2514break);
        st1.m7584const(iArrM2514break, 10, iArrM2514break3);
        st1.m7586else(iArrM2514break3, iArrM2514break2, iArrM2514break3);
        st1.m7583class(iArrM2514break3, iArrM2514break2);
        st1.m7586else(iArrM2514break2, iArr, iArrM2514break2);
        st1.m7584const(iArrM2514break2, 95, iArrM2514break2);
        st1.m7583class(iArrM2514break2, iArrM2514break3);
        if (g21.m2542super(iArr, iArrM2514break3)) {
            return new tt1(iArrM2514break2);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return g21.m2540static(this.f6694do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM2514break = g21.m2514break();
        st1.m7583class(this.f6694do, iArrM2514break);
        return new tt1(iArrM2514break);
    }
}
