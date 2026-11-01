package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class ft extends Cnew.Cfor {
    public ft(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public ft(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public ft(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
        super(cif, cfor, cfor2, cforArr);
        this.f32055try = z;
    }

    @Override // org.bouncycastle.math.ec.Cnew
    public Cnew a(Cnew cnew) {
        return this == cnew ? mo642implements() : m35479throws() ? cnew : cnew.m35479throws() ? mo378synchronized() : this.f32052for.mo328break() ? cnew : d(false).mo373do(cnew);
    }

    public et b(et etVar, int[] iArr) {
        et etVar2 = (et) m35477this().m35443throw();
        if (etVar.mo341this()) {
            return etVar2;
        }
        et etVar3 = new et();
        if (iArr == null) {
            iArr = etVar3.f1581do;
            dt.m1530const(etVar.f1581do, iArr);
        }
        dt.m1530const(iArr, etVar3.f1581do);
        int[] iArr2 = etVar3.f1581do;
        dt.m1535goto(iArr2, etVar2.f1581do, iArr2);
        return etVar3;
    }

    public et c() {
        Cfor[] cforArr = this.f32054new;
        et etVar = (et) cforArr[1];
        if (etVar != null) {
            return etVar;
        }
        et etVarB = b((et) cforArr[0], null);
        cforArr[1] = etVarB;
        return etVarB;
    }

    public ft d(boolean z) {
        et etVar = (et) this.f32053if;
        et etVar2 = (et) this.f32052for;
        et etVar3 = (et) this.f32054new[0];
        et etVarC = c();
        int[] iArrM4180class = k21.m4180class();
        dt.m1530const(etVar.f1581do, iArrM4180class);
        dt.m1529class(k21.m4197new(iArrM4180class, iArrM4180class, iArrM4180class) + k21.m4178case(etVarC.f1581do, iArrM4180class), iArrM4180class);
        int[] iArrM4180class2 = k21.m4180class();
        dt.m1538native(etVar2.f1581do, iArrM4180class2);
        int[] iArrM4180class3 = k21.m4180class();
        dt.m1535goto(iArrM4180class2, etVar2.f1581do, iArrM4180class3);
        int[] iArrM4180class4 = k21.m4180class();
        dt.m1535goto(iArrM4180class3, etVar.f1581do, iArrM4180class4);
        dt.m1538native(iArrM4180class4, iArrM4180class4);
        int[] iArrM4180class5 = k21.m4180class();
        dt.m1530const(iArrM4180class3, iArrM4180class5);
        dt.m1538native(iArrM4180class5, iArrM4180class5);
        et etVar4 = new et(iArrM4180class3);
        dt.m1530const(iArrM4180class, etVar4.f1581do);
        int[] iArr = etVar4.f1581do;
        dt.m1544while(iArr, iArrM4180class4, iArr);
        int[] iArr2 = etVar4.f1581do;
        dt.m1544while(iArr2, iArrM4180class4, iArr2);
        et etVar5 = new et(iArrM4180class4);
        dt.m1544while(iArrM4180class4, etVar4.f1581do, etVar5.f1581do);
        int[] iArr3 = etVar5.f1581do;
        dt.m1535goto(iArr3, iArrM4180class, iArr3);
        int[] iArr4 = etVar5.f1581do;
        dt.m1544while(iArr4, iArrM4180class5, iArr4);
        et etVar6 = new et(iArrM4180class2);
        if (!k21.m4210throws(etVar3.f1581do)) {
            int[] iArr5 = etVar6.f1581do;
            dt.m1535goto(iArr5, etVar3.f1581do, iArr5);
        }
        et etVar7 = null;
        if (z) {
            etVar7 = new et(iArrM4180class5);
            int[] iArr6 = etVar7.f1581do;
            dt.m1535goto(iArr6, etVarC.f1581do, iArr6);
            int[] iArr7 = etVar7.f1581do;
            dt.m1538native(iArr7, iArr7);
        }
        return new ft(m35477this(), etVar4, etVar5, new Cfor[]{etVar6, etVar7}, this.f32055try);
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
        et etVar = (et) this.f32053if;
        et etVar2 = (et) this.f32052for;
        et etVar3 = (et) this.f32054new[0];
        et etVar4 = (et) cnew.m35467import();
        et etVar5 = (et) cnew.mo375native();
        et etVar6 = (et) cnew.mo2405public(0);
        int[] iArrM4187final = k21.m4187final();
        int[] iArrM4180class = k21.m4180class();
        int[] iArrM4180class2 = k21.m4180class();
        int[] iArrM4180class3 = k21.m4180class();
        boolean zMo341this = etVar3.mo341this();
        if (zMo341this) {
            iArr = etVar4.f1581do;
            iArr2 = etVar5.f1581do;
        } else {
            dt.m1530const(etVar3.f1581do, iArrM4180class2);
            dt.m1535goto(iArrM4180class2, etVar4.f1581do, iArrM4180class);
            dt.m1535goto(iArrM4180class2, etVar3.f1581do, iArrM4180class2);
            dt.m1535goto(iArrM4180class2, etVar5.f1581do, iArrM4180class2);
            iArr = iArrM4180class;
            iArr2 = iArrM4180class2;
        }
        boolean zMo341this2 = etVar6.mo341this();
        if (zMo341this2) {
            iArr3 = etVar.f1581do;
            iArr4 = etVar2.f1581do;
        } else {
            dt.m1530const(etVar6.f1581do, iArrM4180class3);
            dt.m1535goto(iArrM4180class3, etVar.f1581do, iArrM4187final);
            dt.m1535goto(iArrM4180class3, etVar6.f1581do, iArrM4180class3);
            dt.m1535goto(iArrM4180class3, etVar2.f1581do, iArrM4180class3);
            iArr3 = iArrM4187final;
            iArr4 = iArrM4180class3;
        }
        int[] iArrM4180class4 = k21.m4180class();
        dt.m1544while(iArr3, iArr, iArrM4180class4);
        dt.m1544while(iArr4, iArr2, iArrM4180class);
        if (k21.m4186extends(iArrM4180class4)) {
            return k21.m4186extends(iArrM4180class) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        int[] iArrM4180class5 = k21.m4180class();
        dt.m1530const(iArrM4180class4, iArrM4180class5);
        int[] iArrM4180class6 = k21.m4180class();
        dt.m1535goto(iArrM4180class5, iArrM4180class4, iArrM4180class6);
        dt.m1535goto(iArrM4180class5, iArr3, iArrM4180class2);
        dt.m1526break(iArrM4180class6, iArrM4180class6);
        k21.m4199private(iArr4, iArrM4180class6, iArrM4187final);
        dt.m1529class(k21.m4197new(iArrM4180class2, iArrM4180class2, iArrM4180class6), iArrM4180class6);
        et etVar7 = new et(iArrM4180class3);
        dt.m1530const(iArrM4180class, etVar7.f1581do);
        int[] iArr5 = etVar7.f1581do;
        dt.m1544while(iArr5, iArrM4180class6, iArr5);
        et etVar8 = new et(iArrM4180class6);
        dt.m1544while(iArrM4180class2, etVar7.f1581do, etVar8.f1581do);
        dt.m1541this(etVar8.f1581do, iArrM4180class, iArrM4187final);
        dt.m1528catch(iArrM4187final, etVar8.f1581do);
        et etVar9 = new et(iArrM4180class4);
        if (!zMo341this) {
            int[] iArr6 = etVar9.f1581do;
            dt.m1535goto(iArr6, etVar3.f1581do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = etVar9.f1581do;
            dt.m1535goto(iArr7, etVar6.f1581do, iArr7);
        }
        if (!zMo341this || !zMo341this2) {
            iArrM4180class5 = null;
        }
        return new ft(cifM35477this, etVar7, etVar8, new Cfor[]{etVar9, b(etVar9, iArrM4180class5)}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : d(false).mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new ft(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new ft(m35477this(), this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: public, reason: not valid java name */
    public Cfor mo2405public(int i) {
        return i == 1 ? c() : super.mo2405public(i);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        return this.f32052for.mo328break() ? m35477this().mo35335throws() : d(true);
    }
}
