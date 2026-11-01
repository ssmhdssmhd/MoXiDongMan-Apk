package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public class iw1 extends Cnew.Cif {
    public iw1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public iw1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public iw1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
        super(cif, cfor, cfor2, cforArr);
        this.f32055try = z;
    }

    @Override // org.bouncycastle.math.ec.Cnew
    public Cnew a(Cnew cnew) {
        if (m35479throws()) {
            return cnew;
        }
        if (cnew.m35479throws()) {
            return mo378synchronized();
        }
        Cif cifM35477this = m35477this();
        Cfor cfor = this.f32053if;
        if (cfor.mo328break()) {
            return cnew;
        }
        Cfor cforM35475super = cnew.m35475super();
        Cfor cforMo2405public = cnew.mo2405public(0);
        if (cforM35475super.mo328break() || !cforMo2405public.mo341this()) {
            return mo378synchronized().mo373do(cnew);
        }
        Cfor cfor2 = this.f32052for;
        Cfor cfor3 = this.f32054new[0];
        Cfor cforM35478throw = cnew.m35478throw();
        Cfor cforMo342throw = cfor.mo342throw();
        Cfor cforMo342throw2 = cfor2.mo342throw();
        Cfor cforMo342throw3 = cfor3.mo342throw();
        Cfor cforMo331do = cforMo342throw2.mo331do(cfor2.mo330catch(cfor3));
        Cfor cforMo335if = cforM35478throw.mo335if();
        Cfor cforMo645const = cforMo335if.mo330catch(cforMo342throw3).mo331do(cforMo342throw2).mo645const(cforMo331do, cforMo342throw, cforMo342throw3);
        Cfor cforMo330catch = cforM35475super.mo330catch(cforMo342throw3);
        Cfor cforMo342throw4 = cforMo330catch.mo331do(cforMo331do).mo342throw();
        if (cforMo342throw4.mo328break()) {
            return cforMo645const.mo328break() ? cnew.mo378synchronized() : cifM35477this.mo35335throws();
        }
        if (cforMo645const.mo328break()) {
            return new iw1(cifM35477this, cforMo645const, cifM35477this.m35432import(), this.f32055try);
        }
        Cfor cforMo330catch2 = cforMo645const.mo342throw().mo330catch(cforMo330catch);
        Cfor cforMo330catch3 = cforMo645const.mo330catch(cforMo342throw4).mo330catch(cforMo342throw3);
        return new iw1(cifM35477this, cforMo330catch2, cforMo645const.mo331do(cforMo342throw4).mo342throw().mo645const(cforMo331do, cforMo335if, cforMo330catch3), new Cfor[]{cforMo330catch3}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: do */
    public Cnew mo373do(Cnew cnew) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        hw1 hw1Var;
        hw1 hw1Var2;
        hw1 hw1Var3;
        if (m35479throws()) {
            return cnew;
        }
        if (cnew.m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        hw1 hw1Var4 = (hw1) this.f32053if;
        hw1 hw1Var5 = (hw1) cnew.m35475super();
        if (hw1Var4.mo328break()) {
            return hw1Var5.mo328break() ? cifM35477this.mo35335throws() : cnew.mo373do(this);
        }
        hw1 hw1Var6 = (hw1) this.f32052for;
        hw1 hw1Var7 = (hw1) this.f32054new[0];
        hw1 hw1Var8 = (hw1) cnew.m35478throw();
        hw1 hw1Var9 = (hw1) cnew.mo2405public(0);
        long[] jArrM5843for = p21.m5843for();
        long[] jArrM5843for2 = p21.m5843for();
        long[] jArrM5843for3 = p21.m5843for();
        long[] jArrM5843for4 = p21.m5843for();
        long[] jArrM2817while = hw1Var7.mo341this() ? null : gw1.m2817while(hw1Var7.f2542do);
        if (jArrM2817while == null) {
            jArr = hw1Var5.f2542do;
            jArr2 = hw1Var8.f2542do;
        } else {
            gw1.m2811super(hw1Var5.f2542do, jArrM2817while, jArrM5843for2);
            gw1.m2811super(hw1Var8.f2542do, jArrM2817while, jArrM5843for4);
            jArr = jArrM5843for2;
            jArr2 = jArrM5843for4;
        }
        long[] jArrM2817while2 = hw1Var9.mo341this() ? null : gw1.m2817while(hw1Var9.f2542do);
        long[] jArr4 = hw1Var4.f2542do;
        if (jArrM2817while2 == null) {
            jArr3 = hw1Var6.f2542do;
        } else {
            gw1.m2811super(jArr4, jArrM2817while2, jArrM5843for);
            gw1.m2811super(hw1Var6.f2542do, jArrM2817while2, jArrM5843for3);
            jArr4 = jArrM5843for;
            jArr3 = jArrM5843for3;
        }
        gw1.m2804if(jArr3, jArr2, jArrM5843for3);
        gw1.m2804if(jArr4, jArr, jArrM5843for4);
        if (p21.m5844goto(jArrM5843for4)) {
            return p21.m5844goto(jArrM5843for3) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        if (hw1Var5.mo328break()) {
            Cnew cnewM35454abstract = m35454abstract();
            hw1 hw1Var10 = (hw1) cnewM35454abstract.m35467import();
            Cfor cforMo375native = cnewM35454abstract.mo375native();
            Cfor cforMo336new = cforMo375native.mo331do(hw1Var8).mo336new(hw1Var10);
            hw1Var = (hw1) cforMo336new.mo342throw().mo331do(cforMo336new).mo331do(hw1Var10);
            if (hw1Var.mo328break()) {
                return new iw1(cifM35477this, hw1Var, cifM35477this.m35432import(), this.f32055try);
            }
            hw1 hw1Var11 = (hw1) cforMo336new.mo330catch(hw1Var10.mo331do(hw1Var)).mo331do(hw1Var).mo331do(cforMo375native).mo336new(hw1Var).mo331do(hw1Var);
            hw1Var3 = (hw1) cifM35477this.mo35333super(ECConstants.ONE);
            hw1Var2 = hw1Var11;
        } else {
            gw1.m2809return(jArrM5843for4, jArrM5843for4);
            long[] jArrM2817while3 = gw1.m2817while(jArrM5843for3);
            gw1.m2811super(jArr4, jArrM2817while3, jArrM5843for);
            gw1.m2811super(jArr, jArrM2817while3, jArrM5843for2);
            hw1 hw1Var12 = new hw1(jArrM5843for);
            gw1.m2798const(jArrM5843for, jArrM5843for2, hw1Var12.f2542do);
            if (hw1Var12.mo328break()) {
                return new iw1(cifM35477this, hw1Var12, cifM35477this.m35432import(), this.f32055try);
            }
            hw1 hw1Var13 = new hw1(jArrM5843for3);
            gw1.m2811super(jArrM5843for4, jArrM2817while3, hw1Var13.f2542do);
            if (jArrM2817while2 != null) {
                long[] jArr5 = hw1Var13.f2542do;
                gw1.m2811super(jArr5, jArrM2817while2, jArr5);
            }
            long[] jArrM5846new = p21.m5846new();
            gw1.m2804if(jArrM5843for2, jArrM5843for4, jArrM5843for4);
            gw1.m2810static(jArrM5843for4, jArrM5846new);
            gw1.m2804if(hw1Var6.f2542do, hw1Var7.f2542do, jArrM5843for4);
            gw1.m2801final(jArrM5843for4, hw1Var13.f2542do, jArrM5846new);
            hw1 hw1Var14 = new hw1(jArrM5843for4);
            gw1.m2805import(jArrM5846new, hw1Var14.f2542do);
            if (jArrM2817while != null) {
                long[] jArr6 = hw1Var13.f2542do;
                gw1.m2811super(jArr6, jArrM2817while, jArr6);
            }
            hw1Var = hw1Var12;
            hw1Var2 = hw1Var14;
            hw1Var3 = hw1Var13;
        }
        return new iw1(cifM35477this, hw1Var, hw1Var2, new Cfor[]{hw1Var3}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: goto */
    public boolean mo374goto() {
        Cfor cforM35475super = m35475super();
        return (cforM35475super.mo328break() || m35478throw().mo338return() == cforM35475super.mo338return()) ? false : true;
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: native */
    public Cfor mo375native() {
        Cfor cfor = this.f32053if;
        Cfor cfor2 = this.f32052for;
        if (m35479throws() || cfor.mo328break()) {
            return cfor2;
        }
        Cfor cforMo330catch = cfor2.mo331do(cfor).mo330catch(cfor);
        Cfor cfor3 = this.f32054new[0];
        return !cfor3.mo341this() ? cforMo330catch.mo336new(cfor3) : cforMo330catch;
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new iw1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        if (m35479throws()) {
            return this;
        }
        Cfor cfor = this.f32053if;
        if (cfor.mo328break()) {
            return this;
        }
        Cfor cfor2 = this.f32052for;
        Cfor cfor3 = this.f32054new[0];
        return new iw1(this.f32051do, cfor, cfor2.mo331do(cfor3), new Cfor[]{cfor3}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        Cfor cfor = this.f32053if;
        if (cfor.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        Cfor cfor2 = this.f32052for;
        Cfor cforMo342throw = this.f32054new[0];
        boolean zMo341this = cforMo342throw.mo341this();
        Cfor cforMo342throw2 = zMo341this ? cforMo342throw : cforMo342throw.mo342throw();
        Cfor cforMo331do = zMo341this ? cfor2.mo342throw().mo331do(cfor2) : cfor2.mo331do(cforMo342throw).mo330catch(cfor2);
        if (cforMo331do.mo328break()) {
            return new iw1(cifM35477this, cforMo331do, cifM35477this.m35432import(), this.f32055try);
        }
        Cfor cforMo342throw3 = cforMo331do.mo342throw();
        Cfor cforMo330catch = zMo341this ? cforMo331do : cforMo331do.mo330catch(cforMo342throw2);
        Cfor cforMo342throw4 = cfor2.mo331do(cfor).mo342throw();
        if (!zMo341this) {
            cforMo342throw = cforMo342throw2.mo342throw();
        }
        return new iw1(cifM35477this, cforMo342throw3, cforMo342throw4.mo331do(cforMo331do).mo331do(cforMo342throw2).mo330catch(cforMo342throw4).mo331do(cforMo342throw).mo331do(cforMo342throw3).mo331do(cforMo330catch), new Cfor[]{cforMo330catch}, this.f32055try);
    }
}
