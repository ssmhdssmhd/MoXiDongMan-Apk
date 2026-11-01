package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class xt1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f8021if = org.bouncycastle.math.ec.custom.sec.Cfor.f31897import;

    /* renamed from: do, reason: not valid java name */
    public int[] f8022do;

    public xt1() {
        this.f8022do = h21.m2896goto();
    }

    public xt1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f8021if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R1FieldElement");
        }
        this.f8022do = wt1.m9280new(bigInteger);
    }

    public xt1(int[] iArr) {
        this.f8022do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return h21.m2918while(this.f8022do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP160R1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM2896goto = h21.m2896goto();
        wt1.m9270case(this.f8022do, ((xt1) cfor).f8022do, iArrM2896goto);
        return new xt1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM2896goto = h21.m2896goto();
        wt1.m9274do(this.f8022do, ((xt1) cfor).f8022do, iArrM2896goto);
        return new xt1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f8021if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof xt1) {
            return h21.m2885catch(this.f8022do, ((xt1) obj).f8022do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM2896goto = h21.m2896goto();
        wt1.m9278goto(this.f8022do, iArrM2896goto);
        return new xt1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM2896goto = h21.m2896goto();
        e01.m1572case(wt1.f7696if, this.f8022do, iArrM2896goto);
        return new xt1(iArrM2896goto);
    }

    public int hashCode() {
        return f8021if.hashCode() ^ q3.r(this.f8022do, 0, 5);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM2896goto = h21.m2896goto();
        wt1.m9277for(this.f8022do, iArrM2896goto);
        return new xt1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM2896goto = h21.m2896goto();
        e01.m1572case(wt1.f7696if, ((xt1) cfor).f8022do, iArrM2896goto);
        wt1.m9270case(iArrM2896goto, this.f8022do, iArrM2896goto);
        return new xt1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM2896goto = h21.m2896goto();
        wt1.m9273const(this.f8022do, ((xt1) cfor).f8022do, iArrM2896goto);
        return new xt1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return h21.m2887const(this.f8022do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return h21.m2915transient(this.f8022do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f8022do;
        if (h21.m2918while(iArr) || h21.m2913throw(iArr)) {
            return this;
        }
        int[] iArrM2896goto = h21.m2896goto();
        wt1.m9271catch(iArr, iArrM2896goto);
        wt1.m9270case(iArrM2896goto, iArr, iArrM2896goto);
        int[] iArrM2896goto2 = h21.m2896goto();
        wt1.m9272class(iArrM2896goto, 2, iArrM2896goto2);
        wt1.m9270case(iArrM2896goto2, iArrM2896goto, iArrM2896goto2);
        wt1.m9272class(iArrM2896goto2, 4, iArrM2896goto);
        wt1.m9270case(iArrM2896goto, iArrM2896goto2, iArrM2896goto);
        wt1.m9272class(iArrM2896goto, 8, iArrM2896goto2);
        wt1.m9270case(iArrM2896goto2, iArrM2896goto, iArrM2896goto2);
        wt1.m9272class(iArrM2896goto2, 16, iArrM2896goto);
        wt1.m9270case(iArrM2896goto, iArrM2896goto2, iArrM2896goto);
        wt1.m9272class(iArrM2896goto, 32, iArrM2896goto2);
        wt1.m9270case(iArrM2896goto2, iArrM2896goto, iArrM2896goto2);
        wt1.m9272class(iArrM2896goto2, 64, iArrM2896goto);
        wt1.m9270case(iArrM2896goto, iArrM2896goto2, iArrM2896goto);
        wt1.m9271catch(iArrM2896goto, iArrM2896goto2);
        wt1.m9270case(iArrM2896goto2, iArr, iArrM2896goto2);
        wt1.m9272class(iArrM2896goto2, 29, iArrM2896goto2);
        wt1.m9271catch(iArrM2896goto2, iArrM2896goto);
        if (h21.m2885catch(iArr, iArrM2896goto)) {
            return new xt1(iArrM2896goto2);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return h21.m2913throw(this.f8022do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM2896goto = h21.m2896goto();
        wt1.m9271catch(this.f8022do, iArrM2896goto);
        return new xt1(iArrM2896goto);
    }
}
