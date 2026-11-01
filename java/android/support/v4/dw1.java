package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class dw1 extends Cfor.Cdo {

    /* renamed from: do, reason: not valid java name */
    public long[] f1155do;

    public dw1() {
        this.f1155do = n21.m5073for();
    }

    public dw1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 409) {
            throw new IllegalArgumentException("x value invalid for SecT409FieldElement");
        }
        this.f1155do = cw1.m1054new(bigInteger);
    }

    public dw1(long[] jArr) {
        this.f1155do = jArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return n21.m5074goto(this.f1155do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecT409Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        long[] jArrM5073for = n21.m5073for();
        cw1.m1043catch(this.f1155do, ((dw1) cfor).f1155do, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo645const(cfor, cfor2, cfor3);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        long[] jArr = this.f1155do;
        long[] jArr2 = ((dw1) cfor).f1155do;
        long[] jArr3 = ((dw1) cfor2).f1155do;
        long[] jArr4 = ((dw1) cfor3).f1155do;
        long[] jArrM6355throws = q21.m6355throws(13);
        cw1.m1044class(jArr, jArr2, jArrM6355throws);
        cw1.m1044class(jArr3, jArr4, jArrM6355throws);
        long[] jArrM5073for = n21.m5073for();
        cw1.m1045const(jArrM6355throws, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    /* renamed from: default, reason: not valid java name */
    public int m1562default() {
        return 87;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        long[] jArrM5073for = n21.m5073for();
        cw1.m1046do(this.f1155do, ((dw1) cfor).f1155do, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return l80.f3561break;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof dw1) {
            return n21.m5078try(this.f1155do, ((dw1) obj).f1155do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m1563extends() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m1564finally() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        long[] jArrM5073for = n21.m5073for();
        cw1.m1041break(this.f1155do, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    public int hashCode() {
        return q3.t(this.f1155do, 0, 7) ^ 4090087;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        long[] jArrM5073for = n21.m5073for();
        cw1.m1049for(this.f1155do, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        long[] jArr = this.f1155do;
        long[] jArr2 = ((dw1) cfor).f1155do;
        long[] jArr3 = ((dw1) cfor2).f1155do;
        long[] jArrM6355throws = q21.m6355throws(13);
        cw1.m1059while(jArr, jArrM6355throws);
        cw1.m1044class(jArr2, jArr3, jArrM6355throws);
        long[] jArrM5073for = n21.m5073for();
        cw1.m1045const(jArrM6355throws, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: native */
    public Cfor mo650native(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrM5073for = n21.m5073for();
        cw1.m1052import(this.f1155do, i, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        return mo330catch(cfor.mo334goto());
    }

    /* renamed from: package, reason: not valid java name */
    public int m1565package() {
        return l80.f3561break;
    }

    /* renamed from: private, reason: not valid java name */
    public int m1566private() {
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
        return (this.f1155do[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return n21.m5077this(this.f1155do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        long[] jArrM5073for = n21.m5073for();
        cw1.m1055super(this.f1155do, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return n21.m5072else(this.f1155do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        long[] jArrM5073for = n21.m5073for();
        cw1.m1057throw(this.f1155do, jArrM5073for);
        return new dw1(jArrM5073for);
    }

    @Override // org.bouncycastle.math.ec.Cfor.Cdo
    /* renamed from: throws */
    public int mo653throws() {
        return cw1.m1053native(this.f1155do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo649import(cfor, cfor2);
    }
}
