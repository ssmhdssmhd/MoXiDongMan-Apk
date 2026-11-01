package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class ku1 extends Cnew.Cfor {
    public ku1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public ku1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public ku1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        ju1 ju1Var = (ju1) this.f32053if;
        ju1 ju1Var2 = (ju1) this.f32052for;
        ju1 ju1Var3 = (ju1) cnew.m35467import();
        ju1 ju1Var4 = (ju1) cnew.mo375native();
        ju1 ju1Var5 = (ju1) this.f32054new[0];
        ju1 ju1Var6 = (ju1) cnew.mo2405public(0);
        int[] iArrM3671catch = j21.m3671catch();
        int[] iArrM3669break = j21.m3669break();
        int[] iArrM3669break2 = j21.m3669break();
        int[] iArrM3669break3 = j21.m3669break();
        boolean zMo341this = ju1Var5.mo341this();
        if (zMo341this) {
            iArr = ju1Var3.f3226do;
            iArr2 = ju1Var4.f3226do;
        } else {
            iu1.m3578catch(ju1Var5.f3226do, iArrM3669break2);
            iu1.m3577case(iArrM3669break2, ju1Var3.f3226do, iArrM3669break);
            iu1.m3577case(iArrM3669break2, ju1Var5.f3226do, iArrM3669break2);
            iu1.m3577case(iArrM3669break2, ju1Var4.f3226do, iArrM3669break2);
            iArr = iArrM3669break;
            iArr2 = iArrM3669break2;
        }
        boolean zMo341this2 = ju1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = ju1Var.f3226do;
            iArr4 = ju1Var2.f3226do;
        } else {
            iu1.m3578catch(ju1Var6.f3226do, iArrM3669break3);
            iu1.m3577case(iArrM3669break3, ju1Var.f3226do, iArrM3671catch);
            iu1.m3577case(iArrM3669break3, ju1Var6.f3226do, iArrM3669break3);
            iu1.m3577case(iArrM3669break3, ju1Var2.f3226do, iArrM3669break3);
            iArr3 = iArrM3671catch;
            iArr4 = iArrM3669break3;
        }
        int[] iArrM3669break4 = j21.m3669break();
        iu1.m3580const(iArr3, iArr, iArrM3669break4);
        iu1.m3580const(iArr4, iArr2, iArrM3669break);
        if (j21.m3688native(iArrM3669break4)) {
            return j21.m3688native(iArrM3669break) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        iu1.m3578catch(iArrM3669break4, iArrM3669break2);
        int[] iArrM3669break5 = j21.m3669break();
        iu1.m3577case(iArrM3669break2, iArrM3669break4, iArrM3669break5);
        iu1.m3577case(iArrM3669break2, iArr3, iArrM3669break2);
        iu1.m3585goto(iArrM3669break5, iArrM3669break5);
        j21.m3694return(iArr4, iArrM3669break5, iArrM3671catch);
        iu1.m3576break(j21.m3689new(iArrM3669break2, iArrM3669break2, iArrM3669break5), iArrM3669break5);
        ju1 ju1Var7 = new ju1(iArrM3669break3);
        iu1.m3578catch(iArrM3669break, ju1Var7.f3226do);
        int[] iArr5 = ju1Var7.f3226do;
        iu1.m3580const(iArr5, iArrM3669break5, iArr5);
        ju1 ju1Var8 = new ju1(iArrM3669break5);
        iu1.m3580const(iArrM3669break2, ju1Var7.f3226do, ju1Var8.f3226do);
        iu1.m3582else(ju1Var8.f3226do, iArrM3669break, iArrM3671catch);
        iu1.m3589this(iArrM3671catch, ju1Var8.f3226do);
        ju1 ju1Var9 = new ju1(iArrM3669break4);
        if (!zMo341this) {
            int[] iArr6 = ju1Var9.f3226do;
            iu1.m3577case(iArr6, ju1Var5.f3226do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = ju1Var9.f3226do;
            iu1.m3577case(iArr7, ju1Var6.f3226do, iArr7);
        }
        return new ku1(cifM35477this, ju1Var7, ju1Var8, new Cfor[]{ju1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new ku1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new ku1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        ju1 ju1Var = (ju1) this.f32052for;
        if (ju1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        ju1 ju1Var2 = (ju1) this.f32053if;
        ju1 ju1Var3 = (ju1) this.f32054new[0];
        int[] iArrM3669break = j21.m3669break();
        iu1.m3578catch(ju1Var.f3226do, iArrM3669break);
        int[] iArrM3669break2 = j21.m3669break();
        iu1.m3578catch(iArrM3669break, iArrM3669break2);
        int[] iArrM3669break3 = j21.m3669break();
        iu1.m3578catch(ju1Var2.f3226do, iArrM3669break3);
        iu1.m3576break(j21.m3689new(iArrM3669break3, iArrM3669break3, iArrM3669break3), iArrM3669break3);
        iu1.m3577case(iArrM3669break, ju1Var2.f3226do, iArrM3669break);
        iu1.m3576break(q21.y(7, iArrM3669break, 2, 0), iArrM3669break);
        int[] iArrM3669break4 = j21.m3669break();
        iu1.m3576break(q21.B(7, iArrM3669break2, 3, 0, iArrM3669break4), iArrM3669break4);
        ju1 ju1Var4 = new ju1(iArrM3669break2);
        iu1.m3578catch(iArrM3669break3, ju1Var4.f3226do);
        int[] iArr = ju1Var4.f3226do;
        iu1.m3580const(iArr, iArrM3669break, iArr);
        int[] iArr2 = ju1Var4.f3226do;
        iu1.m3580const(iArr2, iArrM3669break, iArr2);
        ju1 ju1Var5 = new ju1(iArrM3669break);
        iu1.m3580const(iArrM3669break, ju1Var4.f3226do, ju1Var5.f3226do);
        int[] iArr3 = ju1Var5.f3226do;
        iu1.m3577case(iArr3, iArrM3669break3, iArr3);
        int[] iArr4 = ju1Var5.f3226do;
        iu1.m3580const(iArr4, iArrM3669break4, iArr4);
        ju1 ju1Var6 = new ju1(iArrM3669break3);
        iu1.m3588super(ju1Var.f3226do, ju1Var6.f3226do);
        if (!ju1Var3.mo341this()) {
            int[] iArr5 = ju1Var6.f3226do;
            iu1.m3577case(iArr5, ju1Var3.f3226do, iArr5);
        }
        return new ku1(cifM35477this, ju1Var4, ju1Var5, new Cfor[]{ju1Var6}, this.f32055try);
    }
}
