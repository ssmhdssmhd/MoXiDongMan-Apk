package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Ctry;

/* loaded from: classes3.dex */
public class du1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f1134if = Ctry.f31982import;

    /* renamed from: do, reason: not valid java name */
    public int[] f1135do;

    public du1() {
        this.f1135do = i21.m3208break();
    }

    public du1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1134if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192K1FieldElement");
        }
        this.f1135do = cu1.m1028new(bigInteger);
    }

    public du1(int[] iArr) {
        this.f1135do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return i21.m3241throws(this.f1135do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP192K1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM3208break = i21.m3208break();
        cu1.m1018case(this.f1135do, ((du1) cfor).f1135do, iArrM3208break);
        return new du1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM3208break = i21.m3208break();
        cu1.m1022do(this.f1135do, ((du1) cfor).f1135do, iArrM3208break);
        return new du1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f1134if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof du1) {
            return i21.m3236super(this.f1135do, ((du1) obj).f1135do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM3208break = i21.m3208break();
        cu1.m1026goto(this.f1135do, iArrM3208break);
        return new du1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM3208break = i21.m3208break();
        e01.m1572case(cu1.f870do, this.f1135do, iArrM3208break);
        return new du1(iArrM3208break);
    }

    public int hashCode() {
        return f1134if.hashCode() ^ q3.r(this.f1135do, 0, 6);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM3208break = i21.m3208break();
        cu1.m1025for(this.f1135do, iArrM3208break);
        return new du1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM3208break = i21.m3208break();
        e01.m1572case(cu1.f870do, ((du1) cfor).f1135do, iArrM3208break);
        cu1.m1018case(iArrM3208break, this.f1135do, iArrM3208break);
        return new du1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM3208break = i21.m3208break();
        cu1.m1021const(this.f1135do, ((du1) cfor).f1135do, iArrM3208break);
        return new du1(iArrM3208break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return i21.m3227native(this.f1135do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return i21.d(this.f1135do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f1135do;
        if (i21.m3241throws(iArr) || i21.m3234static(iArr)) {
            return this;
        }
        int[] iArrM3208break = i21.m3208break();
        cu1.m1019catch(iArr, iArrM3208break);
        cu1.m1018case(iArrM3208break, iArr, iArrM3208break);
        int[] iArrM3208break2 = i21.m3208break();
        cu1.m1019catch(iArrM3208break, iArrM3208break2);
        cu1.m1018case(iArrM3208break2, iArr, iArrM3208break2);
        int[] iArrM3208break3 = i21.m3208break();
        cu1.m1020class(iArrM3208break2, 3, iArrM3208break3);
        cu1.m1018case(iArrM3208break3, iArrM3208break2, iArrM3208break3);
        cu1.m1020class(iArrM3208break3, 2, iArrM3208break3);
        cu1.m1018case(iArrM3208break3, iArrM3208break, iArrM3208break3);
        cu1.m1020class(iArrM3208break3, 8, iArrM3208break);
        cu1.m1018case(iArrM3208break, iArrM3208break3, iArrM3208break);
        cu1.m1020class(iArrM3208break, 3, iArrM3208break3);
        cu1.m1018case(iArrM3208break3, iArrM3208break2, iArrM3208break3);
        int[] iArrM3208break4 = i21.m3208break();
        cu1.m1020class(iArrM3208break3, 16, iArrM3208break4);
        cu1.m1018case(iArrM3208break4, iArrM3208break, iArrM3208break4);
        cu1.m1020class(iArrM3208break4, 35, iArrM3208break);
        cu1.m1018case(iArrM3208break, iArrM3208break4, iArrM3208break);
        cu1.m1020class(iArrM3208break, 70, iArrM3208break4);
        cu1.m1018case(iArrM3208break4, iArrM3208break, iArrM3208break4);
        cu1.m1020class(iArrM3208break4, 19, iArrM3208break);
        cu1.m1018case(iArrM3208break, iArrM3208break3, iArrM3208break);
        cu1.m1020class(iArrM3208break, 20, iArrM3208break);
        cu1.m1018case(iArrM3208break, iArrM3208break3, iArrM3208break);
        cu1.m1020class(iArrM3208break, 4, iArrM3208break);
        cu1.m1018case(iArrM3208break, iArrM3208break2, iArrM3208break);
        cu1.m1020class(iArrM3208break, 6, iArrM3208break);
        cu1.m1018case(iArrM3208break, iArrM3208break2, iArrM3208break);
        cu1.m1019catch(iArrM3208break, iArrM3208break);
        cu1.m1019catch(iArrM3208break, iArrM3208break2);
        if (i21.m3236super(iArr, iArrM3208break2)) {
            return new du1(iArrM3208break);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return i21.m3234static(this.f1135do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM3208break = i21.m3208break();
        cu1.m1019catch(this.f1135do, iArrM3208break);
        return new du1(iArrM3208break);
    }
}
