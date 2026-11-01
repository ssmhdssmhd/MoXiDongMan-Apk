package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Cbreak;

/* loaded from: classes3.dex */
public class su1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f6308if = Cbreak.f31836import;

    /* renamed from: do, reason: not valid java name */
    public int[] f6309do;

    public su1() {
        this.f6309do = k21.m4180class();
    }

    public su1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f6308if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.f6309do = ru1.m7142try(bigInteger);
    }

    public su1(int[] iArr) {
        this.f6309do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return k21.m4186extends(this.f6309do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP256R1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        ru1.m7133else(this.f6309do, ((su1) cfor).f6309do, iArrM4180class);
        return new su1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        ru1.m7132do(this.f6309do, ((su1) cfor).f6309do, iArrM4180class);
        return new su1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f6308if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof su1) {
            return k21.m4214while(this.f6309do, ((su1) obj).f6309do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM4180class = k21.m4180class();
        ru1.m7140this(this.f6309do, iArrM4180class);
        return new su1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM4180class = k21.m4180class();
        e01.m1572case(ru1.f5936if, this.f6309do, iArrM4180class);
        return new su1(iArrM4180class);
    }

    public int hashCode() {
        return f6308if.hashCode() ^ q3.r(this.f6309do, 0, 8);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM4180class = k21.m4180class();
        ru1.m7135for(this.f6309do, iArrM4180class);
        return new su1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        e01.m1572case(ru1.f5936if, ((su1) cfor).f6309do, iArrM4180class);
        ru1.m7133else(iArrM4180class, this.f6309do, iArrM4180class);
        return new su1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM4180class = k21.m4180class();
        ru1.m7139super(this.f6309do, ((su1) cfor).f6309do, iArrM4180class);
        return new su1(iArrM4180class);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return k21.m4202return(this.f6309do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return k21.h(this.f6309do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f6309do;
        if (k21.m4186extends(iArr) || k21.m4210throws(iArr)) {
            return this;
        }
        int[] iArrM4180class = k21.m4180class();
        int[] iArrM4180class2 = k21.m4180class();
        ru1.m7130class(iArr, iArrM4180class);
        ru1.m7133else(iArrM4180class, iArr, iArrM4180class);
        ru1.m7131const(iArrM4180class, 2, iArrM4180class2);
        ru1.m7133else(iArrM4180class2, iArrM4180class, iArrM4180class2);
        ru1.m7131const(iArrM4180class2, 4, iArrM4180class);
        ru1.m7133else(iArrM4180class, iArrM4180class2, iArrM4180class);
        ru1.m7131const(iArrM4180class, 8, iArrM4180class2);
        ru1.m7133else(iArrM4180class2, iArrM4180class, iArrM4180class2);
        ru1.m7131const(iArrM4180class2, 16, iArrM4180class);
        ru1.m7133else(iArrM4180class, iArrM4180class2, iArrM4180class);
        ru1.m7131const(iArrM4180class, 32, iArrM4180class);
        ru1.m7133else(iArrM4180class, iArr, iArrM4180class);
        ru1.m7131const(iArrM4180class, 96, iArrM4180class);
        ru1.m7133else(iArrM4180class, iArr, iArrM4180class);
        ru1.m7131const(iArrM4180class, 94, iArrM4180class);
        ru1.m7130class(iArrM4180class, iArrM4180class2);
        if (k21.m4214while(iArr, iArrM4180class2)) {
            return new su1(iArrM4180class);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return k21.m4210throws(this.f6309do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM4180class = k21.m4180class();
        ru1.m7130class(this.f6309do, iArrM4180class);
        return new su1(iArrM4180class);
    }
}
