package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class ov1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f4776do;

    public ov1() {
        this.f4776do = k21.m4181const();
    }

    public ov1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 193) {
            throw new IllegalArgumentException("x value invalid for SecT193FieldElement");
        }
        this.f4776do = nv1.m5387new(bigInteger);
    }

    public ov1(long[] jArr) {
        this.f4776do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return k21.m4188finally(this.f4776do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT193Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM4181const = k21.m4181const();
        nv1.m5376catch(this.f4776do, ((ov1) cfor).f4776do, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f4776do;
        long[] jArr2 = ((ov1) cfor).f4776do;
        long[] jArr3 = ((ov1) cfor2).f4776do;
        long[] jArr4 = ((ov1) cfor3).f4776do;
        long[] jArrM4205super = k21.m4205super();
        nv1.m5377class(jArr, jArr2, jArrM4205super);
        nv1.m5377class(jArr3, jArr4, jArrM4205super);
        long[] jArrM4181const = k21.m4181const();
        nv1.m5378const(jArrM4205super, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    /* renamed from: default, reason: not valid java name */
    public int m5803default() {
        return 15;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM4181const = k21.m4181const();
        nv1.m5379do(this.f4776do, ((ov1) cfor).f4776do, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return 193;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ov1) {
            return k21.m4193import(this.f4776do, ((ov1) obj).f4776do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m5804extends() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m5805finally() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM4181const = k21.m4181const();
        nv1.m5374break(this.f4776do, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    public int hashCode() {
        return q3.t(this.f4776do, 0, 4) ^ 1930015;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM4181const = k21.m4181const();
        nv1.m5382for(this.f4776do, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f4776do;
        long[] jArr2 = ((ov1) cfor).f4776do;
        long[] jArr3 = ((ov1) cfor2).f4776do;
        long[] jArrM4205super = k21.m4205super();
        nv1.m5392while(jArr, jArrM4205super);
        nv1.m5377class(jArr2, jArr3, jArrM4205super);
        long[] jArrM4181const = k21.m4181const();
        nv1.m5378const(jArrM4205super, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM4181const = k21.m4181const();
        nv1.m5385import(this.f4776do, i, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m5806package() {
        return 193;
    }

    /* renamed from: private, reason: not valid java name */
    public int m5807private() {
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
        return (this.f4776do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return k21.i(this.f4776do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM4181const = k21.m4181const();
        nv1.m5388super(this.f4776do, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return k21.m4183default(this.f4776do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM4181const = k21.m4181const();
        nv1.m5390throw(this.f4776do, jArrM4181const);
        return new ov1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws */
    public int mo653throws() {
        return nv1.m5386native(this.f4776do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
