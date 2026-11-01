package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Cthis;

/* loaded from: classes3.dex */
public class pu1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f5195if = Cthis.f31966import;

    /* renamed from: do, reason: not valid java name */
    public int[] f5196do;

    public pu1() {
        this.f5196do = k21.m4180class();
    }

    public pu1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f5195if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256K1FieldElement");
        }
        this.f5196do = ou1.m5775new(bigInteger);
    }

    public pu1(int[] iArr) {
        this.f5196do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return k21.m4186extends(this.f5196do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP256K1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        ou1.m5765case(this.f5196do, ((pu1) cfor).f5196do, iArrM4180class);
        return new pu1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        ou1.m5769do(this.f5196do, ((pu1) cfor).f5196do, iArrM4180class);
        return new pu1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f5195if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof pu1) {
            return k21.m4214while(this.f5196do, ((pu1) obj).f5196do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM4180class = k21.m4180class();
        ou1.m5773goto(this.f5196do, iArrM4180class);
        return new pu1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM4180class = k21.m4180class();
        e01.m1572case(ou1.f4749do, this.f5196do, iArrM4180class);
        return new pu1(iArrM4180class);
    }

    public int hashCode() {
        return f5195if.hashCode() ^ q3.r(this.f5196do, 0, 8);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM4180class = k21.m4180class();
        ou1.m5772for(this.f5196do, iArrM4180class);
        return new pu1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        e01.m1572case(ou1.f4749do, ((pu1) cfor).f5196do, iArrM4180class);
        ou1.m5765case(iArrM4180class, this.f5196do, iArrM4180class);
        return new pu1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        ou1.m5768const(this.f5196do, ((pu1) cfor).f5196do, iArrM4180class);
        return new pu1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return k21.m4202return(this.f5196do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return k21.h(this.f5196do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f5196do;
        if (k21.m4186extends(iArr) || k21.m4210throws(iArr)) {
            return this;
        }
        int[] iArrM4180class = k21.m4180class();
        ou1.m5766catch(iArr, iArrM4180class);
        ou1.m5765case(iArrM4180class, iArr, iArrM4180class);
        int[] iArrM4180class2 = k21.m4180class();
        ou1.m5766catch(iArrM4180class, iArrM4180class2);
        ou1.m5765case(iArrM4180class2, iArr, iArrM4180class2);
        int[] iArrM4180class3 = k21.m4180class();
        ou1.m5767class(iArrM4180class2, 3, iArrM4180class3);
        ou1.m5765case(iArrM4180class3, iArrM4180class2, iArrM4180class3);
        ou1.m5767class(iArrM4180class3, 3, iArrM4180class3);
        ou1.m5765case(iArrM4180class3, iArrM4180class2, iArrM4180class3);
        ou1.m5767class(iArrM4180class3, 2, iArrM4180class3);
        ou1.m5765case(iArrM4180class3, iArrM4180class, iArrM4180class3);
        int[] iArrM4180class4 = k21.m4180class();
        ou1.m5767class(iArrM4180class3, 11, iArrM4180class4);
        ou1.m5765case(iArrM4180class4, iArrM4180class3, iArrM4180class4);
        ou1.m5767class(iArrM4180class4, 22, iArrM4180class3);
        ou1.m5765case(iArrM4180class3, iArrM4180class4, iArrM4180class3);
        int[] iArrM4180class5 = k21.m4180class();
        ou1.m5767class(iArrM4180class3, 44, iArrM4180class5);
        ou1.m5765case(iArrM4180class5, iArrM4180class3, iArrM4180class5);
        int[] iArrM4180class6 = k21.m4180class();
        ou1.m5767class(iArrM4180class5, 88, iArrM4180class6);
        ou1.m5765case(iArrM4180class6, iArrM4180class5, iArrM4180class6);
        ou1.m5767class(iArrM4180class6, 44, iArrM4180class5);
        ou1.m5765case(iArrM4180class5, iArrM4180class3, iArrM4180class5);
        ou1.m5767class(iArrM4180class5, 3, iArrM4180class3);
        ou1.m5765case(iArrM4180class3, iArrM4180class2, iArrM4180class3);
        ou1.m5767class(iArrM4180class3, 23, iArrM4180class3);
        ou1.m5765case(iArrM4180class3, iArrM4180class4, iArrM4180class3);
        ou1.m5767class(iArrM4180class3, 6, iArrM4180class3);
        ou1.m5765case(iArrM4180class3, iArrM4180class, iArrM4180class3);
        ou1.m5767class(iArrM4180class3, 2, iArrM4180class3);
        ou1.m5766catch(iArrM4180class3, iArrM4180class);
        if (k21.m4214while(iArr, iArrM4180class)) {
            return new pu1(iArrM4180class3);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return k21.m4210throws(this.f5196do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM4180class = k21.m4180class();
        ou1.m5766catch(this.f5196do, iArrM4180class);
        return new pu1(iArrM4180class);
    }
}
