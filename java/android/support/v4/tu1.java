package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class tu1 extends Cnew.Cfor {
    public tu1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public tu1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public tu1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        su1 su1Var = (su1) this.f32053if;
        su1 su1Var2 = (su1) this.f32052for;
        su1 su1Var3 = (su1) cnew.m35467import();
        su1 su1Var4 = (su1) cnew.mo375native();
        su1 su1Var5 = (su1) this.f32054new[0];
        su1 su1Var6 = (su1) cnew.mo2405public(0);
        int[] iArrM4187final = k21.m4187final();
        int[] iArrM4180class = k21.m4180class();
        int[] iArrM4180class2 = k21.m4180class();
        int[] iArrM4180class3 = k21.m4180class();
        boolean zMo341this = su1Var5.mo341this();
        if (zMo341this) {
            iArr = su1Var3.f6309do;
            iArr2 = su1Var4.f6309do;
        } else {
            ru1.m7130class(su1Var5.f6309do, iArrM4180class2);
            ru1.m7133else(iArrM4180class2, su1Var3.f6309do, iArrM4180class);
            ru1.m7133else(iArrM4180class2, su1Var5.f6309do, iArrM4180class2);
            ru1.m7133else(iArrM4180class2, su1Var4.f6309do, iArrM4180class2);
            iArr = iArrM4180class;
            iArr2 = iArrM4180class2;
        }
        boolean zMo341this2 = su1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = su1Var.f6309do;
            iArr4 = su1Var2.f6309do;
        } else {
            ru1.m7130class(su1Var6.f6309do, iArrM4180class3);
            ru1.m7133else(iArrM4180class3, su1Var.f6309do, iArrM4187final);
            ru1.m7133else(iArrM4180class3, su1Var6.f6309do, iArrM4180class3);
            ru1.m7133else(iArrM4180class3, su1Var2.f6309do, iArrM4180class3);
            iArr3 = iArrM4187final;
            iArr4 = iArrM4180class3;
        }
        int[] iArrM4180class4 = k21.m4180class();
        ru1.m7139super(iArr3, iArr, iArrM4180class4);
        ru1.m7139super(iArr4, iArr2, iArrM4180class);
        if (k21.m4186extends(iArrM4180class4)) {
            return k21.m4186extends(iArrM4180class) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        ru1.m7130class(iArrM4180class4, iArrM4180class2);
        int[] iArrM4180class5 = k21.m4180class();
        ru1.m7133else(iArrM4180class2, iArrM4180class4, iArrM4180class5);
        ru1.m7133else(iArrM4180class2, iArr3, iArrM4180class2);
        ru1.m7140this(iArrM4180class5, iArrM4180class5);
        k21.m4199private(iArr4, iArrM4180class5, iArrM4187final);
        ru1.m7129catch(k21.m4197new(iArrM4180class2, iArrM4180class2, iArrM4180class5), iArrM4180class5);
        su1 su1Var7 = new su1(iArrM4180class3);
        ru1.m7130class(iArrM4180class, su1Var7.f6309do);
        int[] iArr5 = su1Var7.f6309do;
        ru1.m7139super(iArr5, iArrM4180class5, iArr5);
        su1 su1Var8 = new su1(iArrM4180class5);
        ru1.m7139super(iArrM4180class2, su1Var7.f6309do, su1Var8.f6309do);
        ru1.m7136goto(su1Var8.f6309do, iArrM4180class, iArrM4187final);
        ru1.m7127break(iArrM4187final, su1Var8.f6309do);
        su1 su1Var9 = new su1(iArrM4180class4);
        if (!zMo341this) {
            int[] iArr6 = su1Var9.f6309do;
            ru1.m7133else(iArr6, su1Var5.f6309do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = su1Var9.f6309do;
            ru1.m7133else(iArr7, su1Var6.f6309do, iArr7);
        }
        return new tu1(cifM35477this, su1Var7, su1Var8, new Cfor[]{su1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new tu1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new tu1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        su1 su1Var = (su1) this.f32052for;
        if (su1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        su1 su1Var2 = (su1) this.f32053if;
        su1 su1Var3 = (su1) this.f32054new[0];
        int[] iArrM4180class = k21.m4180class();
        int[] iArrM4180class2 = k21.m4180class();
        int[] iArrM4180class3 = k21.m4180class();
        ru1.m7130class(su1Var.f6309do, iArrM4180class3);
        int[] iArrM4180class4 = k21.m4180class();
        ru1.m7130class(iArrM4180class3, iArrM4180class4);
        boolean zMo341this = su1Var3.mo341this();
        int[] iArr = su1Var3.f6309do;
        if (!zMo341this) {
            ru1.m7130class(iArr, iArrM4180class2);
            iArr = iArrM4180class2;
        }
        ru1.m7139super(su1Var2.f6309do, iArr, iArrM4180class);
        ru1.m7132do(su1Var2.f6309do, iArr, iArrM4180class2);
        ru1.m7133else(iArrM4180class2, iArrM4180class, iArrM4180class2);
        ru1.m7129catch(k21.m4197new(iArrM4180class2, iArrM4180class2, iArrM4180class2), iArrM4180class2);
        ru1.m7133else(iArrM4180class3, su1Var2.f6309do, iArrM4180class3);
        ru1.m7129catch(q21.y(8, iArrM4180class3, 2, 0), iArrM4180class3);
        ru1.m7129catch(q21.B(8, iArrM4180class4, 3, 0, iArrM4180class), iArrM4180class);
        su1 su1Var4 = new su1(iArrM4180class4);
        ru1.m7130class(iArrM4180class2, su1Var4.f6309do);
        int[] iArr2 = su1Var4.f6309do;
        ru1.m7139super(iArr2, iArrM4180class3, iArr2);
        int[] iArr3 = su1Var4.f6309do;
        ru1.m7139super(iArr3, iArrM4180class3, iArr3);
        su1 su1Var5 = new su1(iArrM4180class3);
        ru1.m7139super(iArrM4180class3, su1Var4.f6309do, su1Var5.f6309do);
        int[] iArr4 = su1Var5.f6309do;
        ru1.m7133else(iArr4, iArrM4180class2, iArr4);
        int[] iArr5 = su1Var5.f6309do;
        ru1.m7139super(iArr5, iArrM4180class, iArr5);
        su1 su1Var6 = new su1(iArrM4180class2);
        ru1.m7143while(su1Var.f6309do, su1Var6.f6309do);
        if (!zMo341this) {
            int[] iArr6 = su1Var6.f6309do;
            ru1.m7133else(iArr6, su1Var3.f6309do, iArr6);
        }
        return new tu1(cifM35477this, su1Var4, su1Var5, new Cfor[]{su1Var6}, this.f32055try);
    }
}
