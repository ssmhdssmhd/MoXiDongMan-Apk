package org.bouncycastle.math.ec;

import java.math.BigInteger;
import java.util.Hashtable;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;

/* renamed from: org.bouncycastle.math.ec.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew {

    /* renamed from: else, reason: not valid java name */
    public static final org.bouncycastle.math.ec.Cfor[] f32049else = new org.bouncycastle.math.ec.Cfor[0];

    /* renamed from: case, reason: not valid java name */
    public Hashtable f32050case;

    /* renamed from: do, reason: not valid java name */
    public org.bouncycastle.math.ec.Cif f32051do;

    /* renamed from: for, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor f32052for;

    /* renamed from: if, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor f32053if;

    /* renamed from: new, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor[] f32054new;

    /* renamed from: try, reason: not valid java name */
    public boolean f32055try;

    /* renamed from: org.bouncycastle.math.ec.new$do, reason: invalid class name */
    public class Cdo implements PreCompCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f32056do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f32058if;

        public Cdo(boolean z, boolean z2) {
            this.f32056do = z;
            this.f32058if = z2;
        }

        @Override // org.bouncycastle.math.ec.PreCompCallback
        public PreCompInfo precompute(PreCompInfo preCompInfo) {
            Cbreak cbreak = preCompInfo instanceof Cbreak ? (Cbreak) preCompInfo : null;
            if (cbreak == null) {
                cbreak = new Cbreak();
            }
            if (cbreak.m35265if()) {
                return cbreak;
            }
            if (!cbreak.m35263do()) {
                if (!this.f32056do && !Cnew.this.mo35474strictfp()) {
                    cbreak.m35267try();
                    return cbreak;
                }
                cbreak.m35266new();
            }
            if (this.f32058if && !cbreak.m35264for()) {
                if (!Cnew.this.mo35482volatile()) {
                    cbreak.m35267try();
                    return cbreak;
                }
                cbreak.m35262case();
            }
            return cbreak;
        }
    }

    /* renamed from: org.bouncycastle.math.ec.new$for, reason: invalid class name */
    public static abstract class Cfor extends Cnew {
        public Cfor(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2) {
            super(cif, cfor, cfor2);
        }

        public Cfor(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr) {
            super(cif, cfor, cfor2, cforArr);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: goto */
        public boolean mo374goto() {
            return m35462else().mo338return();
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: strictfp */
        public boolean mo35474strictfp() {
            org.bouncycastle.math.ec.Cfor cfor = this.f32053if;
            org.bouncycastle.math.ec.Cfor cfor2 = this.f32052for;
            org.bouncycastle.math.ec.Cfor cforM35443throw = this.f32051do.m35443throw();
            org.bouncycastle.math.ec.Cfor cforM35432import = this.f32051do.m35432import();
            org.bouncycastle.math.ec.Cfor cforMo342throw = cfor2.mo342throw();
            int iM35455break = m35455break();
            if (iM35455break != 0) {
                if (iM35455break == 1) {
                    org.bouncycastle.math.ec.Cfor cfor3 = this.f32054new[0];
                    if (!cfor3.mo341this()) {
                        org.bouncycastle.math.ec.Cfor cforMo342throw2 = cfor3.mo342throw();
                        org.bouncycastle.math.ec.Cfor cforMo330catch = cfor3.mo330catch(cforMo342throw2);
                        cforMo342throw = cforMo342throw.mo330catch(cfor3);
                        cforM35443throw = cforM35443throw.mo330catch(cforMo342throw2);
                        cforM35432import = cforM35432import.mo330catch(cforMo330catch);
                    }
                } else {
                    if (iM35455break != 2 && iM35455break != 3 && iM35455break != 4) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    org.bouncycastle.math.ec.Cfor cfor4 = this.f32054new[0];
                    if (!cfor4.mo341this()) {
                        org.bouncycastle.math.ec.Cfor cforMo342throw3 = cfor4.mo342throw();
                        org.bouncycastle.math.ec.Cfor cforMo342throw4 = cforMo342throw3.mo342throw();
                        org.bouncycastle.math.ec.Cfor cforMo330catch2 = cforMo342throw3.mo330catch(cforMo342throw4);
                        cforM35443throw = cforM35443throw.mo330catch(cforMo342throw4);
                        cforM35432import = cforM35432import.mo330catch(cforMo330catch2);
                    }
                }
            }
            return cforMo342throw.equals(cfor.mo342throw().mo331do(cforM35443throw).mo330catch(cfor).mo331do(cforM35432import));
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: transient */
        public Cnew mo35480transient(Cnew cnew) {
            return cnew.m35479throws() ? this : mo373do(cnew.mo377private());
        }
    }

    /* renamed from: org.bouncycastle.math.ec.new$if, reason: invalid class name */
    public static abstract class Cif extends Cnew {
        public Cif(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2) {
            super(cif, cfor, cfor2);
        }

        public Cif(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr) {
            super(cif, cfor, cfor2, cforArr);
        }

        public Cif b() {
            Cnew cnewMo35329break;
            if (m35479throws()) {
                return this;
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            int iM35438public = cifM35477this.m35438public();
            org.bouncycastle.math.ec.Cfor cfor = this.f32053if;
            if (iM35438public == 0) {
                cnewMo35329break = cifM35477this.mo35329break(cfor.mo342throw(), this.f32052for.mo342throw(), this.f32055try);
            } else {
                if (iM35438public != 1) {
                    if (iM35438public != 5) {
                        if (iM35438public != 6) {
                            throw new IllegalStateException("unsupported coordinate system");
                        }
                    }
                    cnewMo35329break = cifM35477this.mo35329break(cfor.mo342throw(), this.f32052for.mo342throw(), this.f32055try);
                }
                cnewMo35329break = cifM35477this.mo35331catch(cfor.mo342throw(), this.f32052for.mo342throw(), new org.bouncycastle.math.ec.Cfor[]{this.f32054new[0].mo342throw()}, this.f32055try);
            }
            return (Cif) cnewMo35329break;
        }

        public Cif c(int i) {
            Cnew cnewMo35329break;
            if (m35479throws()) {
                return this;
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            int iM35438public = cifM35477this.m35438public();
            org.bouncycastle.math.ec.Cfor cfor = this.f32053if;
            if (iM35438public == 0) {
                cnewMo35329break = cifM35477this.mo35329break(cfor.mo650native(i), this.f32052for.mo650native(i), this.f32055try);
            } else {
                if (iM35438public != 1) {
                    if (iM35438public != 5) {
                        if (iM35438public != 6) {
                            throw new IllegalStateException("unsupported coordinate system");
                        }
                    }
                    cnewMo35329break = cifM35477this.mo35329break(cfor.mo650native(i), this.f32052for.mo650native(i), this.f32055try);
                }
                cnewMo35329break = cifM35477this.mo35331catch(cfor.mo650native(i), this.f32052for.mo650native(i), new org.bouncycastle.math.ec.Cfor[]{this.f32054new[0].mo650native(i)}, this.f32055try);
            }
            return (Cif) cnewMo35329break;
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: interface */
        public Cnew mo35469interface(org.bouncycastle.math.ec.Cfor cfor) {
            if (m35479throws()) {
                return this;
            }
            int iM35455break = m35455break();
            if (iM35455break == 5) {
                org.bouncycastle.math.ec.Cfor cforM35475super = m35475super();
                return m35477this().mo35331catch(cforM35475super, m35478throw().mo331do(cforM35475super).mo336new(cfor).mo331do(cforM35475super.mo330catch(cfor)), m35483while(), this.f32055try);
            }
            if (iM35455break != 6) {
                return super.mo35469interface(cfor);
            }
            org.bouncycastle.math.ec.Cfor cforM35475super2 = m35475super();
            org.bouncycastle.math.ec.Cfor cforM35478throw = m35478throw();
            org.bouncycastle.math.ec.Cfor cfor2 = m35483while()[0];
            org.bouncycastle.math.ec.Cfor cforMo330catch = cforM35475super2.mo330catch(cfor.mo342throw());
            return m35477this().mo35331catch(cforMo330catch, cforM35478throw.mo331do(cforM35475super2).mo331do(cforMo330catch), new org.bouncycastle.math.ec.Cfor[]{cfor2.mo330catch(cfor)}, this.f32055try);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: protected */
        public Cnew mo35471protected(org.bouncycastle.math.ec.Cfor cfor) {
            if (m35479throws()) {
                return this;
            }
            int iM35455break = m35455break();
            if (iM35455break != 5 && iM35455break != 6) {
                return super.mo35471protected(cfor);
            }
            org.bouncycastle.math.ec.Cfor cforM35475super = m35475super();
            return m35477this().mo35331catch(cforM35475super, m35478throw().mo331do(cforM35475super).mo330catch(cfor).mo331do(cforM35475super), m35483while(), this.f32055try);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: strictfp */
        public boolean mo35474strictfp() {
            org.bouncycastle.math.ec.Cfor cforMo645const;
            org.bouncycastle.math.ec.Cfor cforMo649import;
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            org.bouncycastle.math.ec.Cfor cfor = this.f32053if;
            org.bouncycastle.math.ec.Cfor cforM35443throw = cifM35477this.m35443throw();
            org.bouncycastle.math.ec.Cfor cforM35432import = cifM35477this.m35432import();
            int iM35438public = cifM35477this.m35438public();
            if (iM35438public != 6) {
                org.bouncycastle.math.ec.Cfor cfor2 = this.f32052for;
                org.bouncycastle.math.ec.Cfor cforMo330catch = cfor2.mo331do(cfor).mo330catch(cfor2);
                if (iM35438public != 0) {
                    if (iM35438public != 1) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    org.bouncycastle.math.ec.Cfor cfor3 = this.f32054new[0];
                    if (!cfor3.mo341this()) {
                        org.bouncycastle.math.ec.Cfor cforMo330catch2 = cfor3.mo330catch(cfor3.mo342throw());
                        cforMo330catch = cforMo330catch.mo330catch(cfor3);
                        cforM35443throw = cforM35443throw.mo330catch(cfor3);
                        cforM35432import = cforM35432import.mo330catch(cforMo330catch2);
                    }
                }
                return cforMo330catch.equals(cfor.mo331do(cforM35443throw).mo330catch(cfor.mo342throw()).mo331do(cforM35432import));
            }
            org.bouncycastle.math.ec.Cfor cfor4 = this.f32054new[0];
            boolean zMo341this = cfor4.mo341this();
            if (cfor.mo328break()) {
                org.bouncycastle.math.ec.Cfor cforMo342throw = this.f32052for.mo342throw();
                if (!zMo341this) {
                    cforM35432import = cforM35432import.mo330catch(cfor4.mo342throw());
                }
                return cforMo342throw.equals(cforM35432import);
            }
            org.bouncycastle.math.ec.Cfor cfor5 = this.f32052for;
            org.bouncycastle.math.ec.Cfor cforMo342throw2 = cfor.mo342throw();
            if (zMo341this) {
                cforMo645const = cfor5.mo342throw().mo331do(cfor5).mo331do(cforM35443throw);
                cforMo649import = cforMo342throw2.mo342throw().mo331do(cforM35432import);
            } else {
                org.bouncycastle.math.ec.Cfor cforMo342throw3 = cfor4.mo342throw();
                org.bouncycastle.math.ec.Cfor cforMo342throw4 = cforMo342throw3.mo342throw();
                cforMo645const = cfor5.mo331do(cfor4).mo645const(cfor5, cforM35443throw, cforMo342throw3);
                cforMo649import = cforMo342throw2.mo649import(cforM35432import, cforMo342throw4);
            }
            return cforMo645const.mo330catch(cforMo342throw2).equals(cforMo649import);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: transient */
        public Cnew mo35480transient(Cnew cnew) {
            return cnew.m35479throws() ? this : mo373do(cnew.mo377private());
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: volatile */
        public boolean mo35482volatile() {
            BigInteger bigIntegerM35434native = this.f32051do.m35434native();
            if (ECConstants.TWO.equals(bigIntegerM35434native)) {
                return ((Cfor.Cdo) m35454abstract().m35456case().mo331do(this.f32051do.m35443throw())).mo653throws() == 0;
            }
            if (!ECConstants.FOUR.equals(bigIntegerM35434native)) {
                return super.mo35482volatile();
            }
            Cnew cnewM35454abstract = m35454abstract();
            org.bouncycastle.math.ec.Cfor cforM35456case = cnewM35454abstract.m35456case();
            org.bouncycastle.math.ec.Cif cif = this.f32051do;
            org.bouncycastle.math.ec.Cfor cforA = ((Cif.AbstractC0462if) cif).a(cforM35456case.mo331do(cif.m35443throw()));
            if (cforA == null) {
                return false;
            }
            org.bouncycastle.math.ec.Cfor cforMo331do = cforM35456case.mo330catch(cforA).mo331do(cnewM35454abstract.m35462else()).mo331do(this.f32051do.m35443throw());
            return ((Cfor.Cdo) cforMo331do).mo653throws() == 0 || ((Cfor.Cdo) cforMo331do.mo331do(cforM35456case)).mo653throws() == 0;
        }
    }

    /* renamed from: org.bouncycastle.math.ec.new$new, reason: invalid class name and collision with other inner class name */
    public static class C0463new extends Cif {
        public C0463new(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
            super(cif, cfor, cfor2);
            if ((cfor == null) != (cfor2 == null)) {
                throw new IllegalArgumentException("Exactly one of the field elements is null");
            }
            if (cfor != null) {
                Cfor.C0461for.m35381default(this.f32053if, this.f32052for);
                if (cif != null) {
                    Cfor.C0461for.m35381default(this.f32053if, this.f32051do.m35443throw());
                }
            }
            this.f32055try = z;
        }

        public C0463new(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
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
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            org.bouncycastle.math.ec.Cfor cfor = this.f32053if;
            if (cfor.mo328break()) {
                return cnew;
            }
            if (cifM35477this.m35438public() != 6) {
                return mo378synchronized().mo373do(cnew);
            }
            org.bouncycastle.math.ec.Cfor cfor2 = cnew.f32053if;
            org.bouncycastle.math.ec.Cfor cfor3 = cnew.f32054new[0];
            if (cfor2.mo328break() || !cfor3.mo341this()) {
                return mo378synchronized().mo373do(cnew);
            }
            org.bouncycastle.math.ec.Cfor cfor4 = this.f32052for;
            org.bouncycastle.math.ec.Cfor cfor5 = this.f32054new[0];
            org.bouncycastle.math.ec.Cfor cfor6 = cnew.f32052for;
            org.bouncycastle.math.ec.Cfor cforMo342throw = cfor.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo342throw2 = cfor4.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo342throw3 = cfor5.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo331do = cifM35477this.m35443throw().mo330catch(cforMo342throw3).mo331do(cforMo342throw2).mo331do(cfor4.mo330catch(cfor5));
            org.bouncycastle.math.ec.Cfor cforMo335if = cfor6.mo335if();
            org.bouncycastle.math.ec.Cfor cforMo645const = cifM35477this.m35443throw().mo331do(cforMo335if).mo330catch(cforMo342throw3).mo331do(cforMo342throw2).mo645const(cforMo331do, cforMo342throw, cforMo342throw3);
            org.bouncycastle.math.ec.Cfor cforMo330catch = cfor2.mo330catch(cforMo342throw3);
            org.bouncycastle.math.ec.Cfor cforMo342throw4 = cforMo330catch.mo331do(cforMo331do).mo342throw();
            if (cforMo342throw4.mo328break()) {
                return cforMo645const.mo328break() ? cnew.mo378synchronized() : cifM35477this.mo35335throws();
            }
            if (cforMo645const.mo328break()) {
                return new C0463new(cifM35477this, cforMo645const, cifM35477this.m35432import().mo340super(), this.f32055try);
            }
            org.bouncycastle.math.ec.Cfor cforMo330catch2 = cforMo645const.mo342throw().mo330catch(cforMo330catch);
            org.bouncycastle.math.ec.Cfor cforMo330catch3 = cforMo645const.mo330catch(cforMo342throw4).mo330catch(cforMo342throw3);
            return new C0463new(cifM35477this, cforMo330catch2, cforMo645const.mo331do(cforMo342throw4).mo342throw().mo645const(cforMo331do, cforMo335if, cforMo330catch3), new org.bouncycastle.math.ec.Cfor[]{cforMo330catch3}, this.f32055try);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: do */
        public Cnew mo373do(Cnew cnew) {
            org.bouncycastle.math.ec.Cfor cforMo330catch;
            org.bouncycastle.math.ec.Cfor cforMo330catch2;
            org.bouncycastle.math.ec.Cfor cforMo330catch3;
            org.bouncycastle.math.ec.Cfor cforMo331do;
            org.bouncycastle.math.ec.Cfor cforMo35333super;
            org.bouncycastle.math.ec.Cfor cforMo331do2;
            if (m35479throws()) {
                return cnew;
            }
            if (cnew.m35479throws()) {
                return this;
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            int iM35438public = cifM35477this.m35438public();
            org.bouncycastle.math.ec.Cfor cforMo330catch4 = this.f32053if;
            org.bouncycastle.math.ec.Cfor cfor = cnew.f32053if;
            if (iM35438public == 0) {
                org.bouncycastle.math.ec.Cfor cfor2 = this.f32052for;
                org.bouncycastle.math.ec.Cfor cfor3 = cnew.f32052for;
                org.bouncycastle.math.ec.Cfor cforMo331do3 = cforMo330catch4.mo331do(cfor);
                org.bouncycastle.math.ec.Cfor cforMo331do4 = cfor2.mo331do(cfor3);
                if (cforMo331do3.mo328break()) {
                    return cforMo331do4.mo328break() ? mo378synchronized() : cifM35477this.mo35335throws();
                }
                org.bouncycastle.math.ec.Cfor cforMo336new = cforMo331do4.mo336new(cforMo331do3);
                org.bouncycastle.math.ec.Cfor cforMo331do5 = cforMo336new.mo342throw().mo331do(cforMo336new).mo331do(cforMo331do3).mo331do(cifM35477this.m35443throw());
                return new C0463new(cifM35477this, cforMo331do5, cforMo336new.mo330catch(cforMo330catch4.mo331do(cforMo331do5)).mo331do(cforMo331do5).mo331do(cfor2), this.f32055try);
            }
            if (iM35438public == 1) {
                org.bouncycastle.math.ec.Cfor cfor4 = this.f32052for;
                org.bouncycastle.math.ec.Cfor cforMo330catch5 = this.f32054new[0];
                org.bouncycastle.math.ec.Cfor cfor5 = cnew.f32052for;
                org.bouncycastle.math.ec.Cfor cfor6 = cnew.f32054new[0];
                boolean zMo341this = cfor6.mo341this();
                org.bouncycastle.math.ec.Cfor cforMo331do6 = cforMo330catch5.mo330catch(cfor5).mo331do(zMo341this ? cfor4 : cfor4.mo330catch(cfor6));
                org.bouncycastle.math.ec.Cfor cforMo331do7 = cforMo330catch5.mo330catch(cfor).mo331do(zMo341this ? cforMo330catch4 : cforMo330catch4.mo330catch(cfor6));
                if (cforMo331do7.mo328break()) {
                    return cforMo331do6.mo328break() ? mo378synchronized() : cifM35477this.mo35335throws();
                }
                org.bouncycastle.math.ec.Cfor cforMo342throw = cforMo331do7.mo342throw();
                org.bouncycastle.math.ec.Cfor cforMo330catch6 = cforMo342throw.mo330catch(cforMo331do7);
                if (!zMo341this) {
                    cforMo330catch5 = cforMo330catch5.mo330catch(cfor6);
                }
                org.bouncycastle.math.ec.Cfor cforMo331do8 = cforMo331do6.mo331do(cforMo331do7);
                org.bouncycastle.math.ec.Cfor cforMo331do9 = cforMo331do8.mo645const(cforMo331do6, cforMo342throw, cifM35477this.m35443throw()).mo330catch(cforMo330catch5).mo331do(cforMo330catch6);
                org.bouncycastle.math.ec.Cfor cforMo330catch7 = cforMo331do7.mo330catch(cforMo331do9);
                if (!zMo341this) {
                    cforMo342throw = cforMo342throw.mo330catch(cfor6);
                }
                return new C0463new(cifM35477this, cforMo330catch7, cforMo331do6.mo645const(cforMo330catch4, cforMo331do7, cfor4).mo645const(cforMo342throw, cforMo331do8, cforMo331do9), new org.bouncycastle.math.ec.Cfor[]{cforMo330catch6.mo330catch(cforMo330catch5)}, this.f32055try);
            }
            if (iM35438public != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            if (cforMo330catch4.mo328break()) {
                return cfor.mo328break() ? cifM35477this.mo35335throws() : cnew.mo373do(this);
            }
            org.bouncycastle.math.ec.Cfor cfor7 = this.f32052for;
            org.bouncycastle.math.ec.Cfor cfor8 = this.f32054new[0];
            org.bouncycastle.math.ec.Cfor cfor9 = cnew.f32052for;
            org.bouncycastle.math.ec.Cfor cfor10 = cnew.f32054new[0];
            boolean zMo341this2 = cfor8.mo341this();
            if (zMo341this2) {
                cforMo330catch = cfor;
                cforMo330catch2 = cfor9;
            } else {
                cforMo330catch = cfor.mo330catch(cfor8);
                cforMo330catch2 = cfor9.mo330catch(cfor8);
            }
            boolean zMo341this3 = cfor10.mo341this();
            if (zMo341this3) {
                cforMo330catch3 = cfor7;
            } else {
                cforMo330catch4 = cforMo330catch4.mo330catch(cfor10);
                cforMo330catch3 = cfor7.mo330catch(cfor10);
            }
            org.bouncycastle.math.ec.Cfor cforMo331do10 = cforMo330catch3.mo331do(cforMo330catch2);
            org.bouncycastle.math.ec.Cfor cforMo331do11 = cforMo330catch4.mo331do(cforMo330catch);
            if (cforMo331do11.mo328break()) {
                return cforMo331do10.mo328break() ? mo378synchronized() : cifM35477this.mo35335throws();
            }
            if (cfor.mo328break()) {
                Cnew cnewM35454abstract = m35454abstract();
                org.bouncycastle.math.ec.Cfor cforM35467import = cnewM35454abstract.m35467import();
                org.bouncycastle.math.ec.Cfor cforMo375native = cnewM35454abstract.mo375native();
                org.bouncycastle.math.ec.Cfor cforMo336new2 = cforMo375native.mo331do(cfor9).mo336new(cforM35467import);
                cforMo331do = cforMo336new2.mo342throw().mo331do(cforMo336new2).mo331do(cforM35467import).mo331do(cifM35477this.m35443throw());
                if (cforMo331do.mo328break()) {
                    return new C0463new(cifM35477this, cforMo331do, cifM35477this.m35432import().mo340super(), this.f32055try);
                }
                cforMo331do2 = cforMo336new2.mo330catch(cforM35467import.mo331do(cforMo331do)).mo331do(cforMo331do).mo331do(cforMo375native).mo336new(cforMo331do).mo331do(cforMo331do);
                cforMo35333super = cifM35477this.mo35333super(ECConstants.ONE);
            } else {
                org.bouncycastle.math.ec.Cfor cforMo342throw2 = cforMo331do11.mo342throw();
                org.bouncycastle.math.ec.Cfor cforMo330catch8 = cforMo331do10.mo330catch(cforMo330catch4);
                org.bouncycastle.math.ec.Cfor cforMo330catch9 = cforMo331do10.mo330catch(cforMo330catch);
                org.bouncycastle.math.ec.Cfor cforMo330catch10 = cforMo330catch8.mo330catch(cforMo330catch9);
                if (cforMo330catch10.mo328break()) {
                    return new C0463new(cifM35477this, cforMo330catch10, cifM35477this.m35432import().mo340super(), this.f32055try);
                }
                org.bouncycastle.math.ec.Cfor cforMo330catch11 = cforMo331do10.mo330catch(cforMo342throw2);
                org.bouncycastle.math.ec.Cfor cforMo330catch12 = !zMo341this3 ? cforMo330catch11.mo330catch(cfor10) : cforMo330catch11;
                org.bouncycastle.math.ec.Cfor cforMo649import = cforMo330catch9.mo331do(cforMo342throw2).mo649import(cforMo330catch12, cfor7.mo331do(cfor8));
                if (!zMo341this2) {
                    cforMo330catch12 = cforMo330catch12.mo330catch(cfor8);
                }
                cforMo331do = cforMo330catch10;
                cforMo35333super = cforMo330catch12;
                cforMo331do2 = cforMo649import;
            }
            return new C0463new(cifM35477this, cforMo331do, cforMo331do2, new org.bouncycastle.math.ec.Cfor[]{cforMo35333super}, this.f32055try);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: goto */
        public boolean mo374goto() {
            org.bouncycastle.math.ec.Cfor cforM35475super = m35475super();
            if (cforM35475super.mo328break()) {
                return false;
            }
            org.bouncycastle.math.ec.Cfor cforM35478throw = m35478throw();
            int iM35455break = m35455break();
            return (iM35455break == 5 || iM35455break == 6) ? cforM35478throw.mo338return() != cforM35475super.mo338return() : cforM35478throw.mo336new(cforM35475super).mo338return();
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: native */
        public org.bouncycastle.math.ec.Cfor mo375native() {
            int iM35455break = m35455break();
            if (iM35455break != 5 && iM35455break != 6) {
                return this.f32052for;
            }
            org.bouncycastle.math.ec.Cfor cfor = this.f32053if;
            org.bouncycastle.math.ec.Cfor cfor2 = this.f32052for;
            if (m35479throws() || cfor.mo328break()) {
                return cfor2;
            }
            org.bouncycastle.math.ec.Cfor cforMo330catch = cfor2.mo331do(cfor).mo330catch(cfor);
            if (6 != iM35455break) {
                return cforMo330catch;
            }
            org.bouncycastle.math.ec.Cfor cfor3 = this.f32054new[0];
            return !cfor3.mo341this() ? cforMo330catch.mo336new(cfor3) : cforMo330catch;
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: new */
        public Cnew mo376new() {
            return new C0463new(null, m35456case(), m35462else(), false);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: private */
        public Cnew mo377private() {
            if (m35479throws()) {
                return this;
            }
            org.bouncycastle.math.ec.Cfor cfor = this.f32053if;
            if (cfor.mo328break()) {
                return this;
            }
            int iM35455break = m35455break();
            if (iM35455break == 0) {
                return new C0463new(this.f32051do, cfor, this.f32052for.mo331do(cfor), this.f32055try);
            }
            if (iM35455break == 1) {
                return new C0463new(this.f32051do, cfor, this.f32052for.mo331do(cfor), new org.bouncycastle.math.ec.Cfor[]{this.f32054new[0]}, this.f32055try);
            }
            if (iM35455break == 5) {
                return new C0463new(this.f32051do, cfor, this.f32052for.mo335if(), this.f32055try);
            }
            if (iM35455break != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            org.bouncycastle.math.ec.Cfor cfor2 = this.f32052for;
            org.bouncycastle.math.ec.Cfor cfor3 = this.f32054new[0];
            return new C0463new(this.f32051do, cfor, cfor2.mo331do(cfor3), new org.bouncycastle.math.ec.Cfor[]{cfor3}, this.f32055try);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: synchronized */
        public Cnew mo378synchronized() {
            org.bouncycastle.math.ec.Cfor cforMo331do;
            if (m35479throws()) {
                return this;
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            org.bouncycastle.math.ec.Cfor cforMo330catch = this.f32053if;
            if (cforMo330catch.mo328break()) {
                return cifM35477this.mo35335throws();
            }
            int iM35438public = cifM35477this.m35438public();
            if (iM35438public == 0) {
                org.bouncycastle.math.ec.Cfor cforMo331do2 = this.f32052for.mo336new(cforMo330catch).mo331do(cforMo330catch);
                org.bouncycastle.math.ec.Cfor cforMo331do3 = cforMo331do2.mo342throw().mo331do(cforMo331do2).mo331do(cifM35477this.m35443throw());
                return new C0463new(cifM35477this, cforMo331do3, cforMo330catch.mo649import(cforMo331do3, cforMo331do2.mo335if()), this.f32055try);
            }
            if (iM35438public == 1) {
                org.bouncycastle.math.ec.Cfor cforMo330catch2 = this.f32052for;
                org.bouncycastle.math.ec.Cfor cfor = this.f32054new[0];
                boolean zMo341this = cfor.mo341this();
                org.bouncycastle.math.ec.Cfor cforMo330catch3 = zMo341this ? cforMo330catch : cforMo330catch.mo330catch(cfor);
                if (!zMo341this) {
                    cforMo330catch2 = cforMo330catch2.mo330catch(cfor);
                }
                org.bouncycastle.math.ec.Cfor cforMo342throw = cforMo330catch.mo342throw();
                org.bouncycastle.math.ec.Cfor cforMo331do4 = cforMo342throw.mo331do(cforMo330catch2);
                org.bouncycastle.math.ec.Cfor cforMo342throw2 = cforMo330catch3.mo342throw();
                org.bouncycastle.math.ec.Cfor cforMo331do5 = cforMo331do4.mo331do(cforMo330catch3);
                org.bouncycastle.math.ec.Cfor cforMo645const = cforMo331do5.mo645const(cforMo331do4, cforMo342throw2, cifM35477this.m35443throw());
                return new C0463new(cifM35477this, cforMo330catch3.mo330catch(cforMo645const), cforMo342throw.mo342throw().mo645const(cforMo330catch3, cforMo645const, cforMo331do5), new org.bouncycastle.math.ec.Cfor[]{cforMo330catch3.mo330catch(cforMo342throw2)}, this.f32055try);
            }
            if (iM35438public != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            org.bouncycastle.math.ec.Cfor cfor2 = this.f32052for;
            org.bouncycastle.math.ec.Cfor cfor3 = this.f32054new[0];
            boolean zMo341this2 = cfor3.mo341this();
            org.bouncycastle.math.ec.Cfor cforMo330catch4 = zMo341this2 ? cfor2 : cfor2.mo330catch(cfor3);
            org.bouncycastle.math.ec.Cfor cforMo342throw3 = zMo341this2 ? cfor3 : cfor3.mo342throw();
            org.bouncycastle.math.ec.Cfor cforM35443throw = cifM35477this.m35443throw();
            org.bouncycastle.math.ec.Cfor cforMo330catch5 = zMo341this2 ? cforM35443throw : cforM35443throw.mo330catch(cforMo342throw3);
            org.bouncycastle.math.ec.Cfor cforMo331do6 = cfor2.mo342throw().mo331do(cforMo330catch4).mo331do(cforMo330catch5);
            if (cforMo331do6.mo328break()) {
                return new C0463new(cifM35477this, cforMo331do6, cifM35477this.m35432import().mo340super(), this.f32055try);
            }
            org.bouncycastle.math.ec.Cfor cforMo342throw4 = cforMo331do6.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo330catch6 = zMo341this2 ? cforMo331do6 : cforMo331do6.mo330catch(cforMo342throw3);
            org.bouncycastle.math.ec.Cfor cforM35432import = cifM35477this.m35432import();
            if (cforM35432import.mo35378for() < (cifM35477this.mo35334switch() >> 1)) {
                org.bouncycastle.math.ec.Cfor cforMo342throw5 = cfor2.mo331do(cforMo330catch).mo342throw();
                cforMo331do = cforMo342throw5.mo331do(cforMo331do6).mo331do(cforMo342throw3).mo330catch(cforMo342throw5).mo331do(cforM35432import.mo341this() ? cforMo330catch5.mo331do(cforMo342throw3).mo342throw() : cforMo330catch5.mo649import(cforM35432import, cforMo342throw3.mo342throw())).mo331do(cforMo342throw4);
                if (!cforM35443throw.mo328break()) {
                    if (!cforM35443throw.mo341this()) {
                        cforMo331do = cforMo331do.mo331do(cforM35443throw.mo335if().mo330catch(cforMo330catch6));
                    }
                }
                return new C0463new(cifM35477this, cforMo342throw4, cforMo331do, new org.bouncycastle.math.ec.Cfor[]{cforMo330catch6}, this.f32055try);
            }
            if (!zMo341this2) {
                cforMo330catch = cforMo330catch.mo330catch(cfor3);
            }
            cforMo331do = cforMo330catch.mo649import(cforMo331do6, cforMo330catch4).mo331do(cforMo342throw4);
            cforMo331do = cforMo331do.mo331do(cforMo330catch6);
            return new C0463new(cifM35477this, cforMo342throw4, cforMo331do, new org.bouncycastle.math.ec.Cfor[]{cforMo330catch6}, this.f32055try);
        }
    }

    /* renamed from: org.bouncycastle.math.ec.new$try, reason: invalid class name */
    public static class Ctry extends Cfor {
        public Ctry(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
            super(cif, cfor, cfor2);
            if ((cfor == null) != (cfor2 == null)) {
                throw new IllegalArgumentException("Exactly one of the field elements is null");
            }
            this.f32055try = z;
        }

        public Ctry(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
            super(cif, cfor, cfor2, cforArr);
            this.f32055try = z;
        }

        @Override // org.bouncycastle.math.ec.Cnew
        public Cnew a(Cnew cnew) {
            if (this == cnew) {
                return mo642implements();
            }
            if (m35479throws()) {
                return cnew;
            }
            if (cnew.m35479throws()) {
                return mo378synchronized();
            }
            org.bouncycastle.math.ec.Cfor cfor = this.f32052for;
            if (cfor.mo328break()) {
                return cnew;
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            int iM35438public = cifM35477this.m35438public();
            if (iM35438public != 0) {
                return iM35438public != 4 ? mo378synchronized().mo373do(cnew) : h(false).mo373do(cnew);
            }
            org.bouncycastle.math.ec.Cfor cfor2 = this.f32053if;
            org.bouncycastle.math.ec.Cfor cfor3 = cnew.f32053if;
            org.bouncycastle.math.ec.Cfor cfor4 = cnew.f32052for;
            org.bouncycastle.math.ec.Cfor cforMo337public = cfor3.mo337public(cfor2);
            org.bouncycastle.math.ec.Cfor cforMo337public2 = cfor4.mo337public(cfor);
            if (cforMo337public.mo328break()) {
                return cforMo337public2.mo328break() ? mo642implements() : this;
            }
            org.bouncycastle.math.ec.Cfor cforMo342throw = cforMo337public.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo337public3 = cforMo342throw.mo330catch(i(cfor2).mo331do(cfor3)).mo337public(cforMo337public2.mo342throw());
            if (cforMo337public3.mo328break()) {
                return cifM35477this.mo35335throws();
            }
            org.bouncycastle.math.ec.Cfor cforMo334goto = cforMo337public3.mo330catch(cforMo337public).mo334goto();
            org.bouncycastle.math.ec.Cfor cforMo330catch = cforMo337public3.mo330catch(cforMo334goto).mo330catch(cforMo337public2);
            org.bouncycastle.math.ec.Cfor cforMo337public4 = i(cfor).mo330catch(cforMo342throw).mo330catch(cforMo337public).mo330catch(cforMo334goto).mo337public(cforMo330catch);
            org.bouncycastle.math.ec.Cfor cforMo331do = cforMo337public4.mo337public(cforMo330catch).mo330catch(cforMo330catch.mo331do(cforMo337public4)).mo331do(cfor3);
            return new Ctry(cifM35477this, cforMo331do, cfor2.mo337public(cforMo331do).mo330catch(cforMo337public4).mo337public(cfor), this.f32055try);
        }

        public org.bouncycastle.math.ec.Cfor b(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2) {
            org.bouncycastle.math.ec.Cfor cforM35443throw = m35477this().m35443throw();
            if (cforM35443throw.mo328break() || cfor.mo341this()) {
                return cforM35443throw;
            }
            if (cfor2 == null) {
                cfor2 = cfor.mo342throw();
            }
            org.bouncycastle.math.ec.Cfor cforMo342throw = cfor2.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo333final = cforM35443throw.mo333final();
            return cforMo333final.mo35378for() < cforM35443throw.mo35378for() ? cforMo342throw.mo330catch(cforMo333final).mo333final() : cforMo342throw.mo330catch(cforM35443throw);
        }

        public org.bouncycastle.math.ec.Cfor c(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor cfor3, org.bouncycastle.math.ec.Cfor cfor4) {
            return cfor.mo331do(cfor2).mo342throw().mo337public(cfor3).mo337public(cfor4);
        }

        public org.bouncycastle.math.ec.Cfor d(org.bouncycastle.math.ec.Cfor cfor) {
            return e(i(cfor));
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x0127  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0135  */
        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: do */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cnew mo373do(Cnew cnew) {
            org.bouncycastle.math.ec.Cfor cforMo342throw;
            org.bouncycastle.math.ec.Cfor cforMo330catch;
            org.bouncycastle.math.ec.Cfor cfor;
            org.bouncycastle.math.ec.Cfor cfor2;
            if (m35479throws()) {
                return cnew;
            }
            if (cnew.m35479throws()) {
                return this;
            }
            if (this == cnew) {
                return mo378synchronized();
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            int iM35438public = cifM35477this.m35438public();
            org.bouncycastle.math.ec.Cfor cforMo330catch2 = this.f32053if;
            org.bouncycastle.math.ec.Cfor cforMo330catch3 = this.f32052for;
            org.bouncycastle.math.ec.Cfor cforMo330catch4 = cnew.f32053if;
            org.bouncycastle.math.ec.Cfor cforMo330catch5 = cnew.f32052for;
            if (iM35438public == 0) {
                org.bouncycastle.math.ec.Cfor cforMo337public = cforMo330catch4.mo337public(cforMo330catch2);
                org.bouncycastle.math.ec.Cfor cforMo337public2 = cforMo330catch5.mo337public(cforMo330catch3);
                if (cforMo337public.mo328break()) {
                    return cforMo337public2.mo328break() ? mo378synchronized() : cifM35477this.mo35335throws();
                }
                org.bouncycastle.math.ec.Cfor cforMo336new = cforMo337public2.mo336new(cforMo337public);
                org.bouncycastle.math.ec.Cfor cforMo337public3 = cforMo336new.mo342throw().mo337public(cforMo330catch2).mo337public(cforMo330catch4);
                return new Ctry(cifM35477this, cforMo337public3, cforMo336new.mo330catch(cforMo330catch2.mo337public(cforMo337public3)).mo337public(cforMo330catch3), this.f32055try);
            }
            if (iM35438public == 1) {
                org.bouncycastle.math.ec.Cfor cforMo330catch6 = this.f32054new[0];
                org.bouncycastle.math.ec.Cfor cfor3 = cnew.f32054new[0];
                boolean zMo341this = cforMo330catch6.mo341this();
                boolean zMo341this2 = cfor3.mo341this();
                if (!zMo341this) {
                    cforMo330catch5 = cforMo330catch5.mo330catch(cforMo330catch6);
                }
                if (!zMo341this2) {
                    cforMo330catch3 = cforMo330catch3.mo330catch(cfor3);
                }
                org.bouncycastle.math.ec.Cfor cforMo337public4 = cforMo330catch5.mo337public(cforMo330catch3);
                if (!zMo341this) {
                    cforMo330catch4 = cforMo330catch4.mo330catch(cforMo330catch6);
                }
                if (!zMo341this2) {
                    cforMo330catch2 = cforMo330catch2.mo330catch(cfor3);
                }
                org.bouncycastle.math.ec.Cfor cforMo337public5 = cforMo330catch4.mo337public(cforMo330catch2);
                if (cforMo337public5.mo328break()) {
                    return cforMo337public4.mo328break() ? mo378synchronized() : cifM35477this.mo35335throws();
                }
                if (zMo341this) {
                    cforMo330catch6 = cfor3;
                } else if (!zMo341this2) {
                    cforMo330catch6 = cforMo330catch6.mo330catch(cfor3);
                }
                org.bouncycastle.math.ec.Cfor cforMo342throw2 = cforMo337public5.mo342throw();
                org.bouncycastle.math.ec.Cfor cforMo330catch7 = cforMo342throw2.mo330catch(cforMo337public5);
                org.bouncycastle.math.ec.Cfor cforMo330catch8 = cforMo342throw2.mo330catch(cforMo330catch2);
                org.bouncycastle.math.ec.Cfor cforMo337public6 = cforMo337public4.mo342throw().mo330catch(cforMo330catch6).mo337public(cforMo330catch7).mo337public(i(cforMo330catch8));
                return new Ctry(cifM35477this, cforMo337public5.mo330catch(cforMo337public6), cforMo330catch8.mo337public(cforMo337public6).mo644class(cforMo337public4, cforMo330catch3, cforMo330catch7), new org.bouncycastle.math.ec.Cfor[]{cforMo330catch7.mo330catch(cforMo330catch6)}, this.f32055try);
            }
            if (iM35438public != 2 && iM35438public != 4) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            org.bouncycastle.math.ec.Cfor cfor4 = this.f32054new[0];
            org.bouncycastle.math.ec.Cfor cfor5 = cnew.f32054new[0];
            boolean zMo341this3 = cfor4.mo341this();
            if (zMo341this3 || !cfor4.equals(cfor5)) {
                if (!zMo341this3) {
                    org.bouncycastle.math.ec.Cfor cforMo342throw3 = cfor4.mo342throw();
                    cforMo330catch4 = cforMo342throw3.mo330catch(cforMo330catch4);
                    cforMo330catch5 = cforMo342throw3.mo330catch(cfor4).mo330catch(cforMo330catch5);
                }
                boolean zMo341this4 = cfor5.mo341this();
                if (!zMo341this4) {
                    org.bouncycastle.math.ec.Cfor cforMo342throw4 = cfor5.mo342throw();
                    cforMo330catch2 = cforMo342throw4.mo330catch(cforMo330catch2);
                    cforMo330catch3 = cforMo342throw4.mo330catch(cfor5).mo330catch(cforMo330catch3);
                }
                org.bouncycastle.math.ec.Cfor cforMo337public7 = cforMo330catch2.mo337public(cforMo330catch4);
                org.bouncycastle.math.ec.Cfor cforMo337public8 = cforMo330catch3.mo337public(cforMo330catch5);
                if (cforMo337public7.mo328break()) {
                    return cforMo337public8.mo328break() ? mo378synchronized() : cifM35477this.mo35335throws();
                }
                cforMo342throw = cforMo337public7.mo342throw();
                org.bouncycastle.math.ec.Cfor cforMo330catch9 = cforMo342throw.mo330catch(cforMo337public7);
                org.bouncycastle.math.ec.Cfor cforMo330catch10 = cforMo342throw.mo330catch(cforMo330catch2);
                org.bouncycastle.math.ec.Cfor cforMo337public9 = cforMo337public8.mo342throw().mo331do(cforMo330catch9).mo337public(i(cforMo330catch10));
                org.bouncycastle.math.ec.Cfor cforMo644class = cforMo330catch10.mo337public(cforMo337public9).mo644class(cforMo337public8, cforMo330catch9, cforMo330catch3);
                org.bouncycastle.math.ec.Cfor cforMo330catch11 = !zMo341this3 ? cforMo337public7.mo330catch(cfor4) : cforMo337public7;
                cforMo330catch = !zMo341this4 ? cforMo330catch11.mo330catch(cfor5) : cforMo330catch11;
                cfor = cforMo644class;
                cfor2 = cforMo337public9;
                if (cforMo330catch != cforMo337public7) {
                }
                return new Ctry(cifM35477this, cfor2, cfor, iM35438public != 4 ? new org.bouncycastle.math.ec.Cfor[]{cforMo330catch, b(cforMo330catch, cforMo342throw)} : new org.bouncycastle.math.ec.Cfor[]{cforMo330catch}, this.f32055try);
            }
            org.bouncycastle.math.ec.Cfor cforMo337public10 = cforMo330catch2.mo337public(cforMo330catch4);
            org.bouncycastle.math.ec.Cfor cforMo337public11 = cforMo330catch3.mo337public(cforMo330catch5);
            if (cforMo337public10.mo328break()) {
                return cforMo337public11.mo328break() ? mo378synchronized() : cifM35477this.mo35335throws();
            }
            org.bouncycastle.math.ec.Cfor cforMo342throw5 = cforMo337public10.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo330catch12 = cforMo330catch2.mo330catch(cforMo342throw5);
            org.bouncycastle.math.ec.Cfor cforMo330catch13 = cforMo330catch4.mo330catch(cforMo342throw5);
            org.bouncycastle.math.ec.Cfor cforMo330catch14 = cforMo330catch12.mo337public(cforMo330catch13).mo330catch(cforMo330catch3);
            org.bouncycastle.math.ec.Cfor cforMo337public12 = cforMo337public11.mo342throw().mo337public(cforMo330catch12).mo337public(cforMo330catch13);
            org.bouncycastle.math.ec.Cfor cforMo337public13 = cforMo330catch12.mo337public(cforMo337public12).mo330catch(cforMo337public11).mo337public(cforMo330catch14);
            cforMo330catch = cforMo337public10.mo330catch(cfor4);
            cfor = cforMo337public13;
            cfor2 = cforMo337public12;
            cforMo342throw = null;
            return new Ctry(cifM35477this, cfor2, cfor, iM35438public != 4 ? new org.bouncycastle.math.ec.Cfor[]{cforMo330catch, b(cforMo330catch, cforMo342throw)} : new org.bouncycastle.math.ec.Cfor[]{cforMo330catch}, this.f32055try);
        }

        public org.bouncycastle.math.ec.Cfor e(org.bouncycastle.math.ec.Cfor cfor) {
            return i(i(cfor));
        }

        public org.bouncycastle.math.ec.Cfor f() {
            org.bouncycastle.math.ec.Cfor[] cforArr = this.f32054new;
            org.bouncycastle.math.ec.Cfor cfor = cforArr[1];
            if (cfor != null) {
                return cfor;
            }
            org.bouncycastle.math.ec.Cfor cforB = b(cforArr[0], null);
            cforArr[1] = cforB;
            return cforB;
        }

        public org.bouncycastle.math.ec.Cfor g(org.bouncycastle.math.ec.Cfor cfor) {
            return i(cfor).mo331do(cfor);
        }

        public Ctry h(boolean z) {
            org.bouncycastle.math.ec.Cfor cfor = this.f32053if;
            org.bouncycastle.math.ec.Cfor cfor2 = this.f32052for;
            org.bouncycastle.math.ec.Cfor cfor3 = this.f32054new[0];
            org.bouncycastle.math.ec.Cfor cforF = f();
            org.bouncycastle.math.ec.Cfor cforMo331do = g(cfor.mo342throw()).mo331do(cforF);
            org.bouncycastle.math.ec.Cfor cforI = i(cfor2);
            org.bouncycastle.math.ec.Cfor cforMo330catch = cforI.mo330catch(cfor2);
            org.bouncycastle.math.ec.Cfor cforI2 = i(cfor.mo330catch(cforMo330catch));
            org.bouncycastle.math.ec.Cfor cforMo337public = cforMo331do.mo342throw().mo337public(i(cforI2));
            org.bouncycastle.math.ec.Cfor cforI3 = i(cforMo330catch.mo342throw());
            org.bouncycastle.math.ec.Cfor cforMo337public2 = cforMo331do.mo330catch(cforI2.mo337public(cforMo337public)).mo337public(cforI3);
            org.bouncycastle.math.ec.Cfor cforI4 = z ? i(cforI3.mo330catch(cforF)) : null;
            if (!cfor3.mo341this()) {
                cforI = cforI.mo330catch(cfor3);
            }
            return new Ctry(m35477this(), cforMo337public, cforMo337public2, new org.bouncycastle.math.ec.Cfor[]{cforI, cforI4}, this.f32055try);
        }

        public org.bouncycastle.math.ec.Cfor i(org.bouncycastle.math.ec.Cfor cfor) {
            return cfor.mo331do(cfor);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: implements */
        public Cnew mo642implements() {
            if (m35479throws()) {
                return this;
            }
            org.bouncycastle.math.ec.Cfor cfor = this.f32052for;
            if (cfor.mo328break()) {
                return this;
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            int iM35438public = cifM35477this.m35438public();
            if (iM35438public != 0) {
                return iM35438public != 4 ? mo378synchronized().mo373do(this) : h(false).mo373do(this);
            }
            org.bouncycastle.math.ec.Cfor cfor2 = this.f32053if;
            org.bouncycastle.math.ec.Cfor cforI = i(cfor);
            org.bouncycastle.math.ec.Cfor cforMo342throw = cforI.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo331do = g(cfor2.mo342throw()).mo331do(m35477this().m35443throw());
            org.bouncycastle.math.ec.Cfor cforMo337public = g(cfor2).mo330catch(cforMo342throw).mo337public(cforMo331do.mo342throw());
            if (cforMo337public.mo328break()) {
                return m35477this().mo35335throws();
            }
            org.bouncycastle.math.ec.Cfor cforMo334goto = cforMo337public.mo330catch(cforI).mo334goto();
            org.bouncycastle.math.ec.Cfor cforMo330catch = cforMo337public.mo330catch(cforMo334goto).mo330catch(cforMo331do);
            org.bouncycastle.math.ec.Cfor cforMo337public2 = cforMo342throw.mo342throw().mo330catch(cforMo334goto).mo337public(cforMo330catch);
            org.bouncycastle.math.ec.Cfor cforMo331do2 = cforMo337public2.mo337public(cforMo330catch).mo330catch(cforMo330catch.mo331do(cforMo337public2)).mo331do(cfor2);
            return new Ctry(cifM35477this, cforMo331do2, cfor2.mo337public(cforMo331do2).mo330catch(cforMo337public2).mo337public(cfor), this.f32055try);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: instanceof */
        public Cnew mo35468instanceof(int i) {
            org.bouncycastle.math.ec.Cfor cforMo342throw;
            if (i < 0) {
                throw new IllegalArgumentException("'e' cannot be negative");
            }
            if (i == 0 || m35479throws()) {
                return this;
            }
            if (i == 1) {
                return mo378synchronized();
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            org.bouncycastle.math.ec.Cfor cforMo330catch = this.f32052for;
            if (cforMo330catch.mo328break()) {
                return cifM35477this.mo35335throws();
            }
            int iM35438public = cifM35477this.m35438public();
            org.bouncycastle.math.ec.Cfor cforM35443throw = cifM35477this.m35443throw();
            org.bouncycastle.math.ec.Cfor cforMo330catch2 = this.f32053if;
            org.bouncycastle.math.ec.Cfor[] cforArr = this.f32054new;
            org.bouncycastle.math.ec.Cfor cforMo35333super = cforArr.length < 1 ? cifM35477this.mo35333super(ECConstants.ONE) : cforArr[0];
            if (!cforMo35333super.mo341this() && iM35438public != 0) {
                if (iM35438public == 1) {
                    cforMo342throw = cforMo35333super.mo342throw();
                    cforMo330catch2 = cforMo330catch2.mo330catch(cforMo35333super);
                    cforMo330catch = cforMo330catch.mo330catch(cforMo342throw);
                } else if (iM35438public == 2) {
                    cforMo342throw = null;
                } else {
                    if (iM35438public != 4) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    cforM35443throw = f();
                }
                cforM35443throw = b(cforMo35333super, cforMo342throw);
            }
            int i2 = 0;
            org.bouncycastle.math.ec.Cfor cfor = cforM35443throw;
            org.bouncycastle.math.ec.Cfor cforMo337public = cforMo330catch;
            org.bouncycastle.math.ec.Cfor cfor2 = cforMo330catch2;
            org.bouncycastle.math.ec.Cfor cforI = cfor;
            while (i2 < i) {
                if (cforMo337public.mo328break()) {
                    return cifM35477this.mo35335throws();
                }
                org.bouncycastle.math.ec.Cfor cforG = g(cfor2.mo342throw());
                org.bouncycastle.math.ec.Cfor cforI2 = i(cforMo337public);
                org.bouncycastle.math.ec.Cfor cforMo330catch3 = cforI2.mo330catch(cforMo337public);
                org.bouncycastle.math.ec.Cfor cforI3 = i(cfor2.mo330catch(cforMo330catch3));
                org.bouncycastle.math.ec.Cfor cforI4 = i(cforMo330catch3.mo342throw());
                if (!cforI.mo328break()) {
                    cforG = cforG.mo331do(cforI);
                    cforI = i(cforI4.mo330catch(cforI));
                }
                org.bouncycastle.math.ec.Cfor cforMo337public2 = cforG.mo342throw().mo337public(i(cforI3));
                cforMo337public = cforG.mo330catch(cforI3.mo337public(cforMo337public2)).mo337public(cforI4);
                cforMo35333super = cforMo35333super.mo341this() ? cforI2 : cforI2.mo330catch(cforMo35333super);
                i2++;
                cfor2 = cforMo337public2;
            }
            if (iM35438public == 0) {
                org.bouncycastle.math.ec.Cfor cforMo334goto = cforMo35333super.mo334goto();
                org.bouncycastle.math.ec.Cfor cforMo342throw2 = cforMo334goto.mo342throw();
                return new Ctry(cifM35477this, cfor2.mo330catch(cforMo342throw2), cforMo337public.mo330catch(cforMo342throw2.mo330catch(cforMo334goto)), this.f32055try);
            }
            if (iM35438public == 1) {
                return new Ctry(cifM35477this, cfor2.mo330catch(cforMo35333super), cforMo337public, new org.bouncycastle.math.ec.Cfor[]{cforMo35333super.mo330catch(cforMo35333super.mo342throw())}, this.f32055try);
            }
            if (iM35438public == 2) {
                return new Ctry(cifM35477this, cfor2, cforMo337public, new org.bouncycastle.math.ec.Cfor[]{cforMo35333super}, this.f32055try);
            }
            if (iM35438public == 4) {
                return new Ctry(cifM35477this, cfor2, cforMo337public, new org.bouncycastle.math.ec.Cfor[]{cforMo35333super, cforI}, this.f32055try);
            }
            throw new IllegalStateException("unsupported coordinate system");
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: new */
        public Cnew mo376new() {
            return new Ctry(null, m35456case(), m35462else(), false);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: private */
        public Cnew mo377private() {
            if (m35479throws()) {
                return this;
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            return cifM35477this.m35438public() != 0 ? new Ctry(cifM35477this, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try) : new Ctry(cifM35477this, this.f32053if, this.f32052for.mo333final(), this.f32055try);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: public */
        public org.bouncycastle.math.ec.Cfor mo2405public(int i) {
            return (i == 1 && 4 == m35455break()) ? f() : super.mo2405public(i);
        }

        @Override // org.bouncycastle.math.ec.Cnew
        /* renamed from: synchronized */
        public Cnew mo378synchronized() {
            org.bouncycastle.math.ec.Cfor cforMo337public;
            org.bouncycastle.math.ec.Cfor cforMo330catch;
            if (m35479throws()) {
                return this;
            }
            org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
            org.bouncycastle.math.ec.Cfor cfor = this.f32052for;
            if (cfor.mo328break()) {
                return cifM35477this.mo35335throws();
            }
            int iM35438public = cifM35477this.m35438public();
            org.bouncycastle.math.ec.Cfor cfor2 = this.f32053if;
            if (iM35438public == 0) {
                org.bouncycastle.math.ec.Cfor cforMo336new = g(cfor2.mo342throw()).mo331do(m35477this().m35443throw()).mo336new(i(cfor));
                org.bouncycastle.math.ec.Cfor cforMo337public2 = cforMo336new.mo342throw().mo337public(i(cfor2));
                return new Ctry(cifM35477this, cforMo337public2, cforMo336new.mo330catch(cfor2.mo337public(cforMo337public2)).mo337public(cfor), this.f32055try);
            }
            if (iM35438public == 1) {
                org.bouncycastle.math.ec.Cfor cfor3 = this.f32054new[0];
                boolean zMo341this = cfor3.mo341this();
                org.bouncycastle.math.ec.Cfor cforM35443throw = cifM35477this.m35443throw();
                if (!cforM35443throw.mo328break() && !zMo341this) {
                    cforM35443throw = cforM35443throw.mo330catch(cfor3.mo342throw());
                }
                org.bouncycastle.math.ec.Cfor cforMo331do = cforM35443throw.mo331do(g(cfor2.mo342throw()));
                org.bouncycastle.math.ec.Cfor cforMo330catch2 = zMo341this ? cfor : cfor.mo330catch(cfor3);
                org.bouncycastle.math.ec.Cfor cforMo342throw = zMo341this ? cfor.mo342throw() : cforMo330catch2.mo330catch(cfor);
                org.bouncycastle.math.ec.Cfor cforE = e(cfor2.mo330catch(cforMo342throw));
                org.bouncycastle.math.ec.Cfor cforMo337public3 = cforMo331do.mo342throw().mo337public(i(cforE));
                org.bouncycastle.math.ec.Cfor cforI = i(cforMo330catch2);
                org.bouncycastle.math.ec.Cfor cforMo330catch3 = cforMo337public3.mo330catch(cforI);
                org.bouncycastle.math.ec.Cfor cforI2 = i(cforMo342throw);
                return new Ctry(cifM35477this, cforMo330catch3, cforE.mo337public(cforMo337public3).mo330catch(cforMo331do).mo337public(i(cforI2.mo342throw())), new org.bouncycastle.math.ec.Cfor[]{i(zMo341this ? i(cforI2) : cforI.mo342throw()).mo330catch(cforMo330catch2)}, this.f32055try);
            }
            if (iM35438public != 2) {
                if (iM35438public == 4) {
                    return h(true);
                }
                throw new IllegalStateException("unsupported coordinate system");
            }
            org.bouncycastle.math.ec.Cfor cfor4 = this.f32054new[0];
            boolean zMo341this2 = cfor4.mo341this();
            org.bouncycastle.math.ec.Cfor cforMo342throw2 = cfor.mo342throw();
            org.bouncycastle.math.ec.Cfor cforMo342throw3 = cforMo342throw2.mo342throw();
            org.bouncycastle.math.ec.Cfor cforM35443throw2 = cifM35477this.m35443throw();
            org.bouncycastle.math.ec.Cfor cforMo333final = cforM35443throw2.mo333final();
            if (cforMo333final.mo339static().equals(BigInteger.valueOf(3L))) {
                org.bouncycastle.math.ec.Cfor cforMo342throw4 = zMo341this2 ? cfor4 : cfor4.mo342throw();
                cforMo337public = g(cfor2.mo331do(cforMo342throw4).mo330catch(cfor2.mo337public(cforMo342throw4)));
                cforMo330catch = cforMo342throw2.mo330catch(cfor2);
            } else {
                org.bouncycastle.math.ec.Cfor cforG = g(cfor2.mo342throw());
                if (zMo341this2) {
                    cforMo337public = cforG.mo331do(cforM35443throw2);
                    cforMo330catch = cfor2.mo330catch(cforMo342throw2);
                } else {
                    if (cforM35443throw2.mo328break()) {
                        cforMo337public = cforG;
                    } else {
                        org.bouncycastle.math.ec.Cfor cforMo342throw5 = cfor4.mo342throw().mo342throw();
                        if (cforMo333final.mo35378for() < cforM35443throw2.mo35378for()) {
                            cforMo337public = cforG.mo337public(cforMo342throw5.mo330catch(cforMo333final));
                        } else {
                            cforM35443throw2 = cforMo342throw5.mo330catch(cforM35443throw2);
                            cforMo337public = cforG.mo331do(cforM35443throw2);
                        }
                    }
                    cforMo330catch = cfor2.mo330catch(cforMo342throw2);
                }
            }
            org.bouncycastle.math.ec.Cfor cforE2 = e(cforMo330catch);
            org.bouncycastle.math.ec.Cfor cforMo337public4 = cforMo337public.mo342throw().mo337public(i(cforE2));
            org.bouncycastle.math.ec.Cfor cforMo337public5 = cforE2.mo337public(cforMo337public4).mo330catch(cforMo337public).mo337public(d(cforMo342throw3));
            org.bouncycastle.math.ec.Cfor cforI3 = i(cfor);
            if (!zMo341this2) {
                cforI3 = cforI3.mo330catch(cfor4);
            }
            return new Ctry(cifM35477this, cforMo337public4, cforMo337public5, new org.bouncycastle.math.ec.Cfor[]{cforI3}, this.f32055try);
        }
    }

    public Cnew(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2) {
        this(cif, cfor, cfor2, m35453final(cif));
    }

    public Cnew(org.bouncycastle.math.ec.Cif cif, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr) {
        this.f32050case = null;
        this.f32051do = cif;
        this.f32053if = cfor;
        this.f32052for = cfor2;
        this.f32054new = cforArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static org.bouncycastle.math.ec.Cfor[] m35453final(org.bouncycastle.math.ec.Cif cif) {
        int iM35438public = cif == null ? 0 : cif.m35438public();
        if (iM35438public == 0 || iM35438public == 5) {
            return f32049else;
        }
        org.bouncycastle.math.ec.Cfor cforMo35333super = cif.mo35333super(ECConstants.ONE);
        if (iM35438public != 1 && iM35438public != 2) {
            if (iM35438public == 3) {
                return new org.bouncycastle.math.ec.Cfor[]{cforMo35333super, cforMo35333super, cforMo35333super};
            }
            if (iM35438public == 4) {
                return new org.bouncycastle.math.ec.Cfor[]{cforMo35333super, cif.m35443throw()};
            }
            if (iM35438public != 6) {
                throw new IllegalArgumentException("unknown coordinate system");
            }
        }
        return new org.bouncycastle.math.ec.Cfor[]{cforMo35333super};
    }

    public Cnew a(Cnew cnew) {
        return mo378synchronized().mo373do(cnew);
    }

    /* renamed from: abstract, reason: not valid java name */
    public Cnew m35454abstract() {
        int iM35455break;
        if (m35479throws() || (iM35455break = m35455break()) == 0 || iM35455break == 5) {
            return this;
        }
        org.bouncycastle.math.ec.Cfor cforMo2405public = mo2405public(0);
        return cforMo2405public.mo341this() ? this : m35460continue(cforMo2405public.mo334goto());
    }

    /* renamed from: break, reason: not valid java name */
    public int m35455break() {
        org.bouncycastle.math.ec.Cif cif = this.f32051do;
        if (cif == null) {
            return 0;
        }
        return cif.m35438public();
    }

    /* renamed from: case, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor m35456case() {
        m35466if();
        return m35467import();
    }

    /* renamed from: catch, reason: not valid java name */
    public final Cnew m35457catch() {
        return m35454abstract().mo376new();
    }

    /* renamed from: class, reason: not valid java name */
    public byte[] m35458class() {
        return m35459const(this.f32055try);
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m35459const(boolean z) {
        if (m35479throws()) {
            return new byte[1];
        }
        Cnew cnewM35454abstract = m35454abstract();
        byte[] bArrM35379try = cnewM35454abstract.m35467import().m35379try();
        if (z) {
            byte[] bArr = new byte[bArrM35379try.length + 1];
            bArr[0] = (byte) (cnewM35454abstract.mo374goto() ? 3 : 2);
            System.arraycopy(bArrM35379try, 0, bArr, 1, bArrM35379try.length);
            return bArr;
        }
        byte[] bArrM35379try2 = cnewM35454abstract.mo375native().m35379try();
        byte[] bArr2 = new byte[bArrM35379try.length + bArrM35379try2.length + 1];
        bArr2[0] = 4;
        System.arraycopy(bArrM35379try, 0, bArr2, 1, bArrM35379try.length);
        System.arraycopy(bArrM35379try2, 0, bArr2, bArrM35379try.length + 1, bArrM35379try2.length);
        return bArr2;
    }

    /* renamed from: continue, reason: not valid java name */
    public Cnew m35460continue(org.bouncycastle.math.ec.Cfor cfor) {
        int iM35455break = m35455break();
        if (iM35455break != 1) {
            if (iM35455break == 2 || iM35455break == 3 || iM35455break == 4) {
                org.bouncycastle.math.ec.Cfor cforMo342throw = cfor.mo342throw();
                return m35465for(cforMo342throw, cforMo342throw.mo330catch(cfor));
            }
            if (iM35455break != 6) {
                throw new IllegalStateException("not a projective coordinate system");
            }
        }
        return m35465for(cfor, cfor);
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m35461default() {
        int iM35455break = m35455break();
        return iM35455break == 0 || iM35455break == 5 || m35479throws() || this.f32054new[0].mo341this();
    }

    /* renamed from: do */
    public abstract Cnew mo373do(Cnew cnew);

    /* renamed from: else, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor m35462else() {
        m35466if();
        return mo375native();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cnew) {
            return m35481try((Cnew) obj);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m35463extends() {
        return m35473static(false, true);
    }

    /* renamed from: finally, reason: not valid java name */
    public boolean m35464finally() {
        return m35473static(false, false);
    }

    /* renamed from: for, reason: not valid java name */
    public Cnew m35465for(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2) {
        return m35477this().mo35329break(m35475super().mo330catch(cfor), m35478throw().mo330catch(cfor2), this.f32055try);
    }

    /* renamed from: goto */
    public abstract boolean mo374goto();

    public int hashCode() {
        org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
        int iHashCode = cifM35477this == null ? 0 : cifM35477this.hashCode() ^ (-1);
        if (m35479throws()) {
            return iHashCode;
        }
        Cnew cnewM35454abstract = m35454abstract();
        return (iHashCode ^ (cnewM35454abstract.m35467import().hashCode() * 17)) ^ (cnewM35454abstract.mo375native().hashCode() * 257);
    }

    /* renamed from: if, reason: not valid java name */
    public void m35466if() {
        if (!m35461default()) {
            throw new IllegalStateException("point not in normal form");
        }
    }

    /* renamed from: implements */
    public Cnew mo642implements() {
        return a(this);
    }

    /* renamed from: import, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor m35467import() {
        return this.f32053if;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public Cnew mo35468instanceof(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("'e' cannot be negative");
        }
        Cnew cnewMo378synchronized = this;
        while (true) {
            i--;
            if (i < 0) {
                return cnewMo378synchronized;
            }
            cnewMo378synchronized = cnewMo378synchronized.mo378synchronized();
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public Cnew mo35469interface(org.bouncycastle.math.ec.Cfor cfor) {
        return m35479throws() ? this : m35477this().mo35331catch(m35475super().mo330catch(cfor), m35478throw(), m35483while(), this.f32055try);
    }

    /* renamed from: native */
    public org.bouncycastle.math.ec.Cfor mo375native() {
        return this.f32052for;
    }

    /* renamed from: new */
    public abstract Cnew mo376new();

    /* renamed from: package, reason: not valid java name */
    public Cnew m35470package(BigInteger bigInteger) {
        return m35477this().m35424default().multiply(this, bigInteger);
    }

    /* renamed from: private */
    public abstract Cnew mo377private();

    /* renamed from: protected, reason: not valid java name */
    public Cnew mo35471protected(org.bouncycastle.math.ec.Cfor cfor) {
        return m35479throws() ? this : m35477this().mo35331catch(m35475super(), m35478throw().mo330catch(cfor), m35483while(), this.f32055try);
    }

    /* renamed from: public */
    public org.bouncycastle.math.ec.Cfor mo2405public(int i) {
        if (i >= 0) {
            org.bouncycastle.math.ec.Cfor[] cforArr = this.f32054new;
            if (i < cforArr.length) {
                return cforArr[i];
            }
        }
        return null;
    }

    /* renamed from: return, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor[] m35472return() {
        org.bouncycastle.math.ec.Cfor[] cforArr = this.f32054new;
        int length = cforArr.length;
        if (length == 0) {
            return f32049else;
        }
        org.bouncycastle.math.ec.Cfor[] cforArr2 = new org.bouncycastle.math.ec.Cfor[length];
        System.arraycopy(cforArr, 0, cforArr2, 0, length);
        return cforArr2;
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m35473static(boolean z, boolean z2) {
        if (m35479throws()) {
            return true;
        }
        return !((Cbreak) m35477this().m35441strictfp(this, Cbreak.f31790new, new Cdo(z, z2))).m35265if();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public abstract boolean mo35474strictfp();

    /* renamed from: super, reason: not valid java name */
    public final org.bouncycastle.math.ec.Cfor m35475super() {
        return this.f32053if;
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m35476switch() {
        return this.f32055try;
    }

    /* renamed from: synchronized */
    public abstract Cnew mo378synchronized();

    /* renamed from: this, reason: not valid java name */
    public org.bouncycastle.math.ec.Cif m35477this() {
        return this.f32051do;
    }

    /* renamed from: throw, reason: not valid java name */
    public final org.bouncycastle.math.ec.Cfor m35478throw() {
        return this.f32052for;
    }

    /* renamed from: throws, reason: not valid java name */
    public boolean m35479throws() {
        if (this.f32053if != null && this.f32052for != null) {
            org.bouncycastle.math.ec.Cfor[] cforArr = this.f32054new;
            if (cforArr.length <= 0 || !cforArr[0].mo328break()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (m35479throws()) {
            return "INF";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append(m35475super());
        stringBuffer.append(',');
        stringBuffer.append(m35478throw());
        for (int i = 0; i < this.f32054new.length; i++) {
            stringBuffer.append(',');
            stringBuffer.append(this.f32054new[i]);
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    /* renamed from: transient, reason: not valid java name */
    public abstract Cnew mo35480transient(Cnew cnew);

    /* renamed from: try, reason: not valid java name */
    public boolean m35481try(Cnew cnew) {
        Cnew cnewM35454abstract;
        if (cnew == null) {
            return false;
        }
        org.bouncycastle.math.ec.Cif cifM35477this = m35477this();
        org.bouncycastle.math.ec.Cif cifM35477this2 = cnew.m35477this();
        boolean z = cifM35477this == null;
        boolean z2 = cifM35477this2 == null;
        boolean zM35479throws = m35479throws();
        boolean zM35479throws2 = cnew.m35479throws();
        if (zM35479throws || zM35479throws2) {
            if (zM35479throws && zM35479throws2) {
                return z || z2 || cifM35477this.m35427final(cifM35477this2);
            }
            return false;
        }
        if (z && z2) {
            cnewM35454abstract = this;
        } else if (z) {
            cnew = cnew.m35454abstract();
            cnewM35454abstract = this;
        } else if (z2) {
            cnewM35454abstract = m35454abstract();
        } else {
            if (!cifM35477this.m35427final(cifM35477this2)) {
                return false;
            }
            Cnew[] cnewArr = {this, cifM35477this.mo35435package(cnew)};
            cifM35477this.m35420abstract(cnewArr);
            cnewM35454abstract = cnewArr[0];
            cnew = cnewArr[1];
        }
        return cnewM35454abstract.m35467import().equals(cnew.m35467import()) && cnewM35454abstract.mo375native().equals(cnew.mo375native());
    }

    /* renamed from: volatile, reason: not valid java name */
    public boolean mo35482volatile() {
        BigInteger bigIntegerM35426extends;
        return ECConstants.ONE.equals(this.f32051do.m35434native()) || (bigIntegerM35426extends = this.f32051do.m35426extends()) == null || org.bouncycastle.math.ec.Cdo.m35364import(this, bigIntegerM35426extends).m35479throws();
    }

    /* renamed from: while, reason: not valid java name */
    public final org.bouncycastle.math.ec.Cfor[] m35483while() {
        return this.f32054new;
    }
}
