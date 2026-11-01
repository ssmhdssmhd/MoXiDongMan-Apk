package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Celse;

/* loaded from: classes3.dex */
public class ju1 extends Cfor.Cif {

    /* renamed from: do, reason: not valid java name */
    public int[] f3226do;

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f3225if = Celse.f31876import;

    /* renamed from: for, reason: not valid java name */
    private static final int[] f3224for = {868209154, -587542221, 579297866, -1014948952, -1470801668, 514782679, -1897982644};

    public ju1() {
        this.f3226do = j21.m3669break();
    }

    public ju1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f3225if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224K1FieldElement");
        }
        this.f3226do = iu1.m3587new(bigInteger);
    }

    public ju1(int[] iArr) {
        this.f3226do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return j21.m3688native(this.f3226do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP224K1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM3669break = j21.m3669break();
        iu1.m3577case(this.f3226do, ((ju1) cfor).f3226do, iArrM3669break);
        return new ju1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM3669break = j21.m3669break();
        iu1.m3581do(this.f3226do, ((ju1) cfor).f3226do, iArrM3669break);
        return new ju1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f3225if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ju1) {
            return j21.m3673const(this.f3226do, ((ju1) obj).f3226do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM3669break = j21.m3669break();
        iu1.m3585goto(this.f3226do, iArrM3669break);
        return new ju1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM3669break = j21.m3669break();
        e01.m1572case(iu1.f2886do, this.f3226do, iArrM3669break);
        return new ju1(iArrM3669break);
    }

    public int hashCode() {
        return f3225if.hashCode() ^ q3.r(this.f3226do, 0, 7);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM3669break = j21.m3669break();
        iu1.m3584for(this.f3226do, iArrM3669break);
        return new ju1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM3669break = j21.m3669break();
        e01.m1572case(iu1.f2886do, ((ju1) cfor).f3226do, iArrM3669break);
        iu1.m3577case(iArrM3669break, this.f3226do, iArrM3669break);
        return new ju1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM3669break = j21.m3669break();
        iu1.m3580const(this.f3226do, ((ju1) cfor).f3226do, iArrM3669break);
        return new ju1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return j21.m3697super(this.f3226do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return j21.m3699synchronized(this.f3226do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f3226do;
        if (j21.m3688native(iArr) || j21.m3685import(iArr)) {
            return this;
        }
        int[] iArrM3669break = j21.m3669break();
        iu1.m3578catch(iArr, iArrM3669break);
        iu1.m3577case(iArrM3669break, iArr, iArrM3669break);
        iu1.m3578catch(iArrM3669break, iArrM3669break);
        iu1.m3577case(iArrM3669break, iArr, iArrM3669break);
        int[] iArrM3669break2 = j21.m3669break();
        iu1.m3578catch(iArrM3669break, iArrM3669break2);
        iu1.m3577case(iArrM3669break2, iArr, iArrM3669break2);
        int[] iArrM3669break3 = j21.m3669break();
        iu1.m3579class(iArrM3669break2, 4, iArrM3669break3);
        iu1.m3577case(iArrM3669break3, iArrM3669break2, iArrM3669break3);
        int[] iArrM3669break4 = j21.m3669break();
        iu1.m3579class(iArrM3669break3, 3, iArrM3669break4);
        iu1.m3577case(iArrM3669break4, iArrM3669break, iArrM3669break4);
        iu1.m3579class(iArrM3669break4, 8, iArrM3669break4);
        iu1.m3577case(iArrM3669break4, iArrM3669break3, iArrM3669break4);
        iu1.m3579class(iArrM3669break4, 4, iArrM3669break3);
        iu1.m3577case(iArrM3669break3, iArrM3669break2, iArrM3669break3);
        iu1.m3579class(iArrM3669break3, 19, iArrM3669break2);
        iu1.m3577case(iArrM3669break2, iArrM3669break4, iArrM3669break2);
        int[] iArrM3669break5 = j21.m3669break();
        iu1.m3579class(iArrM3669break2, 42, iArrM3669break5);
        iu1.m3577case(iArrM3669break5, iArrM3669break2, iArrM3669break5);
        iu1.m3579class(iArrM3669break5, 23, iArrM3669break2);
        iu1.m3577case(iArrM3669break2, iArrM3669break3, iArrM3669break2);
        iu1.m3579class(iArrM3669break2, 84, iArrM3669break3);
        iu1.m3577case(iArrM3669break3, iArrM3669break5, iArrM3669break3);
        iu1.m3579class(iArrM3669break3, 20, iArrM3669break3);
        iu1.m3577case(iArrM3669break3, iArrM3669break4, iArrM3669break3);
        iu1.m3579class(iArrM3669break3, 3, iArrM3669break3);
        iu1.m3577case(iArrM3669break3, iArr, iArrM3669break3);
        iu1.m3579class(iArrM3669break3, 2, iArrM3669break3);
        iu1.m3577case(iArrM3669break3, iArr, iArrM3669break3);
        iu1.m3579class(iArrM3669break3, 4, iArrM3669break3);
        iu1.m3577case(iArrM3669break3, iArrM3669break, iArrM3669break3);
        iu1.m3578catch(iArrM3669break3, iArrM3669break3);
        iu1.m3578catch(iArrM3669break3, iArrM3669break5);
        if (j21.m3673const(iArr, iArrM3669break5)) {
            return new ju1(iArrM3669break3);
        }
        iu1.m3577case(iArrM3669break3, f3224for, iArrM3669break3);
        iu1.m3578catch(iArrM3669break3, iArrM3669break5);
        if (j21.m3673const(iArr, iArrM3669break5)) {
            return new ju1(iArrM3669break3);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return j21.m3685import(this.f3226do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM3669break = j21.m3669break();
        iu1.m3578catch(this.f3226do, iArrM3669break);
        return new ju1(iArrM3669break);
    }
}
