package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class hw1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f2542do;

    public hw1() {
        this.f2542do = p21.m5843for();
    }

    public hw1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 571) {
            throw new IllegalArgumentException("x value invalid for SecT571FieldElement");
        }
        this.f2542do = gw1.m2800else(bigInteger);
    }

    public hw1(long[] jArr) {
        this.f2542do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return p21.m5844goto(this.f2542do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT571Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM5843for = p21.m5843for();
        gw1.m2798const(this.f2542do, ((hw1) cfor).f2542do, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f2542do;
        long[] jArr2 = ((hw1) cfor).f2542do;
        long[] jArr3 = ((hw1) cfor2).f2542do;
        long[] jArr4 = ((hw1) cfor3).f2542do;
        long[] jArrM5846new = p21.m5846new();
        gw1.m2801final(jArr, jArr2, jArrM5846new);
        gw1.m2801final(jArr3, jArr4, jArrM5846new);
        long[] jArrM5843for = p21.m5843for();
        gw1.m2805import(jArrM5846new, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    /* renamed from: default, reason: not valid java name */
    public int m3144default() {
        return 2;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM5843for = p21.m5843for();
        gw1.m2804if(this.f2542do, ((hw1) cfor).f2542do, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return 571;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof hw1) {
            return p21.m5848try(this.f2542do, ((hw1) obj).f2542do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m3145extends() {
        return 5;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m3146finally() {
        return 10;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM5843for = p21.m5843for();
        gw1.m2797class(this.f2542do, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    public int hashCode() {
        return q3.t(this.f2542do, 0, 9) ^ 5711052;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM5843for = p21.m5843for();
        gw1.m2795case(this.f2542do, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f2542do;
        long[] jArr2 = ((hw1) cfor).f2542do;
        long[] jArr3 = ((hw1) cfor2).f2542do;
        long[] jArrM5846new = p21.m5846new();
        gw1.m2810static(jArr, jArrM5846new);
        gw1.m2801final(jArr2, jArr3, jArrM5846new);
        long[] jArrM5843for = p21.m5843for();
        gw1.m2805import(jArrM5846new, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM5843for = p21.m5843for();
        gw1.m2812switch(this.f2542do, i, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m3147package() {
        return 571;
    }

    /* renamed from: private, reason: not valid java name */
    public int m3148private() {
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
        return (this.f2542do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return p21.m5847this(this.f2542do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM5843for = p21.m5843for();
        gw1.m2808public(this.f2542do, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return p21.m5842else(this.f2542do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM5843for = p21.m5843for();
        gw1.m2809return(this.f2542do, jArrM5843for);
        return new hw1(jArrM5843for);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws */
    public int mo653throws() {
        return gw1.m2815throws(this.f2542do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
