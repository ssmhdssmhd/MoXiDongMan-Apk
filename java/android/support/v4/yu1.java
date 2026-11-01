package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Cclass;

/* loaded from: classes3.dex */
public class yu1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f8330if = Cclass.f31854import;

    /* renamed from: do, reason: not valid java name */
    public int[] f8331do;

    public yu1() {
        this.f8331do = q21.m6351switch(17);
    }

    public yu1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f8330if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP521R1FieldElement");
        }
        this.f8331do = xu1.m9577for(bigInteger);
    }

    public yu1(int[] iArr) {
        this.f8331do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return q21.m6352synchronized(17, this.f8331do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP521R1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM6351switch = q21.m6351switch(17);
        xu1.m9575else(this.f8331do, ((yu1) cfor).f8331do, iArrM6351switch);
        return new yu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM6351switch = q21.m6351switch(17);
        xu1.m9574do(this.f8331do, ((yu1) cfor).f8331do, iArrM6351switch);
        return new yu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f8330if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof yu1) {
            return q21.m6321abstract(17, this.f8331do, ((yu1) obj).f8331do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM6351switch = q21.m6351switch(17);
        xu1.m9578goto(this.f8331do, iArrM6351switch);
        return new yu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM6351switch = q21.m6351switch(17);
        e01.m1572case(xu1.f8026do, this.f8331do, iArrM6351switch);
        return new yu1(iArrM6351switch);
    }

    public int hashCode() {
        return f8330if.hashCode() ^ q3.r(this.f8331do, 0, 17);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM6351switch = q21.m6351switch(17);
        xu1.m9579if(this.f8331do, iArrM6351switch);
        return new yu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM6351switch = q21.m6351switch(17);
        e01.m1572case(xu1.f8026do, ((yu1) cfor).f8331do, iArrM6351switch);
        xu1.m9575else(iArrM6351switch, this.f8331do, iArrM6351switch);
        return new yu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM6351switch = q21.m6351switch(17);
        xu1.m9573const(this.f8331do, ((yu1) cfor).f8331do, iArrM6351switch);
        return new yu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return q21.m6349strictfp(this.f8331do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return q21.a0(17, this.f8331do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f8331do;
        if (q21.m6352synchronized(17, iArr) || q21.m6339instanceof(17, iArr)) {
            return this;
        }
        int[] iArrM6351switch = q21.m6351switch(17);
        int[] iArrM6351switch2 = q21.m6351switch(17);
        xu1.m9572class(iArr, 519, iArrM6351switch);
        xu1.m9571catch(iArrM6351switch, iArrM6351switch2);
        if (q21.m6321abstract(17, iArr, iArrM6351switch2)) {
            return new yu1(iArrM6351switch);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return q21.m6339instanceof(17, this.f8331do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM6351switch = q21.m6351switch(17);
        xu1.m9571catch(this.f8331do, iArrM6351switch);
        return new yu1(iArrM6351switch);
    }
}
