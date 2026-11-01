package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class yt1 extends Cnew.Cfor {
    public yt1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public yt1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public yt1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        xt1 xt1Var = (xt1) this.f32053if;
        xt1 xt1Var2 = (xt1) this.f32052for;
        xt1 xt1Var3 = (xt1) cnew.m35467import();
        xt1 xt1Var4 = (xt1) cnew.mo375native();
        xt1 xt1Var5 = (xt1) this.f32054new[0];
        xt1 xt1Var6 = (xt1) cnew.mo2405public(0);
        int[] iArrM2912this = h21.m2912this();
        int[] iArrM2896goto = h21.m2896goto();
        int[] iArrM2896goto2 = h21.m2896goto();
        int[] iArrM2896goto3 = h21.m2896goto();
        boolean zMo341this = xt1Var5.mo341this();
        if (zMo341this) {
            iArr = xt1Var3.f8022do;
            iArr2 = xt1Var4.f8022do;
        } else {
            wt1.m9271catch(xt1Var5.f8022do, iArrM2896goto2);
            wt1.m9270case(iArrM2896goto2, xt1Var3.f8022do, iArrM2896goto);
            wt1.m9270case(iArrM2896goto2, xt1Var5.f8022do, iArrM2896goto2);
            wt1.m9270case(iArrM2896goto2, xt1Var4.f8022do, iArrM2896goto2);
            iArr = iArrM2896goto;
            iArr2 = iArrM2896goto2;
        }
        boolean zMo341this2 = xt1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = xt1Var.f8022do;
            iArr4 = xt1Var2.f8022do;
        } else {
            wt1.m9271catch(xt1Var6.f8022do, iArrM2896goto3);
            wt1.m9270case(iArrM2896goto3, xt1Var.f8022do, iArrM2912this);
            wt1.m9270case(iArrM2896goto3, xt1Var6.f8022do, iArrM2896goto3);
            wt1.m9270case(iArrM2896goto3, xt1Var2.f8022do, iArrM2896goto3);
            iArr3 = iArrM2912this;
            iArr4 = iArrM2896goto3;
        }
        int[] iArrM2896goto4 = h21.m2896goto();
        wt1.m9273const(iArr3, iArr, iArrM2896goto4);
        wt1.m9273const(iArr4, iArr2, iArrM2896goto);
        if (h21.m2918while(iArrM2896goto4)) {
            return h21.m2918while(iArrM2896goto) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        wt1.m9271catch(iArrM2896goto4, iArrM2896goto2);
        int[] iArrM2896goto5 = h21.m2896goto();
        wt1.m9270case(iArrM2896goto2, iArrM2896goto4, iArrM2896goto5);
        wt1.m9270case(iArrM2896goto2, iArr3, iArrM2896goto2);
        wt1.m9278goto(iArrM2896goto5, iArrM2896goto5);
        h21.m2901native(iArr4, iArrM2896goto5, iArrM2912this);
        wt1.m9269break(h21.m2897if(iArrM2896goto2, iArrM2896goto2, iArrM2896goto5), iArrM2896goto5);
        xt1 xt1Var7 = new xt1(iArrM2896goto3);
        wt1.m9271catch(iArrM2896goto, xt1Var7.f8022do);
        int[] iArr5 = xt1Var7.f8022do;
        wt1.m9273const(iArr5, iArrM2896goto5, iArr5);
        xt1 xt1Var8 = new xt1(iArrM2896goto5);
        wt1.m9273const(iArrM2896goto2, xt1Var7.f8022do, xt1Var8.f8022do);
        wt1.m9275else(xt1Var8.f8022do, iArrM2896goto, iArrM2912this);
        wt1.m9282this(iArrM2912this, xt1Var8.f8022do);
        xt1 xt1Var9 = new xt1(iArrM2896goto4);
        if (!zMo341this) {
            int[] iArr6 = xt1Var9.f8022do;
            wt1.m9270case(iArr6, xt1Var5.f8022do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = xt1Var9.f8022do;
            wt1.m9270case(iArr7, xt1Var6.f8022do, iArr7);
        }
        return new yt1(cifM35477this, xt1Var7, xt1Var8, new Cfor[]{xt1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new yt1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new yt1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        xt1 xt1Var = (xt1) this.f32052for;
        if (xt1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        xt1 xt1Var2 = (xt1) this.f32053if;
        xt1 xt1Var3 = (xt1) this.f32054new[0];
        int[] iArrM2896goto = h21.m2896goto();
        int[] iArrM2896goto2 = h21.m2896goto();
        int[] iArrM2896goto3 = h21.m2896goto();
        wt1.m9271catch(xt1Var.f8022do, iArrM2896goto3);
        int[] iArrM2896goto4 = h21.m2896goto();
        wt1.m9271catch(iArrM2896goto3, iArrM2896goto4);
        boolean zMo341this = xt1Var3.mo341this();
        int[] iArr = xt1Var3.f8022do;
        if (!zMo341this) {
            wt1.m9271catch(iArr, iArrM2896goto2);
            iArr = iArrM2896goto2;
        }
        wt1.m9273const(xt1Var2.f8022do, iArr, iArrM2896goto);
        wt1.m9274do(xt1Var2.f8022do, iArr, iArrM2896goto2);
        wt1.m9270case(iArrM2896goto2, iArrM2896goto, iArrM2896goto2);
        wt1.m9269break(h21.m2897if(iArrM2896goto2, iArrM2896goto2, iArrM2896goto2), iArrM2896goto2);
        wt1.m9270case(iArrM2896goto3, xt1Var2.f8022do, iArrM2896goto3);
        wt1.m9269break(q21.y(5, iArrM2896goto3, 2, 0), iArrM2896goto3);
        wt1.m9269break(q21.B(5, iArrM2896goto4, 3, 0, iArrM2896goto), iArrM2896goto);
        xt1 xt1Var4 = new xt1(iArrM2896goto4);
        wt1.m9271catch(iArrM2896goto2, xt1Var4.f8022do);
        int[] iArr2 = xt1Var4.f8022do;
        wt1.m9273const(iArr2, iArrM2896goto3, iArr2);
        int[] iArr3 = xt1Var4.f8022do;
        wt1.m9273const(iArr3, iArrM2896goto3, iArr3);
        xt1 xt1Var5 = new xt1(iArrM2896goto3);
        wt1.m9273const(iArrM2896goto3, xt1Var4.f8022do, xt1Var5.f8022do);
        int[] iArr4 = xt1Var5.f8022do;
        wt1.m9270case(iArr4, iArrM2896goto2, iArr4);
        int[] iArr5 = xt1Var5.f8022do;
        wt1.m9273const(iArr5, iArrM2896goto, iArr5);
        xt1 xt1Var6 = new xt1(iArrM2896goto2);
        wt1.m9281super(xt1Var.f8022do, xt1Var6.f8022do);
        if (!zMo341this) {
            int[] iArr6 = xt1Var6.f8022do;
            wt1.m9270case(iArr6, xt1Var3.f8022do, iArr6);
        }
        return new yt1(cifM35477this, xt1Var4, xt1Var5, new Cfor[]{xt1Var6}, this.f32055try);
    }
}
