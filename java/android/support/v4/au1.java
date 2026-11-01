package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Cnew;

/* loaded from: classes3.dex */
public class au1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f246if = Cnew.f31925import;

    /* renamed from: do, reason: not valid java name */
    public int[] f247do;

    public au1() {
        this.f247do = h21.m2896goto();
    }

    public au1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f246if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R2FieldElement");
        }
        this.f247do = zt1.m10282new(bigInteger);
    }

    public au1(int[] iArr) {
        this.f247do = iArr;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break, reason: not valid java name */
    public boolean mo328break() {
        return h21.m2918while(this.f247do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case, reason: not valid java name */
    public String mo329case() {
        return "SecP160R2Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch, reason: not valid java name */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM2896goto = h21.m2896goto();
        zt1.m10272case(this.f247do, ((au1) cfor).f247do, iArrM2896goto);
        return new au1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do, reason: not valid java name */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM2896goto = h21.m2896goto();
        zt1.m10276do(this.f247do, ((au1) cfor).f247do, iArrM2896goto);
        return new au1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else, reason: not valid java name */
    public int mo332else() {
        return f246if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof au1) {
            return h21.m2885catch(this.f247do, ((au1) obj).f247do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final, reason: not valid java name */
    public Cfor mo333final() {
        int[] iArrM2896goto = h21.m2896goto();
        zt1.m10280goto(this.f247do, iArrM2896goto);
        return new au1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto, reason: not valid java name */
    public Cfor mo334goto() {
        int[] iArrM2896goto = h21.m2896goto();
        e01.m1572case(zt1.f8642do, this.f247do, iArrM2896goto);
        return new au1(iArrM2896goto);
    }

    public int hashCode() {
        return f246if.hashCode() ^ q3.r(this.f247do, 0, 5);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if, reason: not valid java name */
    public Cfor mo335if() {
        int[] iArrM2896goto = h21.m2896goto();
        zt1.m10279for(this.f247do, iArrM2896goto);
        return new au1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new, reason: not valid java name */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM2896goto = h21.m2896goto();
        e01.m1572case(zt1.f8642do, ((au1) cfor).f247do, iArrM2896goto);
        zt1.m10272case(iArrM2896goto, this.f247do, iArrM2896goto);
        return new au1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public, reason: not valid java name */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM2896goto = h21.m2896goto();
        zt1.m10275const(this.f247do, ((au1) cfor).f247do, iArrM2896goto);
        return new au1(iArrM2896goto);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return, reason: not valid java name */
    public boolean mo338return() {
        return h21.m2887const(this.f247do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static, reason: not valid java name */
    public BigInteger mo339static() {
        return h21.m2915transient(this.f247do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super, reason: not valid java name */
    public Cfor mo340super() {
        int[] iArr = this.f247do;
        if (h21.m2918while(iArr) || h21.m2913throw(iArr)) {
            return this;
        }
        int[] iArrM2896goto = h21.m2896goto();
        zt1.m10273catch(iArr, iArrM2896goto);
        zt1.m10272case(iArrM2896goto, iArr, iArrM2896goto);
        int[] iArrM2896goto2 = h21.m2896goto();
        zt1.m10273catch(iArrM2896goto, iArrM2896goto2);
        zt1.m10272case(iArrM2896goto2, iArr, iArrM2896goto2);
        int[] iArrM2896goto3 = h21.m2896goto();
        zt1.m10273catch(iArrM2896goto2, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArr, iArrM2896goto3);
        int[] iArrM2896goto4 = h21.m2896goto();
        zt1.m10274class(iArrM2896goto3, 3, iArrM2896goto4);
        zt1.m10272case(iArrM2896goto4, iArrM2896goto2, iArrM2896goto4);
        zt1.m10274class(iArrM2896goto4, 7, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArrM2896goto4, iArrM2896goto3);
        zt1.m10274class(iArrM2896goto3, 3, iArrM2896goto4);
        zt1.m10272case(iArrM2896goto4, iArrM2896goto2, iArrM2896goto4);
        int[] iArrM2896goto5 = h21.m2896goto();
        zt1.m10274class(iArrM2896goto4, 14, iArrM2896goto5);
        zt1.m10272case(iArrM2896goto5, iArrM2896goto3, iArrM2896goto5);
        zt1.m10274class(iArrM2896goto5, 31, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArrM2896goto5, iArrM2896goto3);
        zt1.m10274class(iArrM2896goto3, 62, iArrM2896goto5);
        zt1.m10272case(iArrM2896goto5, iArrM2896goto3, iArrM2896goto5);
        zt1.m10274class(iArrM2896goto5, 3, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArrM2896goto2, iArrM2896goto3);
        zt1.m10274class(iArrM2896goto3, 18, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArrM2896goto4, iArrM2896goto3);
        zt1.m10274class(iArrM2896goto3, 2, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArr, iArrM2896goto3);
        zt1.m10274class(iArrM2896goto3, 3, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArrM2896goto, iArrM2896goto3);
        zt1.m10274class(iArrM2896goto3, 6, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArrM2896goto2, iArrM2896goto3);
        zt1.m10274class(iArrM2896goto3, 2, iArrM2896goto3);
        zt1.m10272case(iArrM2896goto3, iArr, iArrM2896goto3);
        zt1.m10273catch(iArrM2896goto3, iArrM2896goto);
        if (h21.m2885catch(iArr, iArrM2896goto)) {
            return new au1(iArrM2896goto3);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this, reason: not valid java name */
    public boolean mo341this() {
        return h21.m2913throw(this.f247do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw, reason: not valid java name */
    public Cfor mo342throw() {
        int[] iArrM2896goto = h21.m2896goto();
        zt1.m10273catch(this.f247do, iArrM2896goto);
        return new au1(iArrM2896goto);
    }
}
