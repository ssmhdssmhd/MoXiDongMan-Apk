package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class jq1 extends Cnew.Cfor {
    public jq1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public jq1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public jq1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        iq1 iq1Var = (iq1) this.f32053if;
        iq1 iq1Var2 = (iq1) this.f32052for;
        iq1 iq1Var3 = (iq1) cnew.m35467import();
        iq1 iq1Var4 = (iq1) cnew.mo375native();
        iq1 iq1Var5 = (iq1) this.f32054new[0];
        iq1 iq1Var6 = (iq1) cnew.mo2405public(0);
        int[] iArrM4187final = k21.m4187final();
        int[] iArrM4180class = k21.m4180class();
        int[] iArrM4180class2 = k21.m4180class();
        int[] iArrM4180class3 = k21.m4180class();
        boolean zMo341this = iq1Var5.mo341this();
        if (zMo341this) {
            iArr = iq1Var3.f2827do;
            iArr2 = iq1Var4.f2827do;
        } else {
            hq1.m3093class(iq1Var5.f2827do, iArrM4180class2);
            hq1.m3096else(iArrM4180class2, iq1Var3.f2827do, iArrM4180class);
            hq1.m3096else(iArrM4180class2, iq1Var5.f2827do, iArrM4180class2);
            hq1.m3096else(iArrM4180class2, iq1Var4.f2827do, iArrM4180class2);
            iArr = iArrM4180class;
            iArr2 = iArrM4180class2;
        }
        boolean zMo341this2 = iq1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = iq1Var.f2827do;
            iArr4 = iq1Var2.f2827do;
        } else {
            hq1.m3093class(iq1Var6.f2827do, iArrM4180class3);
            hq1.m3096else(iArrM4180class3, iq1Var.f2827do, iArrM4187final);
            hq1.m3096else(iArrM4180class3, iq1Var6.f2827do, iArrM4180class3);
            hq1.m3096else(iArrM4180class3, iq1Var2.f2827do, iArrM4180class3);
            iArr3 = iArrM4187final;
            iArr4 = iArrM4180class3;
        }
        int[] iArrM4180class4 = k21.m4180class();
        hq1.m3102super(iArr3, iArr, iArrM4180class4);
        hq1.m3102super(iArr4, iArr2, iArrM4180class);
        if (k21.m4186extends(iArrM4180class4)) {
            return k21.m4186extends(iArrM4180class) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        hq1.m3093class(iArrM4180class4, iArrM4180class2);
        int[] iArrM4180class5 = k21.m4180class();
        hq1.m3096else(iArrM4180class2, iArrM4180class4, iArrM4180class5);
        hq1.m3096else(iArrM4180class2, iArr3, iArrM4180class2);
        hq1.m3103this(iArrM4180class5, iArrM4180class5);
        k21.m4199private(iArr4, iArrM4180class5, iArrM4187final);
        hq1.m3092catch(k21.m4197new(iArrM4180class2, iArrM4180class2, iArrM4180class5), iArrM4180class5);
        iq1 iq1Var7 = new iq1(iArrM4180class3);
        hq1.m3093class(iArrM4180class, iq1Var7.f2827do);
        int[] iArr5 = iq1Var7.f2827do;
        hq1.m3102super(iArr5, iArrM4180class5, iArr5);
        iq1 iq1Var8 = new iq1(iArrM4180class5);
        hq1.m3102super(iArrM4180class2, iq1Var7.f2827do, iq1Var8.f2827do);
        hq1.m3099goto(iq1Var8.f2827do, iArrM4180class, iArrM4187final);
        hq1.m3090break(iArrM4187final, iq1Var8.f2827do);
        iq1 iq1Var9 = new iq1(iArrM4180class4);
        if (!zMo341this) {
            int[] iArr6 = iq1Var9.f2827do;
            hq1.m3096else(iArr6, iq1Var5.f2827do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = iq1Var9.f2827do;
            hq1.m3096else(iArr7, iq1Var6.f2827do, iArr7);
        }
        return new jq1(cifM35477this, iq1Var7, iq1Var8, new Cfor[]{iq1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new jq1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new jq1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        iq1 iq1Var = (iq1) this.f32052for;
        if (iq1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        iq1 iq1Var2 = (iq1) this.f32053if;
        iq1 iq1Var3 = (iq1) this.f32054new[0];
        int[] iArrM4180class = k21.m4180class();
        int[] iArrM4180class2 = k21.m4180class();
        int[] iArrM4180class3 = k21.m4180class();
        hq1.m3093class(iq1Var.f2827do, iArrM4180class3);
        int[] iArrM4180class4 = k21.m4180class();
        hq1.m3093class(iArrM4180class3, iArrM4180class4);
        boolean zMo341this = iq1Var3.mo341this();
        int[] iArr = iq1Var3.f2827do;
        if (!zMo341this) {
            hq1.m3093class(iArr, iArrM4180class2);
            iArr = iArrM4180class2;
        }
        hq1.m3102super(iq1Var2.f2827do, iArr, iArrM4180class);
        hq1.m3095do(iq1Var2.f2827do, iArr, iArrM4180class2);
        hq1.m3096else(iArrM4180class2, iArrM4180class, iArrM4180class2);
        hq1.m3092catch(k21.m4197new(iArrM4180class2, iArrM4180class2, iArrM4180class2), iArrM4180class2);
        hq1.m3096else(iArrM4180class3, iq1Var2.f2827do, iArrM4180class3);
        hq1.m3092catch(q21.y(8, iArrM4180class3, 2, 0), iArrM4180class3);
        hq1.m3092catch(q21.B(8, iArrM4180class4, 3, 0, iArrM4180class), iArrM4180class);
        iq1 iq1Var4 = new iq1(iArrM4180class4);
        hq1.m3093class(iArrM4180class2, iq1Var4.f2827do);
        int[] iArr2 = iq1Var4.f2827do;
        hq1.m3102super(iArr2, iArrM4180class3, iArr2);
        int[] iArr3 = iq1Var4.f2827do;
        hq1.m3102super(iArr3, iArrM4180class3, iArr3);
        iq1 iq1Var5 = new iq1(iArrM4180class3);
        hq1.m3102super(iArrM4180class3, iq1Var4.f2827do, iq1Var5.f2827do);
        int[] iArr4 = iq1Var5.f2827do;
        hq1.m3096else(iArr4, iArrM4180class2, iArr4);
        int[] iArr5 = iq1Var5.f2827do;
        hq1.m3102super(iArr5, iArrM4180class, iArr5);
        iq1 iq1Var6 = new iq1(iArrM4180class2);
        hq1.m3106while(iq1Var.f2827do, iq1Var6.f2827do);
        if (!zMo341this) {
            int[] iArr6 = iq1Var6.f2827do;
            hq1.m3096else(iArr6, iq1Var3.f2827do, iArr6);
        }
        return new jq1(cifM35477this, iq1Var4, iq1Var5, new Cfor[]{iq1Var6}, this.f32055try);
    }
}
