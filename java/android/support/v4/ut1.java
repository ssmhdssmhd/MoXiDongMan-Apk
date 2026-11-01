package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class ut1 extends Cnew.Cfor {
    public ut1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public ut1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public ut1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        tt1 tt1Var = (tt1) this.f32053if;
        tt1 tt1Var2 = (tt1) this.f32052for;
        tt1 tt1Var3 = (tt1) cnew.m35467import();
        tt1 tt1Var4 = (tt1) cnew.mo375native();
        tt1 tt1Var5 = (tt1) this.f32054new[0];
        tt1 tt1Var6 = (tt1) cnew.mo2405public(0);
        int[] iArrM2517class = g21.m2517class();
        int[] iArrM2514break = g21.m2514break();
        int[] iArrM2514break2 = g21.m2514break();
        int[] iArrM2514break3 = g21.m2514break();
        boolean zMo341this = tt1Var5.mo341this();
        if (zMo341this) {
            iArr = tt1Var3.f6694do;
            iArr2 = tt1Var4.f6694do;
        } else {
            st1.m7583class(tt1Var5.f6694do, iArrM2514break2);
            st1.m7586else(iArrM2514break2, tt1Var3.f6694do, iArrM2514break);
            st1.m7586else(iArrM2514break2, tt1Var5.f6694do, iArrM2514break2);
            st1.m7586else(iArrM2514break2, tt1Var4.f6694do, iArrM2514break2);
            iArr = iArrM2514break;
            iArr2 = iArrM2514break2;
        }
        boolean zMo341this2 = tt1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = tt1Var.f6694do;
            iArr4 = tt1Var2.f6694do;
        } else {
            st1.m7583class(tt1Var6.f6694do, iArrM2514break3);
            st1.m7586else(iArrM2514break3, tt1Var.f6694do, iArrM2517class);
            st1.m7586else(iArrM2514break3, tt1Var6.f6694do, iArrM2514break3);
            st1.m7586else(iArrM2514break3, tt1Var2.f6694do, iArrM2514break3);
            iArr3 = iArrM2517class;
            iArr4 = iArrM2514break3;
        }
        int[] iArrM2514break4 = g21.m2514break();
        st1.m7592super(iArr3, iArr, iArrM2514break4);
        st1.m7592super(iArr4, iArr2, iArrM2514break);
        if (g21.m2547throws(iArrM2514break4)) {
            return g21.m2547throws(iArrM2514break) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        st1.m7583class(iArrM2514break4, iArrM2514break2);
        int[] iArrM2514break5 = g21.m2514break();
        st1.m7586else(iArrM2514break2, iArrM2514break4, iArrM2514break5);
        st1.m7586else(iArrM2514break2, iArr3, iArrM2514break2);
        st1.m7593this(iArrM2514break5, iArrM2514break5);
        g21.m2525finally(iArr4, iArrM2514break5, iArrM2517class);
        st1.m7582catch(g21.m2528if(iArrM2514break2, iArrM2514break2, iArrM2514break5), iArrM2514break5);
        tt1 tt1Var7 = new tt1(iArrM2514break3);
        st1.m7583class(iArrM2514break, tt1Var7.f6694do);
        int[] iArr5 = tt1Var7.f6694do;
        st1.m7592super(iArr5, iArrM2514break5, iArr5);
        tt1 tt1Var8 = new tt1(iArrM2514break5);
        st1.m7592super(iArrM2514break2, tt1Var7.f6694do, tt1Var8.f6694do);
        st1.m7589goto(tt1Var8.f6694do, iArrM2514break, iArrM2517class);
        st1.m7580break(iArrM2517class, tt1Var8.f6694do);
        tt1 tt1Var9 = new tt1(iArrM2514break4);
        if (!zMo341this) {
            int[] iArr6 = tt1Var9.f6694do;
            st1.m7586else(iArr6, tt1Var5.f6694do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = tt1Var9.f6694do;
            st1.m7586else(iArr7, tt1Var6.f6694do, iArr7);
        }
        return new ut1(cifM35477this, tt1Var7, tt1Var8, new Cfor[]{tt1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new ut1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new ut1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        tt1 tt1Var = (tt1) this.f32052for;
        if (tt1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        tt1 tt1Var2 = (tt1) this.f32053if;
        tt1 tt1Var3 = (tt1) this.f32054new[0];
        int[] iArrM2514break = g21.m2514break();
        int[] iArrM2514break2 = g21.m2514break();
        int[] iArrM2514break3 = g21.m2514break();
        st1.m7583class(tt1Var.f6694do, iArrM2514break3);
        int[] iArrM2514break4 = g21.m2514break();
        st1.m7583class(iArrM2514break3, iArrM2514break4);
        boolean zMo341this = tt1Var3.mo341this();
        int[] iArr = tt1Var3.f6694do;
        if (!zMo341this) {
            st1.m7583class(iArr, iArrM2514break2);
            iArr = iArrM2514break2;
        }
        st1.m7592super(tt1Var2.f6694do, iArr, iArrM2514break);
        st1.m7585do(tt1Var2.f6694do, iArr, iArrM2514break2);
        st1.m7586else(iArrM2514break2, iArrM2514break, iArrM2514break2);
        st1.m7582catch(g21.m2528if(iArrM2514break2, iArrM2514break2, iArrM2514break2), iArrM2514break2);
        st1.m7586else(iArrM2514break3, tt1Var2.f6694do, iArrM2514break3);
        st1.m7582catch(q21.y(4, iArrM2514break3, 2, 0), iArrM2514break3);
        st1.m7582catch(q21.B(4, iArrM2514break4, 3, 0, iArrM2514break), iArrM2514break);
        tt1 tt1Var4 = new tt1(iArrM2514break4);
        st1.m7583class(iArrM2514break2, tt1Var4.f6694do);
        int[] iArr2 = tt1Var4.f6694do;
        st1.m7592super(iArr2, iArrM2514break3, iArr2);
        int[] iArr3 = tt1Var4.f6694do;
        st1.m7592super(iArr3, iArrM2514break3, iArr3);
        tt1 tt1Var5 = new tt1(iArrM2514break3);
        st1.m7592super(iArrM2514break3, tt1Var4.f6694do, tt1Var5.f6694do);
        int[] iArr4 = tt1Var5.f6694do;
        st1.m7586else(iArr4, iArrM2514break2, iArr4);
        int[] iArr5 = tt1Var5.f6694do;
        st1.m7592super(iArr5, iArrM2514break, iArr5);
        tt1 tt1Var6 = new tt1(iArrM2514break2);
        st1.m7596while(tt1Var.f6694do, tt1Var6.f6694do);
        if (!zMo341this) {
            int[] iArr6 = tt1Var6.f6694do;
            st1.m7586else(iArr6, tt1Var3.f6694do, iArr6);
        }
        return new ut1(cifM35477this, tt1Var4, tt1Var5, new Cfor[]{tt1Var6}, this.f32055try);
    }
}
