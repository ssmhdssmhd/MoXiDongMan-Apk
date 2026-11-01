package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class zv1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f8667do;

    public zv1() {
        this.f8667do = l21.m4546for();
    }

    public zv1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 283) {
            throw new IllegalArgumentException("x value invalid for SecT283FieldElement");
        }
        this.f8667do = yv1.m9968new(bigInteger);
    }

    public zv1(long[] jArr) {
        this.f8667do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return l21.m4547goto(this.f8667do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT283Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM4546for = l21.m4546for();
        yv1.m9957catch(this.f8667do, ((zv1) cfor).f8667do, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f8667do;
        long[] jArr2 = ((zv1) cfor).f8667do;
        long[] jArr3 = ((zv1) cfor2).f8667do;
        long[] jArr4 = ((zv1) cfor3).f8667do;
        long[] jArrM6355throws = q21.m6355throws(9);
        yv1.m9958class(jArr, jArr2, jArrM6355throws);
        yv1.m9958class(jArr3, jArr4, jArrM6355throws);
        long[] jArrM4546for = l21.m4546for();
        yv1.m9959const(jArrM6355throws, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    /* renamed from: default, reason: not valid java name */
    public int m10307default() {
        return 5;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM4546for = l21.m4546for();
        yv1.m9960do(this.f8667do, ((zv1) cfor).f8667do, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return 283;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zv1) {
            return l21.m4551try(this.f8667do, ((zv1) obj).f8667do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m10308extends() {
        return 7;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m10309finally() {
        return 12;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM4546for = l21.m4546for();
        yv1.m9955break(this.f8667do, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    public int hashCode() {
        return q3.t(this.f8667do, 0, 5) ^ 2831275;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM4546for = l21.m4546for();
        yv1.m9963for(this.f8667do, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f8667do;
        long[] jArr2 = ((zv1) cfor).f8667do;
        long[] jArr3 = ((zv1) cfor2).f8667do;
        long[] jArrM6355throws = q21.m6355throws(9);
        yv1.m9973while(jArr, jArrM6355throws);
        yv1.m9958class(jArr2, jArr3, jArrM6355throws);
        long[] jArrM4546for = l21.m4546for();
        yv1.m9959const(jArrM6355throws, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM4546for = l21.m4546for();
        yv1.m9966import(this.f8667do, i, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m10310package() {
        return 283;
    }

    /* renamed from: private, reason: not valid java name */
    public int m10311private() {
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
        return (this.f8667do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return l21.m4550this(this.f8667do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM4546for = l21.m4546for();
        yv1.m9969super(this.f8667do, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return l21.m4545else(this.f8667do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM4546for = l21.m4546for();
        yv1.m9971throw(this.f8667do, jArrM4546for);
        return new zv1(jArrM4546for);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws */
    public int mo653throws() {
        return yv1.m9967native(this.f8667do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
