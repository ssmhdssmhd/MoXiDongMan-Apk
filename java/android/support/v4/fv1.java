package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class fv1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f2008do;

    public fv1() {
        this.f2008do = i21.m3210catch();
    }

    public fv1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 131) {
            throw new IllegalArgumentException("x value invalid for SecT131FieldElement");
        }
        this.f2008do = ev1.m2038new(bigInteger);
    }

    public fv1(long[] jArr) {
        this.f2008do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return i21.m3214default(this.f2008do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT131Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2026break(this.f2008do, ((fv1) cfor).f2008do, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f2008do;
        long[] jArr2 = ((fv1) cfor).f2008do;
        long[] jArr3 = ((fv1) cfor2).f2008do;
        long[] jArr4 = ((fv1) cfor3).f2008do;
        long[] jArrM6355throws = q21.m6355throws(5);
        ev1.m2028catch(jArr, jArr2, jArrM6355throws);
        ev1.m2028catch(jArr3, jArr4, jArrM6355throws);
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2029class(jArrM6355throws, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    /* renamed from: default, reason: not valid java name */
    public int m2437default() {
        return 2;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2031do(this.f2008do, ((fv1) cfor).f2008do, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return 131;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof fv1) {
            return i21.m3240throw(this.f2008do, ((fv1) obj).f2008do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m2438extends() {
        return 3;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m2439finally() {
        return 8;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2040this(this.f2008do, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    public int hashCode() {
        return q3.t(this.f2008do, 0, 3) ^ 131832;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2034for(this.f2008do, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f2008do;
        long[] jArr2 = ((fv1) cfor).f2008do;
        long[] jArr3 = ((fv1) cfor2).f2008do;
        long[] jArrM6355throws = q21.m6355throws(5);
        ev1.m2041throw(jArr, jArrM6355throws);
        ev1.m2028catch(jArr2, jArr3, jArrM6355throws);
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2029class(jArrM6355throws, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2043while(this.f2008do, i, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m2440package() {
        return 131;
    }

    /* renamed from: private, reason: not valid java name */
    public int m2441private() {
        return 3;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        return mo331do(cfor);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return (this.f2008do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return i21.e(this.f2008do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2033final(this.f2008do, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return i21.m3237switch(this.f2008do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM3210catch = i21.m3210catch();
        ev1.m2039super(this.f2008do, jArrM3210catch);
        return new fv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws */
    public int mo653throws() {
        return ev1.m2037import(this.f2008do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
