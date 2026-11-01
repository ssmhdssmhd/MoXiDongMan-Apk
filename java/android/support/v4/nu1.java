package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class nu1 extends Cnew.Cfor {
    public nu1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public nu1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public nu1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        mu1 mu1Var = (mu1) this.f32053if;
        mu1 mu1Var2 = (mu1) this.f32052for;
        mu1 mu1Var3 = (mu1) cnew.m35467import();
        mu1 mu1Var4 = (mu1) cnew.mo375native();
        mu1 mu1Var5 = (mu1) this.f32054new[0];
        mu1 mu1Var6 = (mu1) cnew.mo2405public(0);
        int[] iArrM3671catch = j21.m3671catch();
        int[] iArrM3669break = j21.m3669break();
        int[] iArrM3669break2 = j21.m3669break();
        int[] iArrM3669break3 = j21.m3669break();
        boolean zMo341this = mu1Var5.mo341this();
        if (zMo341this) {
            iArr = mu1Var3.f4035do;
            iArr2 = mu1Var4.f4035do;
        } else {
            lu1.m4777class(mu1Var5.f4035do, iArrM3669break2);
            lu1.m4780else(iArrM3669break2, mu1Var3.f4035do, iArrM3669break);
            lu1.m4780else(iArrM3669break2, mu1Var5.f4035do, iArrM3669break2);
            lu1.m4780else(iArrM3669break2, mu1Var4.f4035do, iArrM3669break2);
            iArr = iArrM3669break;
            iArr2 = iArrM3669break2;
        }
        boolean zMo341this2 = mu1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = mu1Var.f4035do;
            iArr4 = mu1Var2.f4035do;
        } else {
            lu1.m4777class(mu1Var6.f4035do, iArrM3669break3);
            lu1.m4780else(iArrM3669break3, mu1Var.f4035do, iArrM3671catch);
            lu1.m4780else(iArrM3669break3, mu1Var6.f4035do, iArrM3669break3);
            lu1.m4780else(iArrM3669break3, mu1Var2.f4035do, iArrM3669break3);
            iArr3 = iArrM3671catch;
            iArr4 = iArrM3669break3;
        }
        int[] iArrM3669break4 = j21.m3669break();
        lu1.m4786super(iArr3, iArr, iArrM3669break4);
        lu1.m4786super(iArr4, iArr2, iArrM3669break);
        if (j21.m3688native(iArrM3669break4)) {
            return j21.m3688native(iArrM3669break) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        lu1.m4777class(iArrM3669break4, iArrM3669break2);
        int[] iArrM3669break5 = j21.m3669break();
        lu1.m4780else(iArrM3669break2, iArrM3669break4, iArrM3669break5);
        lu1.m4780else(iArrM3669break2, iArr3, iArrM3669break2);
        lu1.m4787this(iArrM3669break5, iArrM3669break5);
        j21.m3694return(iArr4, iArrM3669break5, iArrM3671catch);
        lu1.m4776catch(j21.m3689new(iArrM3669break2, iArrM3669break2, iArrM3669break5), iArrM3669break5);
        mu1 mu1Var7 = new mu1(iArrM3669break3);
        lu1.m4777class(iArrM3669break, mu1Var7.f4035do);
        int[] iArr5 = mu1Var7.f4035do;
        lu1.m4786super(iArr5, iArrM3669break5, iArr5);
        mu1 mu1Var8 = new mu1(iArrM3669break5);
        lu1.m4786super(iArrM3669break2, mu1Var7.f4035do, mu1Var8.f4035do);
        lu1.m4783goto(mu1Var8.f4035do, iArrM3669break, iArrM3671catch);
        lu1.m4774break(iArrM3671catch, mu1Var8.f4035do);
        mu1 mu1Var9 = new mu1(iArrM3669break4);
        if (!zMo341this) {
            int[] iArr6 = mu1Var9.f4035do;
            lu1.m4780else(iArr6, mu1Var5.f4035do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = mu1Var9.f4035do;
            lu1.m4780else(iArr7, mu1Var6.f4035do, iArr7);
        }
        return new nu1(cifM35477this, mu1Var7, mu1Var8, new Cfor[]{mu1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new nu1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new nu1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        mu1 mu1Var = (mu1) this.f32052for;
        if (mu1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        mu1 mu1Var2 = (mu1) this.f32053if;
        mu1 mu1Var3 = (mu1) this.f32054new[0];
        int[] iArrM3669break = j21.m3669break();
        int[] iArrM3669break2 = j21.m3669break();
        int[] iArrM3669break3 = j21.m3669break();
        lu1.m4777class(mu1Var.f4035do, iArrM3669break3);
        int[] iArrM3669break4 = j21.m3669break();
        lu1.m4777class(iArrM3669break3, iArrM3669break4);
        boolean zMo341this = mu1Var3.mo341this();
        int[] iArr = mu1Var3.f4035do;
        if (!zMo341this) {
            lu1.m4777class(iArr, iArrM3669break2);
            iArr = iArrM3669break2;
        }
        lu1.m4786super(mu1Var2.f4035do, iArr, iArrM3669break);
        lu1.m4779do(mu1Var2.f4035do, iArr, iArrM3669break2);
        lu1.m4780else(iArrM3669break2, iArrM3669break, iArrM3669break2);
        lu1.m4776catch(j21.m3689new(iArrM3669break2, iArrM3669break2, iArrM3669break2), iArrM3669break2);
        lu1.m4780else(iArrM3669break3, mu1Var2.f4035do, iArrM3669break3);
        lu1.m4776catch(q21.y(7, iArrM3669break3, 2, 0), iArrM3669break3);
        lu1.m4776catch(q21.B(7, iArrM3669break4, 3, 0, iArrM3669break), iArrM3669break);
        mu1 mu1Var4 = new mu1(iArrM3669break4);
        lu1.m4777class(iArrM3669break2, mu1Var4.f4035do);
        int[] iArr2 = mu1Var4.f4035do;
        lu1.m4786super(iArr2, iArrM3669break3, iArr2);
        int[] iArr3 = mu1Var4.f4035do;
        lu1.m4786super(iArr3, iArrM3669break3, iArr3);
        mu1 mu1Var5 = new mu1(iArrM3669break3);
        lu1.m4786super(iArrM3669break3, mu1Var4.f4035do, mu1Var5.f4035do);
        int[] iArr4 = mu1Var5.f4035do;
        lu1.m4780else(iArr4, iArrM3669break2, iArr4);
        int[] iArr5 = mu1Var5.f4035do;
        lu1.m4786super(iArr5, iArrM3669break, iArr5);
        mu1 mu1Var6 = new mu1(iArrM3669break2);
        lu1.m4790while(mu1Var.f4035do, mu1Var6.f4035do);
        if (!zMo341this) {
            int[] iArr6 = mu1Var6.f4035do;
            lu1.m4780else(iArr6, mu1Var3.f4035do, iArr6);
        }
        return new nu1(cifM35477this, mu1Var4, mu1Var5, new Cfor[]{mu1Var6}, this.f32055try);
    }
}
