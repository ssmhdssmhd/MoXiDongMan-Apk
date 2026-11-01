package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.gm.Cdo;

/* loaded from: classes3.dex */
public class iq1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f2826if = Cdo.f31823import;

    /* renamed from: do, reason: not valid java name */
    public int[] f2827do;

    public iq1() {
        this.f2827do = k21.m4180class();
    }

    public iq1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f2826if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SM2P256V1FieldElement");
        }
        this.f2827do = hq1.m3105try(bigInteger);
    }

    public iq1(int[] iArr) {
        this.f2827do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return k21.m4186extends(this.f2827do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SM2P256V1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        hq1.m3096else(this.f2827do, ((iq1) cfor).f2827do, iArrM4180class);
        return new iq1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        hq1.m3095do(this.f2827do, ((iq1) cfor).f2827do, iArrM4180class);
        return new iq1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f2826if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof iq1) {
            return k21.m4214while(this.f2827do, ((iq1) obj).f2827do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM4180class = k21.m4180class();
        hq1.m3103this(this.f2827do, iArrM4180class);
        return new iq1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM4180class = k21.m4180class();
        e01.m1572case(hq1.f2454if, this.f2827do, iArrM4180class);
        return new iq1(iArrM4180class);
    }

    public int hashCode() {
        return f2826if.hashCode() ^ q3.r(this.f2827do, 0, 8);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM4180class = k21.m4180class();
        hq1.m3098for(this.f2827do, iArrM4180class);
        return new iq1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        e01.m1572case(hq1.f2454if, ((iq1) cfor).f2827do, iArrM4180class);
        hq1.m3096else(iArrM4180class, this.f2827do, iArrM4180class);
        return new iq1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        hq1.m3102super(this.f2827do, ((iq1) cfor).f2827do, iArrM4180class);
        return new iq1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return k21.m4202return(this.f2827do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return k21.h(this.f2827do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f2827do;
        if (k21.m4186extends(iArr) || k21.m4210throws(iArr)) {
            return this;
        }
        int[] iArrM4180class = k21.m4180class();
        hq1.m3093class(iArr, iArrM4180class);
        hq1.m3096else(iArrM4180class, iArr, iArrM4180class);
        int[] iArrM4180class2 = k21.m4180class();
        hq1.m3094const(iArrM4180class, 2, iArrM4180class2);
        hq1.m3096else(iArrM4180class2, iArrM4180class, iArrM4180class2);
        int[] iArrM4180class3 = k21.m4180class();
        hq1.m3094const(iArrM4180class2, 2, iArrM4180class3);
        hq1.m3096else(iArrM4180class3, iArrM4180class, iArrM4180class3);
        hq1.m3094const(iArrM4180class3, 6, iArrM4180class);
        hq1.m3096else(iArrM4180class, iArrM4180class3, iArrM4180class);
        int[] iArrM4180class4 = k21.m4180class();
        hq1.m3094const(iArrM4180class, 12, iArrM4180class4);
        hq1.m3096else(iArrM4180class4, iArrM4180class, iArrM4180class4);
        hq1.m3094const(iArrM4180class4, 6, iArrM4180class);
        hq1.m3096else(iArrM4180class, iArrM4180class3, iArrM4180class);
        hq1.m3093class(iArrM4180class, iArrM4180class3);
        hq1.m3096else(iArrM4180class3, iArr, iArrM4180class3);
        hq1.m3094const(iArrM4180class3, 31, iArrM4180class4);
        hq1.m3096else(iArrM4180class4, iArrM4180class3, iArrM4180class);
        hq1.m3094const(iArrM4180class4, 32, iArrM4180class4);
        hq1.m3096else(iArrM4180class4, iArrM4180class, iArrM4180class4);
        hq1.m3094const(iArrM4180class4, 62, iArrM4180class4);
        hq1.m3096else(iArrM4180class4, iArrM4180class, iArrM4180class4);
        hq1.m3094const(iArrM4180class4, 4, iArrM4180class4);
        hq1.m3096else(iArrM4180class4, iArrM4180class2, iArrM4180class4);
        hq1.m3094const(iArrM4180class4, 32, iArrM4180class4);
        hq1.m3096else(iArrM4180class4, iArr, iArrM4180class4);
        hq1.m3094const(iArrM4180class4, 62, iArrM4180class4);
        hq1.m3093class(iArrM4180class4, iArrM4180class2);
        if (k21.m4214while(iArr, iArrM4180class2)) {
            return new iq1(iArrM4180class4);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return k21.m4210throws(this.f2827do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM4180class = k21.m4180class();
        hq1.m3093class(this.f2827do, iArrM4180class);
        return new iq1(iArrM4180class);
    }
}
