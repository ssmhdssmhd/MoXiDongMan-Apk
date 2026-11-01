package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class sv1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f6313do;

    public sv1() {
        this.f6313do = k21.m4181const();
    }

    public sv1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 233) {
            throw new IllegalArgumentException("x value invalid for SecT233FieldElement");
        }
        this.f6313do = rv1.m7173new(bigInteger);
    }

    public sv1(long[] jArr) {
        this.f6313do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return k21.m4188finally(this.f6313do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT233Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM4181const = k21.m4181const();
        rv1.m7162catch(this.f6313do, ((sv1) cfor).f6313do, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f6313do;
        long[] jArr2 = ((sv1) cfor).f6313do;
        long[] jArr3 = ((sv1) cfor2).f6313do;
        long[] jArr4 = ((sv1) cfor3).f6313do;
        long[] jArrM4205super = k21.m4205super();
        rv1.m7163class(jArr, jArr2, jArrM4205super);
        rv1.m7163class(jArr3, jArr4, jArrM4205super);
        long[] jArrM4181const = k21.m4181const();
        rv1.m7164const(jArrM4205super, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    /* renamed from: default, reason: not valid java name */
    public int m7614default() {
        return 74;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM4181const = k21.m4181const();
        rv1.m7165do(this.f6313do, ((sv1) cfor).f6313do, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return 233;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof sv1) {
            return k21.m4193import(this.f6313do, ((sv1) obj).f6313do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m7615extends() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m7616finally() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM4181const = k21.m4181const();
        rv1.m7160break(this.f6313do, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    public int hashCode() {
        return q3.t(this.f6313do, 0, 4) ^ 2330074;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM4181const = k21.m4181const();
        rv1.m7168for(this.f6313do, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f6313do;
        long[] jArr2 = ((sv1) cfor).f6313do;
        long[] jArr3 = ((sv1) cfor2).f6313do;
        long[] jArrM4205super = k21.m4205super();
        rv1.m7178while(jArr, jArrM4205super);
        rv1.m7163class(jArr2, jArr3, jArrM4205super);
        long[] jArrM4181const = k21.m4181const();
        rv1.m7164const(jArrM4205super, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM4181const = k21.m4181const();
        rv1.m7171import(this.f6313do, i, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m7617package() {
        return 233;
    }

    /* renamed from: private, reason: not valid java name */
    public int m7618private() {
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
        return (this.f6313do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return k21.i(this.f6313do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM4181const = k21.m4181const();
        rv1.m7174super(this.f6313do, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return k21.m4183default(this.f6313do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM4181const = k21.m4181const();
        rv1.m7176throw(this.f6313do, jArrM4181const);
        return new sv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws */
    public int mo653throws() {
        return rv1.m7172native(this.f6313do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
