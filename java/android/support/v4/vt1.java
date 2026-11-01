package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class vt1 extends Cnew.Cfor {
    public vt1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public vt1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public vt1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
        super(cif, cfor, cfor2, cforArr);
        this.f32055try = z;
    }

    @Override // org.bouncycastle.math.ec.Cnew
    public Cnew a(Cnew cnew) {
        return this == cnew ? mo642implements() : m35479throws() ? cnew : cnew.m35479throws() ? mo378synchronized() : this.f32052for.mo328break() ? cnew : mo378synchronized().mo373do(cnew);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: do */
    public Cnew mo373do(Cnew cnew) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (m35479throws()) {
            return cnew;
        }
        if (cnew.m35479throws()) {
            return this;
        }
        if (this == cnew) {
            return mo378synchronized();
        }
        Cif cifM35477this = m35477this();
        au1 au1Var = (au1) this.f32053if;
        au1 au1Var2 = (au1) this.f32052for;
        au1 au1Var3 = (au1) cnew.m35467import();
        au1 au1Var4 = (au1) cnew.mo375native();
        au1 au1Var5 = (au1) this.f32054new[0];
        au1 au1Var6 = (au1) cnew.mo2405public(0);
        int[] iArrM2912this = h21.m2912this();
        int[] iArrM2896goto = h21.m2896goto();
        int[] iArrM2896goto2 = h21.m2896goto();
        int[] iArrM2896goto3 = h21.m2896goto();
        boolean zMo341this = au1Var5.mo341this();
        if (zMo341this) {
            iArr = au1Var3.f247do;
            iArr2 = au1Var4.f247do;
        } else {
            zt1.m10273catch(au1Var5.f247do, iArrM2896goto2);
            zt1.m10272case(iArrM2896goto2, au1Var3.f247do, iArrM2896goto);
            zt1.m10272case(iArrM2896goto2, au1Var5.f247do, iArrM2896goto2);
            zt1.m10272case(iArrM2896goto2, au1Var4.f247do, iArrM2896goto2);
            iArr = iArrM2896goto;
            iArr2 = iArrM2896goto2;
        }
        boolean zMo341this2 = au1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = au1Var.f247do;
            iArr4 = au1Var2.f247do;
        } else {
            zt1.m10273catch(au1Var6.f247do, iArrM2896goto3);
            zt1.m10272case(iArrM2896goto3, au1Var.f247do, iArrM2912this);
            zt1.m10272case(iArrM2896goto3, au1Var6.f247do, iArrM2896goto3);
            zt1.m10272case(iArrM2896goto3, au1Var2.f247do, iArrM2896goto3);
            iArr3 = iArrM2912this;
            iArr4 = iArrM2896goto3;
        }
        int[] iArrM2896goto4 = h21.m2896goto();
        zt1.m10275const(iArr3, iArr, iArrM2896goto4);
        zt1.m10275const(iArr4, iArr2, iArrM2896goto);
        if (h21.m2918while(iArrM2896goto4)) {
            return h21.m2918while(iArrM2896goto) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        zt1.m10273catch(iArrM2896goto4, iArrM2896goto2);
        int[] iArrM2896goto5 = h21.m2896goto();
        zt1.m10272case(iArrM2896goto2, iArrM2896goto4, iArrM2896goto5);
        zt1.m10272case(iArrM2896goto2, iArr3, iArrM2896goto2);
        zt1.m10280goto(iArrM2896goto5, iArrM2896goto5);
        h21.m2901native(iArr4, iArrM2896goto5, iArrM2912this);
        zt1.m10271break(h21.m2897if(iArrM2896goto2, iArrM2896goto2, iArrM2896goto5), iArrM2896goto5);
        au1 au1Var7 = new au1(iArrM2896goto3);
        zt1.m10273catch(iArrM2896goto, au1Var7.f247do);
        int[] iArr5 = au1Var7.f247do;
        zt1.m10275const(iArr5, iArrM2896goto5, iArr5);
        au1 au1Var8 = new au1(iArrM2896goto5);
        zt1.m10275const(iArrM2896goto2, au1Var7.f247do, au1Var8.f247do);
        zt1.m10277else(au1Var8.f247do, iArrM2896goto, iArrM2912this);
        zt1.m10284this(iArrM2912this, au1Var8.f247do);
        au1 au1Var9 = new au1(iArrM2896goto4);
        if (!zMo341this) {
            int[] iArr6 = au1Var9.f247do;
            zt1.m10272case(iArr6, au1Var5.f247do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = au1Var9.f247do;
            zt1.m10272case(iArr7, au1Var6.f247do, iArr7);
        }
        return new vt1(cifM35477this, au1Var7, au1Var8, new Cfor[]{au1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new vt1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new vt1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        au1 au1Var = (au1) this.f32052for;
        if (au1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        au1 au1Var2 = (au1) this.f32053if;
        au1 au1Var3 = (au1) this.f32054new[0];
        int[] iArrM2896goto = h21.m2896goto();
        zt1.m10273catch(au1Var.f247do, iArrM2896goto);
        int[] iArrM2896goto2 = h21.m2896goto();
        zt1.m10273catch(iArrM2896goto, iArrM2896goto2);
        int[] iArrM2896goto3 = h21.m2896goto();
        zt1.m10273catch(au1Var2.f247do, iArrM2896goto3);
        zt1.m10271break(h21.m2897if(iArrM2896goto3, iArrM2896goto3, iArrM2896goto3), iArrM2896goto3);
        zt1.m10272case(iArrM2896goto, au1Var2.f247do, iArrM2896goto);
        zt1.m10271break(q21.y(5, iArrM2896goto, 2, 0), iArrM2896goto);
        int[] iArrM2896goto4 = h21.m2896goto();
        zt1.m10271break(q21.B(5, iArrM2896goto2, 3, 0, iArrM2896goto4), iArrM2896goto4);
        au1 au1Var4 = new au1(iArrM2896goto2);
        zt1.m10273catch(iArrM2896goto3, au1Var4.f247do);
        int[] iArr = au1Var4.f247do;
        zt1.m10275const(iArr, iArrM2896goto, iArr);
        int[] iArr2 = au1Var4.f247do;
        zt1.m10275const(iArr2, iArrM2896goto, iArr2);
        au1 au1Var5 = new au1(iArrM2896goto);
        zt1.m10275const(iArrM2896goto, au1Var4.f247do, au1Var5.f247do);
        int[] iArr3 = au1Var5.f247do;
        zt1.m10272case(iArr3, iArrM2896goto3, iArr3);
        int[] iArr4 = au1Var5.f247do;
        zt1.m10275const(iArr4, iArrM2896goto4, iArr4);
        au1 au1Var6 = new au1(iArrM2896goto3);
        zt1.m10283super(au1Var.f247do, au1Var6.f247do);
        if (!au1Var3.mo341this()) {
            int[] iArr5 = au1Var6.f247do;
            zt1.m10272case(iArr5, au1Var3.f247do, iArr5);
        }
        return new vt1(cifM35477this, au1Var4, au1Var5, new Cfor[]{au1Var6}, this.f32055try);
    }
}
