package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class bv1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f544do;

    public bv1() {
        this.f544do = g21.m2516catch();
    }

    public bv1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 113) {
            throw new IllegalArgumentException("x value invalid for SecT113FieldElement");
        }
        this.f544do = av1.m354new(bigInteger);
    }

    public bv1(long[] jArr) {
        this.f544do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return g21.m2520default(this.f544do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT113Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM2516catch = g21.m2516catch();
        av1.m356this(this.f544do, ((bv1) cfor).f544do, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class, reason: not valid java name */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const, reason: not valid java name */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f544do;
        long[] jArr2 = ((bv1) cfor).f544do;
        long[] jArr3 = ((bv1) cfor2).f544do;
        long[] jArr4 = ((bv1) cfor3).f544do;
        long[] jArrM2518const = g21.m2518const();
        av1.m343break(jArr, jArr2, jArrM2518const);
        av1.m343break(jArr3, jArr4, jArrM2518const);
        long[] jArrM2516catch = g21.m2516catch();
        av1.m345catch(jArrM2518const, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    /* renamed from: default, reason: not valid java name */
    public int m646default() {
        return 9;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM2516catch = g21.m2516catch();
        av1.m348do(this.f544do, ((bv1) cfor).f544do, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return 113;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bv1) {
            return g21.m2546throw(this.f544do, ((bv1) obj).f544do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m647extends() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m648finally() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM2516catch = g21.m2516catch();
        av1.m352goto(this.f544do, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    public int hashCode() {
        return q3.t(this.f544do, 0, 2) ^ 113009;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM2516catch = g21.m2516catch();
        av1.m351for(this.f544do, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import, reason: not valid java name */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f544do;
        long[] jArr2 = ((bv1) cfor).f544do;
        long[] jArr3 = ((bv1) cfor2).f544do;
        long[] jArrM2518const = g21.m2518const();
        av1.m355super(jArr, jArrM2518const);
        av1.m343break(jArr2, jArr3, jArrM2518const);
        long[] jArrM2516catch = g21.m2516catch();
        av1.m345catch(jArrM2518const, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native, reason: not valid java name */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM2516catch = g21.m2516catch();
        av1.m357throw(this.f544do, i, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m651package() {
        return 113;
    }

    /* renamed from: private, reason: not valid java name */
    public int m652private() {
        return 2;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        return mo331do(cfor);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return (this.f544do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return g21.f(this.f544do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM2516catch = g21.m2516catch();
        av1.m347const(this.f544do, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return g21.m2543switch(this.f544do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM2516catch = g21.m2516catch();
        av1.m350final(this.f544do, jArrM2516catch);
        return new bv1(jArrM2516catch);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws, reason: not valid java name */
    public int mo653throws() {
        return av1.m359while(this.f544do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while, reason: not valid java name */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
