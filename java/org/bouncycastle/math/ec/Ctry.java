package org.bouncycastle.math.ec;

import android.support.v4.jc0;
import java.math.BigInteger;

/* renamed from: org.bouncycastle.math.ec.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final String f32162do = "bc_fixed_point";

    /* renamed from: org.bouncycastle.math.ec.try$do, reason: invalid class name */
    public static class Cdo implements PreCompCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f32163do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cnew f32164if;

        public Cdo(Cif cif, Cnew cnew) {
            this.f32163do = cif;
            this.f32164if = cnew;
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m35585do(jc0 jc0Var, int i) {
            return jc0Var != null && m35586if(jc0Var.m3825do(), i);
        }

        /* renamed from: if, reason: not valid java name */
        private boolean m35586if(ECLookupTable eCLookupTable, int i) {
            return eCLookupTable != null && eCLookupTable.getSize() >= i;
        }

        @Override // org.bouncycastle.math.ec.PreCompCallback
        public PreCompInfo precompute(PreCompInfo preCompInfo) {
            jc0 jc0Var = preCompInfo instanceof jc0 ? (jc0) preCompInfo : null;
            int iM35582do = Ctry.m35582do(this.f32163do);
            int i = iM35582do > 250 ? 6 : 5;
            int i2 = 1 << i;
            if (m35585do(jc0Var, i2)) {
                return jc0Var;
            }
            int i3 = ((iM35582do + i) - 1) / i;
            Cnew[] cnewArr = new Cnew[i + 1];
            cnewArr[0] = this.f32164if;
            for (int i4 = 1; i4 < i; i4++) {
                cnewArr[i4] = cnewArr[i4 - 1].mo35468instanceof(i3);
            }
            cnewArr[i] = cnewArr[0].mo35480transient(cnewArr[1]);
            this.f32163do.m35420abstract(cnewArr);
            Cnew[] cnewArr2 = new Cnew[i2];
            cnewArr2[0] = cnewArr[0];
            for (int i5 = i - 1; i5 >= 0; i5--) {
                Cnew cnew = cnewArr[i5];
                int i6 = 1 << i5;
                for (int i7 = i6; i7 < i2; i7 += i6 << 1) {
                    cnewArr2[i7] = cnewArr2[i7 - i6].mo373do(cnew);
                }
            }
            this.f32163do.m35420abstract(cnewArr2);
            jc0 jc0Var2 = new jc0();
            jc0Var2.m3828new(this.f32163do.mo35330case(cnewArr2, 0, i2));
            jc0Var2.m3829try(cnewArr[i]);
            jc0Var2.m3824case(i);
            return jc0Var2;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m35582do(Cif cif) {
        BigInteger bigIntegerM35426extends = cif.m35426extends();
        return bigIntegerM35426extends == null ? cif.mo35334switch() + 1 : bigIntegerM35426extends.bitLength();
    }

    /* renamed from: for, reason: not valid java name */
    public static jc0 m35583for(Cnew cnew) {
        Cif cifM35477this = cnew.m35477this();
        return (jc0) cifM35477this.m35441strictfp(cnew, f32162do, new Cdo(cifM35477this, cnew));
    }

    /* renamed from: if, reason: not valid java name */
    public static jc0 m35584if(PreCompInfo preCompInfo) {
        if (preCompInfo instanceof jc0) {
            return (jc0) preCompInfo;
        }
        return null;
    }
}
