package org.bouncycastle.math.ec;

import android.support.v4.Cvolatile;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* renamed from: org.bouncycastle.math.ec.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst extends Cvolatile {

    /* renamed from: do, reason: not valid java name */
    public static final String f31814do = "bc_wtnaf";

    /* renamed from: org.bouncycastle.math.ec.const$do, reason: invalid class name */
    public static class Cdo implements PreCompCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cnew.Cif f31815do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ byte f31816if;

        public Cdo(Cnew.Cif cif, byte b) {
            this.f31815do = cif;
            this.f31816if = b;
        }

        @Override // org.bouncycastle.math.ec.PreCompCallback
        public PreCompInfo precompute(PreCompInfo preCompInfo) {
            if (preCompInfo instanceof Cfinal) {
                return preCompInfo;
            }
            Cfinal cfinal = new Cfinal();
            cfinal.m35377if(Cthis.m35563case(this.f31815do, this.f31816if));
            return cfinal;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static Cnew.Cif m35327for(Cnew.Cif cif, byte[] bArr) {
        Cif.AbstractC0462if abstractC0462if = (Cif.AbstractC0462if) cif.m35477this();
        Cnew.Cif[] cifArrM35376do = ((Cfinal) abstractC0462if.m35441strictfp(cif, f31814do, new Cdo(cif, abstractC0462if.m35443throw().mo339static().byteValue()))).m35376do();
        Cnew.Cif[] cifArr = new Cnew.Cif[cifArrM35376do.length];
        for (int i = 0; i < cifArrM35376do.length; i++) {
            cifArr[i] = (Cnew.Cif) cifArrM35376do[i].mo377private();
        }
        Cnew.Cif cif2 = (Cnew.Cif) cif.m35477this().mo35335throws();
        int i2 = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            i2++;
            byte b = bArr[length];
            if (b != 0) {
                cif2 = (Cnew.Cif) cif2.c(i2).mo373do(b > 0 ? cifArrM35376do[b >>> 1] : cifArr[(-b) >>> 1]);
                i2 = 0;
            }
        }
        return i2 > 0 ? cif2.c(i2) : cif2;
    }

    /* renamed from: new, reason: not valid java name */
    private Cnew.Cif m35328new(Cnew.Cif cif, Csuper csuper, byte b, byte b2) {
        Csuper[] csuperArr = b == 0 ? Cthis.f32153case : Cthis.f32157goto;
        return m35327for(cif, Cthis.m35576public(b2, csuper, (byte) 4, BigInteger.valueOf(16L), Cthis.m35562break(b2, 4), csuperArr));
    }

    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        if (!(cnew instanceof Cnew.Cif)) {
            throw new IllegalArgumentException("Only ECPoint.AbstractF2m can be used in WTauNafMultiplier");
        }
        Cnew.Cif cif = (Cnew.Cif) cnew;
        Cif.AbstractC0462if abstractC0462if = (Cif.AbstractC0462if) cif.m35477this();
        int iMo35334switch = abstractC0462if.mo35334switch();
        byte bByteValue = abstractC0462if.m35443throw().mo339static().byteValue();
        byte bM35570for = Cthis.m35570for(bByteValue);
        return m35328new(cif, Cthis.m35579throw(bigInteger, iMo35334switch, bByteValue, abstractC0462if.m35448implements(), bM35570for, (byte) 10), bByteValue, bM35570for);
    }
}
