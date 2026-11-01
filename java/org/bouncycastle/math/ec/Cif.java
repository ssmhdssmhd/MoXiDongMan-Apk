package org.bouncycastle.math.ec;

import android.support.v4.hn0;
import android.support.v4.q21;
import android.support.v4.ve0;
import java.math.BigInteger;
import java.util.Hashtable;
import java.util.Random;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.endo.ECEndomorphism;
import org.bouncycastle.math.ec.endo.GLVEndomorphism;
import org.bouncycastle.math.field.FiniteField;

/* renamed from: org.bouncycastle.math.ec.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif {

    /* renamed from: break, reason: not valid java name */
    public static final int f32009break = 1;

    /* renamed from: catch, reason: not valid java name */
    public static final int f32010catch = 2;

    /* renamed from: class, reason: not valid java name */
    public static final int f32011class = 3;

    /* renamed from: const, reason: not valid java name */
    public static final int f32012const = 4;

    /* renamed from: final, reason: not valid java name */
    public static final int f32013final = 5;

    /* renamed from: super, reason: not valid java name */
    public static final int f32014super = 6;

    /* renamed from: this, reason: not valid java name */
    public static final int f32015this = 0;

    /* renamed from: throw, reason: not valid java name */
    public static final int f32016throw = 7;

    /* renamed from: do, reason: not valid java name */
    public FiniteField f32018do;

    /* renamed from: for, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor f32020for;

    /* renamed from: if, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor f32022if;

    /* renamed from: new, reason: not valid java name */
    public BigInteger f32023new;

    /* renamed from: try, reason: not valid java name */
    public BigInteger f32024try;

    /* renamed from: case, reason: not valid java name */
    public int f32017case = 0;

    /* renamed from: else, reason: not valid java name */
    public ECEndomorphism f32019else = null;

    /* renamed from: goto, reason: not valid java name */
    public ECMultiplier f32021goto = null;

    /* renamed from: org.bouncycastle.math.ec.if$case, reason: invalid class name */
    public static class Ccase extends Cfor {

        /* renamed from: public, reason: not valid java name */
        private static final int f32025public = 4;

        /* renamed from: import, reason: not valid java name */
        public BigInteger f32026import;

        /* renamed from: native, reason: not valid java name */
        public Cnew.Ctry f32027native;

        /* renamed from: while, reason: not valid java name */
        public BigInteger f32028while;

        public Ccase(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }

        public Ccase(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            super(bigInteger);
            this.f32028while = bigInteger;
            this.f32026import = Cfor.Cnew.m35388switch(bigInteger);
            this.f32027native = new Cnew.Ctry(this, null, null, false);
            this.f32022if = mo35333super(bigInteger2);
            this.f32020for = mo35333super(bigInteger3);
            this.f32023new = bigInteger4;
            this.f32024try = bigInteger5;
            this.f32017case = 4;
        }

        public Ccase(BigInteger bigInteger, BigInteger bigInteger2, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2) {
            this(bigInteger, bigInteger2, cfor, cfor2, null, null);
        }

        public Ccase(BigInteger bigInteger, BigInteger bigInteger2, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(bigInteger);
            this.f32028while = bigInteger;
            this.f32026import = bigInteger2;
            this.f32027native = new Cnew.Ctry(this, null, null, false);
            this.f32022if = cfor;
            this.f32020for = cfor2;
            this.f32023new = bigInteger3;
            this.f32024try = bigInteger4;
            this.f32017case = 4;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: break */
        public org.bouncycastle.math.ec.Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
            return new Cnew.Ctry(this, cfor, cfor2, z);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: catch */
        public org.bouncycastle.math.ec.Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
            return new Cnew.Ctry(this, cfor, cfor2, cforArr, z);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: new */
        public Cif mo35332new() {
            return new Ccase(this.f32028while, this.f32026import, this.f32022if, this.f32020for, this.f32023new, this.f32024try);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: package */
        public org.bouncycastle.math.ec.Cnew mo35435package(org.bouncycastle.math.ec.Cnew cnew) {
            int iM35438public;
            return (this == cnew.m35477this() || m35438public() != 2 || cnew.m35479throws() || !((iM35438public = cnew.m35477this().m35438public()) == 2 || iM35438public == 3 || iM35438public == 4)) ? super.mo35435package(cnew) : new Cnew.Ctry(this, mo35333super(cnew.f32053if.mo339static()), mo35333super(cnew.f32052for.mo339static()), new org.bouncycastle.math.ec.Cfor[]{mo35333super(cnew.f32054new[0].mo339static())}, cnew.f32055try);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: super */
        public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
            return new Cfor.Cnew(this.f32028while, this.f32026import, bigInteger);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: switch */
        public int mo35334switch() {
            return this.f32028while.bitLength();
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: throws */
        public org.bouncycastle.math.ec.Cnew mo35335throws() {
            return this.f32027native;
        }

        /* renamed from: transient, reason: not valid java name */
        public BigInteger m35445transient() {
            return this.f32028while;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: volatile */
        public boolean mo35337volatile(int i) {
            return i == 0 || i == 1 || i == 2 || i == 4;
        }
    }

    /* renamed from: org.bouncycastle.math.ec.if$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f32029do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ byte[] f32030for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f32031if;

        public Cdo(int i, int i2, byte[] bArr) {
            this.f32029do = i;
            this.f32031if = i2;
            this.f32030for = bArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f32029do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public org.bouncycastle.math.ec.Cnew lookup(int i) {
            int i2;
            int i3 = this.f32031if;
            byte[] bArr = new byte[i3];
            byte[] bArr2 = new byte[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < this.f32029do; i5++) {
                int i6 = ((i5 ^ i) - 1) >> 31;
                int i7 = 0;
                while (true) {
                    i2 = this.f32031if;
                    if (i7 < i2) {
                        byte b = bArr[i7];
                        byte[] bArr3 = this.f32030for;
                        bArr[i7] = (byte) (b ^ (bArr3[i4 + i7] & i6));
                        bArr2[i7] = (byte) ((bArr3[(i2 + i4) + i7] & i6) ^ bArr2[i7]);
                        i7++;
                    }
                }
                i4 += i2 * 2;
            }
            Cif cif = Cif.this;
            return cif.mo35329break(cif.mo35333super(new BigInteger(1, bArr)), Cif.this.mo35333super(new BigInteger(1, bArr2)), false);
        }
    }

    /* renamed from: org.bouncycastle.math.ec.if$for, reason: invalid class name */
    public static abstract class Cfor extends Cif {
        public Cfor(BigInteger bigInteger) {
            super(org.bouncycastle.math.field.Cdo.m35588if(bigInteger));
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: const */
        public org.bouncycastle.math.ec.Cnew mo35422const(int i, BigInteger bigInteger) {
            org.bouncycastle.math.ec.Cfor cforMo35333super = mo35333super(bigInteger);
            org.bouncycastle.math.ec.Cfor cforMo340super = cforMo35333super.mo342throw().mo331do(this.f32022if).mo330catch(cforMo35333super).mo331do(this.f32020for).mo340super();
            if (cforMo340super == null) {
                throw new IllegalArgumentException("Invalid point compression");
            }
            if (cforMo340super.mo338return() != (i == 1)) {
                cforMo340super = cforMo340super.mo333final();
            }
            return mo35329break(cforMo35333super, cforMo340super, true);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: private */
        public boolean mo35436private(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.compareTo(m35440static().getCharacteristic()) < 0;
        }
    }

    /* renamed from: org.bouncycastle.math.ec.if$if, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0462if extends Cif {

        /* renamed from: while, reason: not valid java name */
        private BigInteger[] f32033while;

        public AbstractC0462if(int i, int i2, int i3, int i4) {
            super(m35447transient(i, i2, i3, i4));
            this.f32033while = null;
        }

        /* renamed from: instanceof, reason: not valid java name */
        public static BigInteger m35446instanceof(int i, int[] iArr, BigInteger bigInteger) {
            return new org.bouncycastle.math.ec.Ccase(bigInteger).m35302protected(i, iArr).t();
        }

        /* renamed from: transient, reason: not valid java name */
        private static FiniteField m35447transient(int i, int i2, int i3, int i4) {
            if (i2 == 0) {
                throw new IllegalArgumentException("k1 must be > 0");
            }
            if (i3 == 0) {
                if (i4 == 0) {
                    return org.bouncycastle.math.field.Cdo.m35587do(new int[]{0, i2, i});
                }
                throw new IllegalArgumentException("k3 must be 0 if k2 == 0");
            }
            if (i3 <= i2) {
                throw new IllegalArgumentException("k2 must be > k1");
            }
            if (i4 > i3) {
                return org.bouncycastle.math.field.Cdo.m35587do(new int[]{0, i2, i3, i4, i});
            }
            throw new IllegalArgumentException("k3 must be > k2");
        }

        public org.bouncycastle.math.ec.Cfor a(org.bouncycastle.math.ec.Cfor cfor) {
            org.bouncycastle.math.ec.Cfor cforMo331do;
            if (cfor.mo328break()) {
                return cfor;
            }
            org.bouncycastle.math.ec.Cfor cforMo35333super = mo35333super(ECConstants.ZERO);
            int iMo35334switch = mo35334switch();
            Random random = new Random();
            do {
                org.bouncycastle.math.ec.Cfor cforMo35333super2 = mo35333super(new BigInteger(iMo35334switch, random));
                org.bouncycastle.math.ec.Cfor cforMo331do2 = cfor;
                cforMo331do = cforMo35333super;
                for (int i = 1; i < iMo35334switch; i++) {
                    org.bouncycastle.math.ec.Cfor cforMo342throw = cforMo331do2.mo342throw();
                    cforMo331do = cforMo331do.mo342throw().mo331do(cforMo342throw.mo330catch(cforMo35333super2));
                    cforMo331do2 = cforMo342throw.mo331do(cfor);
                }
                if (!cforMo331do2.mo328break()) {
                    return null;
                }
            } while (cforMo331do.mo342throw().mo331do(cforMo331do).mo328break());
            return cforMo331do;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: const */
        public org.bouncycastle.math.ec.Cnew mo35422const(int i, BigInteger bigInteger) {
            org.bouncycastle.math.ec.Cfor cforMo331do;
            org.bouncycastle.math.ec.Cfor cforMo35333super = mo35333super(bigInteger);
            if (cforMo35333super.mo328break()) {
                cforMo331do = m35432import().mo340super();
            } else {
                org.bouncycastle.math.ec.Cfor cforA = a(cforMo35333super.mo342throw().mo334goto().mo330catch(m35432import()).mo331do(m35443throw()).mo331do(cforMo35333super));
                if (cforA != null) {
                    if (cforA.mo338return() != (i == 1)) {
                        cforA = cforA.mo335if();
                    }
                    int iM35438public = m35438public();
                    cforMo331do = (iM35438public == 5 || iM35438public == 6) ? cforA.mo331do(cforMo35333super) : cforA.mo330catch(cforMo35333super);
                } else {
                    cforMo331do = null;
                }
            }
            if (cforMo331do != null) {
                return mo35329break(cforMo35333super, cforMo331do, true);
            }
            throw new IllegalArgumentException("Invalid point compression");
        }

        /* renamed from: implements, reason: not valid java name */
        public synchronized BigInteger[] m35448implements() {
            if (this.f32033while == null) {
                this.f32033while = Cthis.m35578this(this);
            }
            return this.f32033while;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: private */
        public boolean mo35436private(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.bitLength() <= mo35334switch();
        }

        /* renamed from: synchronized */
        public boolean mo35339synchronized() {
            return this.f32023new != null && this.f32024try != null && this.f32020for.mo341this() && (this.f32022if.mo328break() || this.f32022if.mo341this());
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: this */
        public org.bouncycastle.math.ec.Cnew mo35442this(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
            org.bouncycastle.math.ec.Cfor cforMo35333super = mo35333super(bigInteger);
            org.bouncycastle.math.ec.Cfor cforMo35333super2 = mo35333super(bigInteger2);
            int iM35438public = m35438public();
            if (iM35438public == 5 || iM35438public == 6) {
                if (!cforMo35333super.mo328break()) {
                    cforMo35333super2 = cforMo35333super2.mo336new(cforMo35333super).mo331do(cforMo35333super);
                } else if (!cforMo35333super2.mo342throw().equals(m35432import())) {
                    throw new IllegalArgumentException();
                }
            }
            return mo35329break(cforMo35333super, cforMo35333super2, z);
        }
    }

    /* renamed from: org.bouncycastle.math.ec.if$new, reason: invalid class name */
    public class Cnew {

        /* renamed from: do, reason: not valid java name */
        public int f32034do;

        /* renamed from: for, reason: not valid java name */
        public ECMultiplier f32035for;

        /* renamed from: if, reason: not valid java name */
        public ECEndomorphism f32036if;

        public Cnew(int i, ECEndomorphism eCEndomorphism, ECMultiplier eCMultiplier) {
            this.f32034do = i;
            this.f32036if = eCEndomorphism;
            this.f32035for = eCMultiplier;
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m35449do() {
            if (!Cif.this.mo35337volatile(this.f32034do)) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            Cif cifMo35332new = Cif.this.mo35332new();
            if (cifMo35332new == Cif.this) {
                throw new IllegalStateException("implementation returned current curve");
            }
            synchronized (cifMo35332new) {
                cifMo35332new.f32017case = this.f32034do;
                cifMo35332new.f32019else = this.f32036if;
                cifMo35332new.f32021goto = this.f32035for;
            }
            return cifMo35332new;
        }

        /* renamed from: for, reason: not valid java name */
        public Cnew m35450for(ECEndomorphism eCEndomorphism) {
            this.f32036if = eCEndomorphism;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cnew m35451if(int i) {
            this.f32034do = i;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cnew m35452new(ECMultiplier eCMultiplier) {
            this.f32035for = eCMultiplier;
            return this;
        }
    }

    /* renamed from: org.bouncycastle.math.ec.if$try, reason: invalid class name */
    public static class Ctry extends AbstractC0462if {

        /* renamed from: switch, reason: not valid java name */
        private static final int f32038switch = 6;

        /* renamed from: import, reason: not valid java name */
        private int f32039import;

        /* renamed from: native, reason: not valid java name */
        private int f32040native;

        /* renamed from: public, reason: not valid java name */
        private int f32041public;

        /* renamed from: return, reason: not valid java name */
        private int f32042return;

        /* renamed from: static, reason: not valid java name */
        private Cnew.C0463new f32043static;

        /* renamed from: org.bouncycastle.math.ec.if$try$do, reason: invalid class name */
        public class Cdo implements ECLookupTable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f32044do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ long[] f32045for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ int f32046if;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ int[] f32047new;

            public Cdo(int i, int i2, long[] jArr, int[] iArr) {
                this.f32044do = i;
                this.f32046if = i2;
                this.f32045for = jArr;
                this.f32047new = iArr;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return this.f32044do;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public org.bouncycastle.math.ec.Cnew lookup(int i) {
                int i2;
                long[] jArrM6355throws = q21.m6355throws(this.f32046if);
                long[] jArrM6355throws2 = q21.m6355throws(this.f32046if);
                int i3 = 0;
                for (int i4 = 0; i4 < this.f32044do; i4++) {
                    long j = ((i4 ^ i) - 1) >> 31;
                    int i5 = 0;
                    while (true) {
                        i2 = this.f32046if;
                        if (i5 < i2) {
                            long j2 = jArrM6355throws[i5];
                            long[] jArr = this.f32045for;
                            jArrM6355throws[i5] = j2 ^ (jArr[i3 + i5] & j);
                            jArrM6355throws2[i5] = jArrM6355throws2[i5] ^ (jArr[(i2 + i3) + i5] & j);
                            i5++;
                        }
                    }
                    i3 += i2 * 2;
                }
                Ctry ctry = Ctry.this;
                return ctry.mo35329break(new Cfor.C0461for(ctry.f32039import, this.f32047new, new org.bouncycastle.math.ec.Ccase(jArrM6355throws)), new Cfor.C0461for(Ctry.this.f32039import, this.f32047new, new org.bouncycastle.math.ec.Ccase(jArrM6355throws2)), false);
            }
        }

        public Ctry(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i, i2, i3, i4, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public Ctry(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i, i2, i3, i4);
            this.f32039import = i;
            this.f32040native = i2;
            this.f32041public = i3;
            this.f32042return = i4;
            this.f32023new = bigInteger3;
            this.f32024try = bigInteger4;
            this.f32043static = new Cnew.C0463new(this, null, null, false);
            this.f32022if = mo35333super(bigInteger);
            this.f32020for = mo35333super(bigInteger2);
            this.f32017case = 6;
        }

        public Ctry(int i, int i2, int i3, int i4, org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, BigInteger bigInteger, BigInteger bigInteger2) {
            super(i, i2, i3, i4);
            this.f32039import = i;
            this.f32040native = i2;
            this.f32041public = i3;
            this.f32042return = i4;
            this.f32023new = bigInteger;
            this.f32024try = bigInteger2;
            this.f32043static = new Cnew.C0463new(this, null, null, false);
            this.f32022if = cfor;
            this.f32020for = cfor2;
            this.f32017case = 6;
        }

        public Ctry(int i, int i2, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i, i2, 0, 0, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public Ctry(int i, int i2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i, i2, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: break */
        public org.bouncycastle.math.ec.Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
            return new Cnew.C0463new(this, cfor, cfor2, z);
        }

        public int c() {
            return this.f32040native;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: case */
        public ECLookupTable mo35330case(org.bouncycastle.math.ec.Cnew[] cnewArr, int i, int i2) {
            int i3 = (this.f32039import + 63) >>> 6;
            int[] iArr = g() ? new int[]{this.f32040native} : new int[]{this.f32040native, this.f32041public, this.f32042return};
            long[] jArr = new long[i2 * i3 * 2];
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                org.bouncycastle.math.ec.Cnew cnew = cnewArr[i + i5];
                ((Cfor.C0461for) cnew.m35475super()).f32002new.m35293break(jArr, i4);
                int i6 = i4 + i3;
                ((Cfor.C0461for) cnew.m35478throw()).f32002new.m35293break(jArr, i6);
                i4 = i6 + i3;
            }
            return new Cdo(i2, i3, jArr, iArr);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: catch */
        public org.bouncycastle.math.ec.Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
            return new Cnew.C0463new(this, cfor, cfor2, cforArr, z);
        }

        public int d() {
            return this.f32041public;
        }

        public int e() {
            return this.f32042return;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: else */
        public ECMultiplier mo35344else() {
            return mo35339synchronized() ? new Cconst() : super.mo35344else();
        }

        public int f() {
            return this.f32039import;
        }

        public boolean g() {
            return this.f32041public == 0 && this.f32042return == 0;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: new */
        public Cif mo35332new() {
            return new Ctry(this.f32039import, this.f32040native, this.f32041public, this.f32042return, this.f32022if, this.f32020for, this.f32023new, this.f32024try);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: super */
        public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
            return new Cfor.C0461for(this.f32039import, this.f32040native, this.f32041public, this.f32042return, bigInteger);
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: switch */
        public int mo35334switch() {
            return this.f32039import;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: throws */
        public org.bouncycastle.math.ec.Cnew mo35335throws() {
            return this.f32043static;
        }

        @Override // org.bouncycastle.math.ec.Cif
        /* renamed from: volatile */
        public boolean mo35337volatile(int i) {
            return i == 0 || i == 1 || i == 6;
        }
    }

    public Cif(FiniteField finiteField) {
        this.f32018do = finiteField;
    }

    /* renamed from: while, reason: not valid java name */
    public static int[] m35419while() {
        return new int[]{0, 1, 2, 3, 4, 5, 6, 7};
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m35420abstract(org.bouncycastle.math.ec.Cnew[] cnewArr) {
        m35423continue(cnewArr, 0, cnewArr.length, null);
    }

    /* renamed from: break */
    public abstract org.bouncycastle.math.ec.Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z);

    /* renamed from: case */
    public ECLookupTable mo35330case(org.bouncycastle.math.ec.Cnew[] cnewArr, int i, int i2) {
        int iMo35334switch = (mo35334switch() + 7) >>> 3;
        byte[] bArr = new byte[i2 * iMo35334switch * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            org.bouncycastle.math.ec.Cnew cnew = cnewArr[i + i4];
            byte[] byteArray = cnew.m35475super().mo339static().toByteArray();
            byte[] byteArray2 = cnew.m35478throw().mo339static().toByteArray();
            int i5 = 1;
            int i6 = byteArray.length > iMo35334switch ? 1 : 0;
            int length = byteArray.length - i6;
            if (byteArray2.length <= iMo35334switch) {
                i5 = 0;
            }
            int length2 = byteArray2.length - i5;
            int i7 = i3 + iMo35334switch;
            System.arraycopy(byteArray, i6, bArr, i7 - length, length);
            i3 = i7 + iMo35334switch;
            System.arraycopy(byteArray2, i5, bArr, i3 - length2, length2);
        }
        return new Cdo(i2, iMo35334switch, bArr);
    }

    /* renamed from: catch */
    public abstract org.bouncycastle.math.ec.Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z);

    /* renamed from: class, reason: not valid java name */
    public org.bouncycastle.math.ec.Cnew m35421class(byte[] bArr) {
        org.bouncycastle.math.ec.Cnew cnewMo35335throws;
        int iMo35334switch = (mo35334switch() + 7) / 8;
        byte b = bArr[0];
        if (b != 0) {
            if (b == 2 || b == 3) {
                if (bArr.length != iMo35334switch + 1) {
                    throw new IllegalArgumentException("Incorrect length for compressed encoding");
                }
                cnewMo35335throws = mo35422const(b & 1, org.bouncycastle.util.Cdo.m36312goto(bArr, 1, iMo35334switch));
                if (!cnewMo35335throws.m35473static(true, true)) {
                    throw new IllegalArgumentException("Invalid point");
                }
            } else if (b != 4) {
                if (b != 6 && b != 7) {
                    throw new IllegalArgumentException("Invalid point encoding 0x" + Integer.toString(b, 16));
                }
                if (bArr.length != (iMo35334switch * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for hybrid encoding");
                }
                BigInteger bigIntegerM36312goto = org.bouncycastle.util.Cdo.m36312goto(bArr, 1, iMo35334switch);
                BigInteger bigIntegerM36312goto2 = org.bouncycastle.util.Cdo.m36312goto(bArr, iMo35334switch + 1, iMo35334switch);
                if (bigIntegerM36312goto2.testBit(0) != (b == 7)) {
                    throw new IllegalArgumentException("Inconsistent Y coordinate in hybrid encoding");
                }
                cnewMo35335throws = m35433interface(bigIntegerM36312goto, bigIntegerM36312goto2);
            } else {
                if (bArr.length != (iMo35334switch * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for uncompressed encoding");
                }
                cnewMo35335throws = m35433interface(org.bouncycastle.util.Cdo.m36312goto(bArr, 1, iMo35334switch), org.bouncycastle.util.Cdo.m36312goto(bArr, iMo35334switch + 1, iMo35334switch));
            }
        } else {
            if (bArr.length != 1) {
                throw new IllegalArgumentException("Incorrect length for infinity encoding");
            }
            cnewMo35335throws = mo35335throws();
        }
        if (b == 0 || !cnewMo35335throws.m35479throws()) {
            return cnewMo35335throws;
        }
        throw new IllegalArgumentException("Invalid infinity encoding");
    }

    /* renamed from: const, reason: not valid java name */
    public abstract org.bouncycastle.math.ec.Cnew mo35422const(int i, BigInteger bigInteger);

    /* renamed from: continue, reason: not valid java name */
    public void m35423continue(org.bouncycastle.math.ec.Cnew[] cnewArr, int i, int i2, org.bouncycastle.math.ec.Cfor cfor) {
        m35429for(cnewArr, i, i2);
        int iM35438public = m35438public();
        if (iM35438public == 0 || iM35438public == 5) {
            if (cfor != null) {
                throw new IllegalArgumentException("'iso' not valid for affine coordinates");
            }
            return;
        }
        org.bouncycastle.math.ec.Cfor[] cforArr = new org.bouncycastle.math.ec.Cfor[i2];
        int[] iArr = new int[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i + i4;
            org.bouncycastle.math.ec.Cnew cnew = cnewArr[i5];
            if (cnew != null && (cfor != null || !cnew.m35461default())) {
                cforArr[i3] = cnew.mo2405public(0);
                iArr[i3] = i5;
                i3++;
            }
        }
        if (i3 == 0) {
            return;
        }
        org.bouncycastle.math.ec.Cdo.m35374while(cforArr, 0, i3, cfor);
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = iArr[i6];
            cnewArr[i7] = cnewArr[i7].m35460continue(cforArr[i6]);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public synchronized ECMultiplier m35424default() {
        if (this.f32021goto == null) {
            this.f32021goto = mo35344else();
        }
        return this.f32021goto;
    }

    /* renamed from: do, reason: not valid java name */
    public void m35425do(org.bouncycastle.math.ec.Cnew cnew) {
        if (cnew == null || this != cnew.m35477this()) {
            throw new IllegalArgumentException("'point' must be non-null and on this curve");
        }
    }

    /* renamed from: else */
    public ECMultiplier mo35344else() {
        ECEndomorphism eCEndomorphism = this.f32019else;
        return eCEndomorphism instanceof GLVEndomorphism ? new ve0(this, (GLVEndomorphism) eCEndomorphism) : new Ccatch();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof Cif) && m35427final((Cif) obj));
    }

    /* renamed from: extends, reason: not valid java name */
    public BigInteger m35426extends() {
        return this.f32023new;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m35427final(Cif cif) {
        return this == cif || (cif != null && m35440static().equals(cif.m35440static()) && m35443throw().mo339static().equals(cif.m35443throw().mo339static()) && m35432import().mo339static().equals(cif.m35432import().mo339static()));
    }

    /* renamed from: finally, reason: not valid java name */
    public PreCompInfo m35428finally(org.bouncycastle.math.ec.Cnew cnew, String str) {
        Hashtable hashtable;
        PreCompInfo preCompInfo;
        m35425do(cnew);
        synchronized (cnew) {
            hashtable = cnew.f32050case;
        }
        if (hashtable == null) {
            return null;
        }
        synchronized (hashtable) {
            preCompInfo = (PreCompInfo) hashtable.get(str);
        }
        return preCompInfo;
    }

    /* renamed from: for, reason: not valid java name */
    public void m35429for(org.bouncycastle.math.ec.Cnew[] cnewArr, int i, int i2) {
        if (cnewArr == null) {
            throw new IllegalArgumentException("'points' cannot be null");
        }
        if (i < 0 || i2 < 0 || i > cnewArr.length - i2) {
            throw new IllegalArgumentException("invalid range specified for 'points'");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            org.bouncycastle.math.ec.Cnew cnew = cnewArr[i + i3];
            if (cnew != null && this != cnew.m35477this()) {
                throw new IllegalArgumentException("'points' entries must be null or on this curve");
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public org.bouncycastle.math.ec.Cnew m35430goto(BigInteger bigInteger, BigInteger bigInteger2) {
        return mo35442this(bigInteger, bigInteger2, false);
    }

    public int hashCode() {
        return (m35440static().hashCode() ^ hn0.m3071do(m35443throw().mo339static().hashCode(), 8)) ^ hn0.m3071do(m35432import().mo339static().hashCode(), 16);
    }

    /* renamed from: if, reason: not valid java name */
    public void m35431if(org.bouncycastle.math.ec.Cnew[] cnewArr) {
        m35429for(cnewArr, 0, cnewArr.length);
    }

    /* renamed from: import, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor m35432import() {
        return this.f32020for;
    }

    /* renamed from: interface, reason: not valid java name */
    public org.bouncycastle.math.ec.Cnew m35433interface(BigInteger bigInteger, BigInteger bigInteger2) {
        org.bouncycastle.math.ec.Cnew cnewM35430goto = m35430goto(bigInteger, bigInteger2);
        if (cnewM35430goto.m35463extends()) {
            return cnewM35430goto;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }

    /* renamed from: native, reason: not valid java name */
    public BigInteger m35434native() {
        return this.f32024try;
    }

    /* renamed from: new */
    public abstract Cif mo35332new();

    /* renamed from: package, reason: not valid java name */
    public org.bouncycastle.math.ec.Cnew mo35435package(org.bouncycastle.math.ec.Cnew cnew) {
        if (this == cnew.m35477this()) {
            return cnew;
        }
        if (cnew.m35479throws()) {
            return mo35335throws();
        }
        org.bouncycastle.math.ec.Cnew cnewM35454abstract = cnew.m35454abstract();
        return mo35442this(cnewM35454abstract.m35467import().mo339static(), cnewM35454abstract.mo375native().mo339static(), cnewM35454abstract.f32055try);
    }

    /* renamed from: private, reason: not valid java name */
    public abstract boolean mo35436private(BigInteger bigInteger);

    /* renamed from: protected, reason: not valid java name */
    public org.bouncycastle.math.ec.Cnew m35437protected(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
        org.bouncycastle.math.ec.Cnew cnewMo35442this = mo35442this(bigInteger, bigInteger2, z);
        if (cnewMo35442this.m35463extends()) {
            return cnewMo35442this;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }

    /* renamed from: public, reason: not valid java name */
    public int m35438public() {
        return this.f32017case;
    }

    /* renamed from: return, reason: not valid java name */
    public ECEndomorphism m35439return() {
        return this.f32019else;
    }

    /* renamed from: static, reason: not valid java name */
    public FiniteField m35440static() {
        return this.f32018do;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public PreCompInfo m35441strictfp(org.bouncycastle.math.ec.Cnew cnew, String str, PreCompCallback preCompCallback) {
        Hashtable hashtable;
        PreCompInfo preCompInfoPrecompute;
        m35425do(cnew);
        synchronized (cnew) {
            hashtable = cnew.f32050case;
            if (hashtable == null) {
                hashtable = new Hashtable(4);
                cnew.f32050case = hashtable;
            }
        }
        synchronized (hashtable) {
            PreCompInfo preCompInfo = (PreCompInfo) hashtable.get(str);
            preCompInfoPrecompute = preCompCallback.precompute(preCompInfo);
            if (preCompInfoPrecompute != preCompInfo) {
                hashtable.put(str, preCompInfoPrecompute);
            }
        }
        return preCompInfoPrecompute;
    }

    /* renamed from: super */
    public abstract org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger);

    /* renamed from: switch */
    public abstract int mo35334switch();

    /* renamed from: this, reason: not valid java name */
    public org.bouncycastle.math.ec.Cnew mo35442this(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
        return mo35329break(mo35333super(bigInteger), mo35333super(bigInteger2), z);
    }

    /* renamed from: throw, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor m35443throw() {
        return this.f32022if;
    }

    /* renamed from: throws */
    public abstract org.bouncycastle.math.ec.Cnew mo35335throws();

    /* renamed from: try, reason: not valid java name */
    public synchronized Cnew m35444try() {
        return new Cnew(this.f32017case, this.f32019else, this.f32021goto);
    }

    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 0;
    }
}
