package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Ccatch;

/* loaded from: classes3.dex */
public class vu1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f7346if = Ccatch.f31848import;

    /* renamed from: do, reason: not valid java name */
    public int[] f7347do;

    public vu1() {
        this.f7347do = q21.m6351switch(12);
    }

    public vu1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f7346if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP384R1FieldElement");
        }
        this.f7347do = uu1.m8657try(bigInteger);
    }

    public vu1(int[] iArr) {
        this.f7347do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return q21.m6352synchronized(12, this.f7347do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP384R1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM6351switch = q21.m6351switch(12);
        uu1.m8648else(this.f7347do, ((vu1) cfor).f7347do, iArrM6351switch);
        return new vu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM6351switch = q21.m6351switch(12);
        uu1.m8647do(this.f7347do, ((vu1) cfor).f7347do, iArrM6351switch);
        return new vu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f7346if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof vu1) {
            return q21.m6321abstract(12, this.f7347do, ((vu1) obj).f7347do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM6351switch = q21.m6351switch(12);
        uu1.m8651goto(this.f7347do, iArrM6351switch);
        return new vu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM6351switch = q21.m6351switch(12);
        e01.m1572case(uu1.f6989if, this.f7347do, iArrM6351switch);
        return new vu1(iArrM6351switch);
    }

    public int hashCode() {
        return f7346if.hashCode() ^ q3.r(this.f7347do, 0, 12);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM6351switch = q21.m6351switch(12);
        uu1.m8650for(this.f7347do, iArrM6351switch);
        return new vu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM6351switch = q21.m6351switch(12);
        e01.m1572case(uu1.f6989if, ((vu1) cfor).f7347do, iArrM6351switch);
        uu1.m8648else(iArrM6351switch, this.f7347do, iArrM6351switch);
        return new vu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM6351switch = q21.m6351switch(12);
        uu1.m8649final(this.f7347do, ((vu1) cfor).f7347do, iArrM6351switch);
        return new vu1(iArrM6351switch);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return q21.m6349strictfp(this.f7347do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return q21.a0(12, this.f7347do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f7347do;
        if (q21.m6352synchronized(12, iArr) || q21.m6339instanceof(12, iArr)) {
            return this;
        }
        int[] iArrM6351switch = q21.m6351switch(12);
        int[] iArrM6351switch2 = q21.m6351switch(12);
        int[] iArrM6351switch3 = q21.m6351switch(12);
        int[] iArrM6351switch4 = q21.m6351switch(12);
        uu1.m8644catch(iArr, iArrM6351switch);
        uu1.m8648else(iArrM6351switch, iArr, iArrM6351switch);
        uu1.m8645class(iArrM6351switch, 2, iArrM6351switch2);
        uu1.m8648else(iArrM6351switch2, iArrM6351switch, iArrM6351switch2);
        uu1.m8644catch(iArrM6351switch2, iArrM6351switch2);
        uu1.m8648else(iArrM6351switch2, iArr, iArrM6351switch2);
        uu1.m8645class(iArrM6351switch2, 5, iArrM6351switch3);
        uu1.m8648else(iArrM6351switch3, iArrM6351switch2, iArrM6351switch3);
        uu1.m8645class(iArrM6351switch3, 5, iArrM6351switch4);
        uu1.m8648else(iArrM6351switch4, iArrM6351switch2, iArrM6351switch4);
        uu1.m8645class(iArrM6351switch4, 15, iArrM6351switch2);
        uu1.m8648else(iArrM6351switch2, iArrM6351switch4, iArrM6351switch2);
        uu1.m8645class(iArrM6351switch2, 2, iArrM6351switch3);
        uu1.m8648else(iArrM6351switch, iArrM6351switch3, iArrM6351switch);
        uu1.m8645class(iArrM6351switch3, 28, iArrM6351switch3);
        uu1.m8648else(iArrM6351switch2, iArrM6351switch3, iArrM6351switch2);
        uu1.m8645class(iArrM6351switch2, 60, iArrM6351switch3);
        uu1.m8648else(iArrM6351switch3, iArrM6351switch2, iArrM6351switch3);
        uu1.m8645class(iArrM6351switch3, 120, iArrM6351switch2);
        uu1.m8648else(iArrM6351switch2, iArrM6351switch3, iArrM6351switch2);
        uu1.m8645class(iArrM6351switch2, 15, iArrM6351switch2);
        uu1.m8648else(iArrM6351switch2, iArrM6351switch4, iArrM6351switch2);
        uu1.m8645class(iArrM6351switch2, 33, iArrM6351switch2);
        uu1.m8648else(iArrM6351switch2, iArrM6351switch, iArrM6351switch2);
        uu1.m8645class(iArrM6351switch2, 64, iArrM6351switch2);
        uu1.m8648else(iArrM6351switch2, iArr, iArrM6351switch2);
        uu1.m8645class(iArrM6351switch2, 30, iArrM6351switch);
        uu1.m8644catch(iArrM6351switch, iArrM6351switch2);
        if (q21.m6321abstract(12, iArr, iArrM6351switch2)) {
            return new vu1(iArrM6351switch);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return q21.m6339instanceof(12, this.f7347do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM6351switch = q21.m6351switch(12);
        uu1.m8644catch(this.f7347do, iArrM6351switch);
        return new vu1(iArrM6351switch);
    }
}
