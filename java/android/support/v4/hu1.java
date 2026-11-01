package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class hu1 extends Cnew.Cfor {
    public hu1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public hu1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public hu1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        gu1 gu1Var = (gu1) this.f32053if;
        gu1 gu1Var2 = (gu1) this.f32052for;
        gu1 gu1Var3 = (gu1) cnew.m35467import();
        gu1 gu1Var4 = (gu1) cnew.mo375native();
        gu1 gu1Var5 = (gu1) this.f32054new[0];
        gu1 gu1Var6 = (gu1) cnew.mo2405public(0);
        int[] iArrM3211class = i21.m3211class();
        int[] iArrM3208break = i21.m3208break();
        int[] iArrM3208break2 = i21.m3208break();
        int[] iArrM3208break3 = i21.m3208break();
        boolean zMo341this = gu1Var5.mo341this();
        if (zMo341this) {
            iArr = gu1Var3.f2248do;
            iArr2 = gu1Var4.f2248do;
        } else {
            fu1.m2418class(gu1Var5.f2248do, iArrM3208break2);
            fu1.m2421else(iArrM3208break2, gu1Var3.f2248do, iArrM3208break);
            fu1.m2421else(iArrM3208break2, gu1Var5.f2248do, iArrM3208break2);
            fu1.m2421else(iArrM3208break2, gu1Var4.f2248do, iArrM3208break2);
            iArr = iArrM3208break;
            iArr2 = iArrM3208break2;
        }
        boolean zMo341this2 = gu1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = gu1Var.f2248do;
            iArr4 = gu1Var2.f2248do;
        } else {
            fu1.m2418class(gu1Var6.f2248do, iArrM3208break3);
            fu1.m2421else(iArrM3208break3, gu1Var.f2248do, iArrM3211class);
            fu1.m2421else(iArrM3208break3, gu1Var6.f2248do, iArrM3208break3);
            fu1.m2421else(iArrM3208break3, gu1Var2.f2248do, iArrM3208break3);
            iArr3 = iArrM3211class;
            iArr4 = iArrM3208break3;
        }
        int[] iArrM3208break4 = i21.m3208break();
        fu1.m2427super(iArr3, iArr, iArrM3208break4);
        fu1.m2427super(iArr4, iArr2, iArrM3208break);
        if (i21.m3241throws(iArrM3208break4)) {
            return i21.m3241throws(iArrM3208break) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        fu1.m2418class(iArrM3208break4, iArrM3208break2);
        int[] iArrM3208break5 = i21.m3208break();
        fu1.m2421else(iArrM3208break2, iArrM3208break4, iArrM3208break5);
        fu1.m2421else(iArrM3208break2, iArr3, iArrM3208break2);
        fu1.m2428this(iArrM3208break5, iArrM3208break5);
        i21.m3219finally(iArr4, iArrM3208break5, iArrM3211class);
        fu1.m2417catch(i21.m3222if(iArrM3208break2, iArrM3208break2, iArrM3208break5), iArrM3208break5);
        gu1 gu1Var7 = new gu1(iArrM3208break3);
        fu1.m2418class(iArrM3208break, gu1Var7.f2248do);
        int[] iArr5 = gu1Var7.f2248do;
        fu1.m2427super(iArr5, iArrM3208break5, iArr5);
        gu1 gu1Var8 = new gu1(iArrM3208break5);
        fu1.m2427super(iArrM3208break2, gu1Var7.f2248do, gu1Var8.f2248do);
        fu1.m2424goto(gu1Var8.f2248do, iArrM3208break, iArrM3211class);
        fu1.m2415break(iArrM3211class, gu1Var8.f2248do);
        gu1 gu1Var9 = new gu1(iArrM3208break4);
        if (!zMo341this) {
            int[] iArr6 = gu1Var9.f2248do;
            fu1.m2421else(iArr6, gu1Var5.f2248do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = gu1Var9.f2248do;
            fu1.m2421else(iArr7, gu1Var6.f2248do, iArr7);
        }
        return new hu1(cifM35477this, gu1Var7, gu1Var8, new Cfor[]{gu1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new hu1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new hu1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        gu1 gu1Var = (gu1) this.f32052for;
        if (gu1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        gu1 gu1Var2 = (gu1) this.f32053if;
        gu1 gu1Var3 = (gu1) this.f32054new[0];
        int[] iArrM3208break = i21.m3208break();
        int[] iArrM3208break2 = i21.m3208break();
        int[] iArrM3208break3 = i21.m3208break();
        fu1.m2418class(gu1Var.f2248do, iArrM3208break3);
        int[] iArrM3208break4 = i21.m3208break();
        fu1.m2418class(iArrM3208break3, iArrM3208break4);
        boolean zMo341this = gu1Var3.mo341this();
        int[] iArr = gu1Var3.f2248do;
        if (!zMo341this) {
            fu1.m2418class(iArr, iArrM3208break2);
            iArr = iArrM3208break2;
        }
        fu1.m2427super(gu1Var2.f2248do, iArr, iArrM3208break);
        fu1.m2420do(gu1Var2.f2248do, iArr, iArrM3208break2);
        fu1.m2421else(iArrM3208break2, iArrM3208break, iArrM3208break2);
        fu1.m2417catch(i21.m3222if(iArrM3208break2, iArrM3208break2, iArrM3208break2), iArrM3208break2);
        fu1.m2421else(iArrM3208break3, gu1Var2.f2248do, iArrM3208break3);
        fu1.m2417catch(q21.y(6, iArrM3208break3, 2, 0), iArrM3208break3);
        fu1.m2417catch(q21.B(6, iArrM3208break4, 3, 0, iArrM3208break), iArrM3208break);
        gu1 gu1Var4 = new gu1(iArrM3208break4);
        fu1.m2418class(iArrM3208break2, gu1Var4.f2248do);
        int[] iArr2 = gu1Var4.f2248do;
        fu1.m2427super(iArr2, iArrM3208break3, iArr2);
        int[] iArr3 = gu1Var4.f2248do;
        fu1.m2427super(iArr3, iArrM3208break3, iArr3);
        gu1 gu1Var5 = new gu1(iArrM3208break3);
        fu1.m2427super(iArrM3208break3, gu1Var4.f2248do, gu1Var5.f2248do);
        int[] iArr4 = gu1Var5.f2248do;
        fu1.m2421else(iArr4, iArrM3208break2, iArr4);
        int[] iArr5 = gu1Var5.f2248do;
        fu1.m2427super(iArr5, iArrM3208break, iArr5);
        gu1 gu1Var6 = new gu1(iArrM3208break2);
        fu1.m2431while(gu1Var.f2248do, gu1Var6.f2248do);
        if (!zMo341this) {
            int[] iArr6 = gu1Var6.f2248do;
            fu1.m2421else(iArr6, gu1Var3.f2248do, iArr6);
        }
        return new hu1(cifM35477this, gu1Var4, gu1Var5, new Cfor[]{gu1Var6}, this.f32055try);
    }
}
