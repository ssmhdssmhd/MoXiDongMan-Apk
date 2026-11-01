package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.i21;
import android.support.v4.jv1;
import android.support.v4.lv1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31915native = 6;

    /* renamed from: import, reason: not valid java name */
    public lv1 f31916import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.import$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31917do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31919if;

        public Cdo(int i, long[] jArr) {
            this.f31917do = i;
            this.f31919if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31917do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM3210catch = i21.m3210catch();
            long[] jArrM3210catch2 = i21.m3210catch();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31917do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 3; i4++) {
                    long j2 = jArrM3210catch[i4];
                    long[] jArr = this.f31919if;
                    jArrM3210catch[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM3210catch2[i4] = jArrM3210catch2[i4] ^ (jArr[(i2 + 3) + i4] & j);
                }
                i2 += 6;
            }
            return Cimport.this.mo35329break(new jv1(jArrM3210catch), new jv1(jArrM3210catch2), false);
        }
    }

    public Cimport() {
        super(163, 3, 6, 7);
        this.f31916import = new lv1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("07B6882CAAEFA84F9554FF8428BD88E246D2782AE2")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B"));
        this.f32024try = BigInteger.valueOf(2L);
        this.f32017case = 6;
    }

    public int b() {
        return 3;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new lv1(this, cfor, cfor2, z);
    }

    public int c() {
        return 6;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        long[] jArr = new long[i2 * 3 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            i21.m3221goto(((jv1) cnew.m35475super()).f3229do, 0, jArr, i3);
            int i5 = i3 + 3;
            i21.m3221goto(((jv1) cnew.m35478throw()).f3229do, 0, jArr, i5);
            i3 = i5 + 3;
        }
        return new Cdo(i2, jArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new lv1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 7;
    }

    public int e() {
        return 163;
    }

    public boolean f() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cimport();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new jv1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return 163;
    }

    @Override // org.bouncycastle.math.ec.Cif.AbstractC0462if
    /* renamed from: synchronized */
    public boolean mo35339synchronized() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31916import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
