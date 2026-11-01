package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class jv1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f3229do;

    public jv1() {
        this.f3229do = i21.m3210catch();
    }

    public jv1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 163) {
            throw new IllegalArgumentException("x value invalid for SecT163FieldElement");
        }
        this.f3229do = iv1.m3616new(bigInteger);
    }

    public jv1(long[] jArr) {
        this.f3229do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return i21.m3214default(this.f3229do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT163Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3604break(this.f3229do, ((jv1) cfor).f3229do, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f3229do;
        long[] jArr2 = ((jv1) cfor).f3229do;
        long[] jArr3 = ((jv1) cfor2).f3229do;
        long[] jArr4 = ((jv1) cfor3).f3229do;
        long[] jArrM3212const = i21.m3212const();
        iv1.m3606catch(jArr, jArr2, jArrM3212const);
        iv1.m3606catch(jArr3, jArr4, jArrM3212const);
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3607class(jArrM3212const, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    /* renamed from: default, reason: not valid java name */
    public int m4111default() {
        return 3;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3609do(this.f3229do, ((jv1) cfor).f3229do, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return 163;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof jv1) {
            return i21.m3240throw(this.f3229do, ((jv1) obj).f3229do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m4112extends() {
        return 6;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m4113finally() {
        return 7;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3618this(this.f3229do, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    public int hashCode() {
        return q3.t(this.f3229do, 0, 3) ^ 163763;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3612for(this.f3229do, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f3229do;
        long[] jArr2 = ((jv1) cfor).f3229do;
        long[] jArr3 = ((jv1) cfor2).f3229do;
        long[] jArrM3212const = i21.m3212const();
        iv1.m3619throw(jArr, jArrM3212const);
        iv1.m3606catch(jArr2, jArr3, jArrM3212const);
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3607class(jArrM3212const, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3621while(this.f3229do, i, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m4114package() {
        return 163;
    }

    /* renamed from: private, reason: not valid java name */
    public int m4115private() {
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
        return (this.f3229do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return i21.e(this.f3229do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3611final(this.f3229do, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return i21.m3237switch(this.f3229do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM3210catch = i21.m3210catch();
        iv1.m3617super(this.f3229do, jArrM3210catch);
        return new jv1(jArrM3210catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws */
    public int mo653throws() {
        return iv1.m3615import(this.f3229do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
