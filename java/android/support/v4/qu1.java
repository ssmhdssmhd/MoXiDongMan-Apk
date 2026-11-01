package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class qu1 extends Cnew.Cfor {
    public qu1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public qu1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public qu1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        pu1 pu1Var = (pu1) this.f32053if;
        pu1 pu1Var2 = (pu1) this.f32052for;
        pu1 pu1Var3 = (pu1) cnew.m35467import();
        pu1 pu1Var4 = (pu1) cnew.mo375native();
        pu1 pu1Var5 = (pu1) this.f32054new[0];
        pu1 pu1Var6 = (pu1) cnew.mo2405public(0);
        int[] iArrM4187final = k21.m4187final();
        int[] iArrM4180class = k21.m4180class();
        int[] iArrM4180class2 = k21.m4180class();
        int[] iArrM4180class3 = k21.m4180class();
        boolean zMo341this = pu1Var5.mo341this();
        if (zMo341this) {
            iArr = pu1Var3.f5196do;
            iArr2 = pu1Var4.f5196do;
        } else {
            ou1.m5766catch(pu1Var5.f5196do, iArrM4180class2);
            ou1.m5765case(iArrM4180class2, pu1Var3.f5196do, iArrM4180class);
            ou1.m5765case(iArrM4180class2, pu1Var5.f5196do, iArrM4180class2);
            ou1.m5765case(iArrM4180class2, pu1Var4.f5196do, iArrM4180class2);
            iArr = iArrM4180class;
            iArr2 = iArrM4180class2;
        }
        boolean zMo341this2 = pu1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = pu1Var.f5196do;
            iArr4 = pu1Var2.f5196do;
        } else {
            ou1.m5766catch(pu1Var6.f5196do, iArrM4180class3);
            ou1.m5765case(iArrM4180class3, pu1Var.f5196do, iArrM4187final);
            ou1.m5765case(iArrM4180class3, pu1Var6.f5196do, iArrM4180class3);
            ou1.m5765case(iArrM4180class3, pu1Var2.f5196do, iArrM4180class3);
            iArr3 = iArrM4187final;
            iArr4 = iArrM4180class3;
        }
        int[] iArrM4180class4 = k21.m4180class();
        ou1.m5768const(iArr3, iArr, iArrM4180class4);
        ou1.m5768const(iArr4, iArr2, iArrM4180class);
        if (k21.m4186extends(iArrM4180class4)) {
            return k21.m4186extends(iArrM4180class) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        ou1.m5766catch(iArrM4180class4, iArrM4180class2);
        int[] iArrM4180class5 = k21.m4180class();
        ou1.m5765case(iArrM4180class2, iArrM4180class4, iArrM4180class5);
        ou1.m5765case(iArrM4180class2, iArr3, iArrM4180class2);
        ou1.m5773goto(iArrM4180class5, iArrM4180class5);
        k21.m4199private(iArr4, iArrM4180class5, iArrM4187final);
        ou1.m5764break(k21.m4197new(iArrM4180class2, iArrM4180class2, iArrM4180class5), iArrM4180class5);
        pu1 pu1Var7 = new pu1(iArrM4180class3);
        ou1.m5766catch(iArrM4180class, pu1Var7.f5196do);
        int[] iArr5 = pu1Var7.f5196do;
        ou1.m5768const(iArr5, iArrM4180class5, iArr5);
        pu1 pu1Var8 = new pu1(iArrM4180class5);
        ou1.m5768const(iArrM4180class2, pu1Var7.f5196do, pu1Var8.f5196do);
        ou1.m5770else(pu1Var8.f5196do, iArrM4180class, iArrM4187final);
        ou1.m5777this(iArrM4187final, pu1Var8.f5196do);
        pu1 pu1Var9 = new pu1(iArrM4180class4);
        if (!zMo341this) {
            int[] iArr6 = pu1Var9.f5196do;
            ou1.m5765case(iArr6, pu1Var5.f5196do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = pu1Var9.f5196do;
            ou1.m5765case(iArr7, pu1Var6.f5196do, iArr7);
        }
        return new qu1(cifM35477this, pu1Var7, pu1Var8, new Cfor[]{pu1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new qu1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new qu1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        pu1 pu1Var = (pu1) this.f32052for;
        if (pu1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        pu1 pu1Var2 = (pu1) this.f32053if;
        pu1 pu1Var3 = (pu1) this.f32054new[0];
        int[] iArrM4180class = k21.m4180class();
        ou1.m5766catch(pu1Var.f5196do, iArrM4180class);
        int[] iArrM4180class2 = k21.m4180class();
        ou1.m5766catch(iArrM4180class, iArrM4180class2);
        int[] iArrM4180class3 = k21.m4180class();
        ou1.m5766catch(pu1Var2.f5196do, iArrM4180class3);
        ou1.m5764break(k21.m4197new(iArrM4180class3, iArrM4180class3, iArrM4180class3), iArrM4180class3);
        ou1.m5765case(iArrM4180class, pu1Var2.f5196do, iArrM4180class);
        ou1.m5764break(q21.y(8, iArrM4180class, 2, 0), iArrM4180class);
        int[] iArrM4180class4 = k21.m4180class();
        ou1.m5764break(q21.B(8, iArrM4180class2, 3, 0, iArrM4180class4), iArrM4180class4);
        pu1 pu1Var4 = new pu1(iArrM4180class2);
        ou1.m5766catch(iArrM4180class3, pu1Var4.f5196do);
        int[] iArr = pu1Var4.f5196do;
        ou1.m5768const(iArr, iArrM4180class, iArr);
        int[] iArr2 = pu1Var4.f5196do;
        ou1.m5768const(iArr2, iArrM4180class, iArr2);
        pu1 pu1Var5 = new pu1(iArrM4180class);
        ou1.m5768const(iArrM4180class, pu1Var4.f5196do, pu1Var5.f5196do);
        int[] iArr3 = pu1Var5.f5196do;
        ou1.m5765case(iArr3, iArrM4180class3, iArr3);
        int[] iArr4 = pu1Var5.f5196do;
        ou1.m5768const(iArr4, iArrM4180class4, iArr4);
        pu1 pu1Var6 = new pu1(iArrM4180class3);
        ou1.m5776super(pu1Var.f5196do, pu1Var6.f5196do);
        if (!pu1Var3.mo341this()) {
            int[] iArr5 = pu1Var6.f5196do;
            ou1.m5765case(iArr5, pu1Var3.f5196do, iArr5);
        }
        return new qu1(cifM35477this, pu1Var4, pu1Var5, new Cfor[]{pu1Var6}, this.f32055try);
    }
}
