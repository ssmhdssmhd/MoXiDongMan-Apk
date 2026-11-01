package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public class fw1 extends Cnew.Cif {
    public fw1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public fw1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public fw1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
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
        Cfor cforMo331do = cforMo342throw3.mo331do(cforMo342throw2).mo331do(cfor2.mo330catch(cfor3));
        Cfor cforMo645const = cforM35478throw.mo330catch(cforMo342throw3).mo331do(cforMo342throw2).mo645const(cforMo331do, cforMo342throw, cforMo342throw3);
        Cfor cforMo330catch = cforM35475super.mo330catch(cforMo342throw3);
        Cfor cforMo342throw4 = cforMo330catch.mo331do(cforMo331do).mo342throw();
        if (cforMo342throw4.mo328break()) {
            return cforMo645const.mo328break() ? cnew.mo378synchronized() : cifM35477this.mo35335throws();
        }
        if (cforMo645const.mo328break()) {
            return new fw1(cifM35477this, cforMo645const, cifM35477this.m35432import().mo340super(), this.f32055try);
        }
        Cfor cforMo330catch2 = cforMo645const.mo342throw().mo330catch(cforMo330catch);
        Cfor cforMo330catch3 = cforMo645const.mo330catch(cforMo342throw4).mo330catch(cforMo342throw3);
        return new fw1(cifM35477this, cforMo330catch2, cforMo645const.mo331do(cforMo342throw4).mo342throw().mo645const(cforMo331do, cforM35478throw.mo335if(), cforMo330catch3), new Cfor[]{cforMo330catch3}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: do */
    public Cnew mo373do(Cnew cnew) {
        Cfor cforMo330catch;
        Cfor cforMo330catch2;
        Cfor cforMo330catch3;
        Cfor cforMo335if;
        Cfor cfor;
        Cfor cforMo35333super;
        if (m35479throws()) {
            return cnew;
        }
        if (cnew.m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        Cfor cforMo330catch4 = this.f32053if;
        Cfor cforM35475super = cnew.m35475super();
        if (cforMo330catch4.mo328break()) {
            return cforM35475super.mo328break() ? cifM35477this.mo35335throws() : cnew.mo373do(this);
        }
        Cfor cfor2 = this.f32052for;
        Cfor cfor3 = this.f32054new[0];
        Cfor cforM35478throw = cnew.m35478throw();
        Cfor cforMo2405public = cnew.mo2405public(0);
        boolean zMo341this = cfor3.mo341this();
        if (zMo341this) {
            cforMo330catch = cforM35475super;
            cforMo330catch2 = cforM35478throw;
        } else {
            cforMo330catch = cforM35475super.mo330catch(cfor3);
            cforMo330catch2 = cforM35478throw.mo330catch(cfor3);
        }
        boolean zMo341this2 = cforMo2405public.mo341this();
        if (zMo341this2) {
            cforMo330catch3 = cfor2;
        } else {
            cforMo330catch4 = cforMo330catch4.mo330catch(cforMo2405public);
            cforMo330catch3 = cfor2.mo330catch(cforMo2405public);
        }
        Cfor cforMo331do = cforMo330catch3.mo331do(cforMo330catch2);
        Cfor cforMo331do2 = cforMo330catch4.mo331do(cforMo330catch);
        if (cforMo331do2.mo328break()) {
            return cforMo331do.mo328break() ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        if (cforM35475super.mo328break()) {
            Cnew cnewM35454abstract = m35454abstract();
            Cfor cforM35467import = cnewM35454abstract.m35467import();
            Cfor cforMo375native = cnewM35454abstract.mo375native();
            Cfor cforMo336new = cforMo375native.mo331do(cforM35478throw).mo336new(cforM35467import);
            cforMo335if = cforMo336new.mo342throw().mo331do(cforMo336new).mo331do(cforM35467import).mo335if();
            if (cforMo335if.mo328break()) {
                return new fw1(cifM35477this, cforMo335if, cifM35477this.m35432import().mo340super(), this.f32055try);
            }
            Cfor cforMo331do3 = cforMo336new.mo330catch(cforM35467import.mo331do(cforMo335if)).mo331do(cforMo335if).mo331do(cforMo375native).mo336new(cforMo335if).mo331do(cforMo335if);
            cforMo35333super = cifM35477this.mo35333super(ECConstants.ONE);
            cfor = cforMo331do3;
        } else {
            Cfor cforMo342throw = cforMo331do2.mo342throw();
            Cfor cforMo330catch5 = cforMo331do.mo330catch(cforMo330catch4);
            Cfor cforMo330catch6 = cforMo331do.mo330catch(cforMo330catch);
            Cfor cforMo330catch7 = cforMo330catch5.mo330catch(cforMo330catch6);
            if (cforMo330catch7.mo328break()) {
                return new fw1(cifM35477this, cforMo330catch7, cifM35477this.m35432import().mo340super(), this.f32055try);
            }
            Cfor cforMo330catch8 = cforMo331do.mo330catch(cforMo342throw);
            Cfor cforMo330catch9 = !zMo341this2 ? cforMo330catch8.mo330catch(cforMo2405public) : cforMo330catch8;
            Cfor cforMo649import = cforMo330catch6.mo331do(cforMo342throw).mo649import(cforMo330catch9, cfor2.mo331do(cfor3));
            if (!zMo341this) {
                cforMo330catch9 = cforMo330catch9.mo330catch(cfor3);
            }
            cforMo335if = cforMo330catch7;
            cfor = cforMo649import;
            cforMo35333super = cforMo330catch9;
        }
        return new fw1(cifM35477this, cforMo335if, cfor, new Cfor[]{cforMo35333super}, this.f32055try);
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
        return new fw1(null, m35456case(), m35462else());
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
        return new fw1(this.f32051do, cfor, cfor2.mo331do(cfor3), new Cfor[]{cfor3}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        Cfor cforMo330catch = this.f32053if;
        if (cforMo330catch.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        Cfor cfor = this.f32052for;
        Cfor cfor2 = this.f32054new[0];
        boolean zMo341this = cfor2.mo341this();
        Cfor cforMo330catch2 = zMo341this ? cfor : cfor.mo330catch(cfor2);
        Cfor cforMo342throw = zMo341this ? cfor2 : cfor2.mo342throw();
        Cfor cforMo331do = cfor.mo342throw().mo331do(cforMo330catch2).mo331do(cforMo342throw);
        if (cforMo331do.mo328break()) {
            return new fw1(cifM35477this, cforMo331do, cifM35477this.m35432import().mo340super(), this.f32055try);
        }
        Cfor cforMo342throw2 = cforMo331do.mo342throw();
        Cfor cforMo330catch3 = zMo341this ? cforMo331do : cforMo331do.mo330catch(cforMo342throw);
        if (!zMo341this) {
            cforMo330catch = cforMo330catch.mo330catch(cfor2);
        }
        return new fw1(cifM35477this, cforMo342throw2, cforMo330catch.mo649import(cforMo331do, cforMo330catch2).mo331do(cforMo342throw2).mo331do(cforMo330catch3), new Cfor[]{cforMo330catch3}, this.f32055try);
    }
}
