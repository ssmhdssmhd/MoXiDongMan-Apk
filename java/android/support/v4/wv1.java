package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class wv1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f7707do;

    public wv1() {
        this.f7707do = k21.m4181const();
    }

    public wv1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 239) {
            throw new IllegalArgumentException("x value invalid for SecT239FieldElement");
        }
        this.f7707do = vv1.m8981new(bigInteger);
    }

    public wv1(long[] jArr) {
        this.f7707do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return k21.m4188finally(this.f7707do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT239Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM4181const = k21.m4181const();
        vv1.m8970catch(this.f7707do, ((wv1) cfor).f7707do, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f7707do;
        long[] jArr2 = ((wv1) cfor).f7707do;
        long[] jArr3 = ((wv1) cfor2).f7707do;
        long[] jArr4 = ((wv1) cfor3).f7707do;
        long[] jArrM4205super = k21.m4205super();
        vv1.m8971class(jArr, jArr2, jArrM4205super);
        vv1.m8971class(jArr3, jArr4, jArrM4205super);
        long[] jArrM4181const = k21.m4181const();
        vv1.m8972const(jArrM4205super, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    /* renamed from: default, reason: not valid java name */
    public int m9290default() {
        return 158;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM4181const = k21.m4181const();
        vv1.m8973do(this.f7707do, ((wv1) cfor).f7707do, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return 239;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof wv1) {
            return k21.m4193import(this.f7707do, ((wv1) obj).f7707do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m9291extends() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m9292finally() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM4181const = k21.m4181const();
        vv1.m8968break(this.f7707do, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    public int hashCode() {
        return q3.t(this.f7707do, 0, 4) ^ 23900158;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM4181const = k21.m4181const();
        vv1.m8976for(this.f7707do, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f7707do;
        long[] jArr2 = ((wv1) cfor).f7707do;
        long[] jArr3 = ((wv1) cfor2).f7707do;
        long[] jArrM4205super = k21.m4205super();
        vv1.m8986while(jArr, jArrM4205super);
        vv1.m8971class(jArr2, jArr3, jArrM4205super);
        long[] jArrM4181const = k21.m4181const();
        vv1.m8972const(jArrM4205super, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM4181const = k21.m4181const();
        vv1.m8979import(this.f7707do, i, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m9293package() {
        return 239;
    }

    /* renamed from: private, reason: not valid java name */
    public int m9294private() {
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
        return (this.f7707do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return k21.i(this.f7707do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM4181const = k21.m4181const();
        vv1.m8982super(this.f7707do, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return k21.m4183default(this.f7707do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM4181const = k21.m4181const();
        vv1.m8984throw(this.f7707do, jArrM4181const);
        return new wv1(jArrM4181const);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws */
    public int mo653throws() {
        return vv1.m8980native(this.f7707do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
