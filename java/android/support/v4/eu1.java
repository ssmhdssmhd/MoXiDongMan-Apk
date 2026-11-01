package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class eu1 extends Cnew.Cfor {
    public eu1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public eu1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public eu1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        du1 du1Var = (du1) this.f32053if;
        du1 du1Var2 = (du1) this.f32052for;
        du1 du1Var3 = (du1) cnew.m35467import();
        du1 du1Var4 = (du1) cnew.mo375native();
        du1 du1Var5 = (du1) this.f32054new[0];
        du1 du1Var6 = (du1) cnew.mo2405public(0);
        int[] iArrM3211class = i21.m3211class();
        int[] iArrM3208break = i21.m3208break();
        int[] iArrM3208break2 = i21.m3208break();
        int[] iArrM3208break3 = i21.m3208break();
        boolean zMo341this = du1Var5.mo341this();
        if (zMo341this) {
            iArr = du1Var3.f1135do;
            iArr2 = du1Var4.f1135do;
        } else {
            cu1.m1019catch(du1Var5.f1135do, iArrM3208break2);
            cu1.m1018case(iArrM3208break2, du1Var3.f1135do, iArrM3208break);
            cu1.m1018case(iArrM3208break2, du1Var5.f1135do, iArrM3208break2);
            cu1.m1018case(iArrM3208break2, du1Var4.f1135do, iArrM3208break2);
            iArr = iArrM3208break;
            iArr2 = iArrM3208break2;
        }
        boolean zMo341this2 = du1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = du1Var.f1135do;
            iArr4 = du1Var2.f1135do;
        } else {
            cu1.m1019catch(du1Var6.f1135do, iArrM3208break3);
            cu1.m1018case(iArrM3208break3, du1Var.f1135do, iArrM3211class);
            cu1.m1018case(iArrM3208break3, du1Var6.f1135do, iArrM3208break3);
            cu1.m1018case(iArrM3208break3, du1Var2.f1135do, iArrM3208break3);
            iArr3 = iArrM3211class;
            iArr4 = iArrM3208break3;
        }
        int[] iArrM3208break4 = i21.m3208break();
        cu1.m1021const(iArr3, iArr, iArrM3208break4);
        cu1.m1021const(iArr4, iArr2, iArrM3208break);
        if (i21.m3241throws(iArrM3208break4)) {
            return i21.m3241throws(iArrM3208break) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        cu1.m1019catch(iArrM3208break4, iArrM3208break2);
        int[] iArrM3208break5 = i21.m3208break();
        cu1.m1018case(iArrM3208break2, iArrM3208break4, iArrM3208break5);
        cu1.m1018case(iArrM3208break2, iArr3, iArrM3208break2);
        cu1.m1026goto(iArrM3208break5, iArrM3208break5);
        i21.m3219finally(iArr4, iArrM3208break5, iArrM3211class);
        cu1.m1017break(i21.m3222if(iArrM3208break2, iArrM3208break2, iArrM3208break5), iArrM3208break5);
        du1 du1Var7 = new du1(iArrM3208break3);
        cu1.m1019catch(iArrM3208break, du1Var7.f1135do);
        int[] iArr5 = du1Var7.f1135do;
        cu1.m1021const(iArr5, iArrM3208break5, iArr5);
        du1 du1Var8 = new du1(iArrM3208break5);
        cu1.m1021const(iArrM3208break2, du1Var7.f1135do, du1Var8.f1135do);
        cu1.m1023else(du1Var8.f1135do, iArrM3208break, iArrM3211class);
        cu1.m1030this(iArrM3211class, du1Var8.f1135do);
        du1 du1Var9 = new du1(iArrM3208break4);
        if (!zMo341this) {
            int[] iArr6 = du1Var9.f1135do;
            cu1.m1018case(iArr6, du1Var5.f1135do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = du1Var9.f1135do;
            cu1.m1018case(iArr7, du1Var6.f1135do, iArr7);
        }
        return new eu1(cifM35477this, du1Var7, du1Var8, new Cfor[]{du1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new eu1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new eu1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        du1 du1Var = (du1) this.f32052for;
        if (du1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        du1 du1Var2 = (du1) this.f32053if;
        du1 du1Var3 = (du1) this.f32054new[0];
        int[] iArrM3208break = i21.m3208break();
        cu1.m1019catch(du1Var.f1135do, iArrM3208break);
        int[] iArrM3208break2 = i21.m3208break();
        cu1.m1019catch(iArrM3208break, iArrM3208break2);
        int[] iArrM3208break3 = i21.m3208break();
        cu1.m1019catch(du1Var2.f1135do, iArrM3208break3);
        cu1.m1017break(i21.m3222if(iArrM3208break3, iArrM3208break3, iArrM3208break3), iArrM3208break3);
        cu1.m1018case(iArrM3208break, du1Var2.f1135do, iArrM3208break);
        cu1.m1017break(q21.y(6, iArrM3208break, 2, 0), iArrM3208break);
        int[] iArrM3208break4 = i21.m3208break();
        cu1.m1017break(q21.B(6, iArrM3208break2, 3, 0, iArrM3208break4), iArrM3208break4);
        du1 du1Var4 = new du1(iArrM3208break2);
        cu1.m1019catch(iArrM3208break3, du1Var4.f1135do);
        int[] iArr = du1Var4.f1135do;
        cu1.m1021const(iArr, iArrM3208break, iArr);
        int[] iArr2 = du1Var4.f1135do;
        cu1.m1021const(iArr2, iArrM3208break, iArr2);
        du1 du1Var5 = new du1(iArrM3208break);
        cu1.m1021const(iArrM3208break, du1Var4.f1135do, du1Var5.f1135do);
        int[] iArr3 = du1Var5.f1135do;
        cu1.m1018case(iArr3, iArrM3208break3, iArr3);
        int[] iArr4 = du1Var5.f1135do;
        cu1.m1021const(iArr4, iArrM3208break4, iArr4);
        du1 du1Var6 = new du1(iArrM3208break3);
        cu1.m1029super(du1Var.f1135do, du1Var6.f1135do);
        if (!du1Var3.mo341this()) {
            int[] iArr5 = du1Var6.f1135do;
            cu1.m1018case(iArr5, du1Var3.f1135do, iArr5);
        }
        return new eu1(cifM35477this, du1Var4, du1Var5, new Cfor[]{du1Var6}, this.f32055try);
    }
}
