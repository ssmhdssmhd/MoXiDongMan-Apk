package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.i21;
import android.support.v4.jv1;
import android.support.v4.kv1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cconst;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECMultiplier;

/* renamed from: org.bouncycastle.math.ec.custom.sec.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31988native = 6;

    /* renamed from: import, reason: not valid java name */
    public kv1 f31989import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.while$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31990do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31992if;

        public Cdo(int i, long[] jArr) {
            this.f31990do = i;
            this.f31992if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31990do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM3210catch = i21.m3210catch();
            long[] jArrM3210catch2 = i21.m3210catch();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31990do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 3; i4++) {
                    long j2 = jArrM3210catch[i4];
                    long[] jArr = this.f31992if;
                    jArrM3210catch[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM3210catch2[i4] = jArrM3210catch2[i4] ^ (jArr[(i2 + 3) + i4] & j);
                }
                i2 += 6;
            }
            return Cwhile.this.mo35329break(new jv1(jArrM3210catch), new jv1(jArrM3210catch2), false);
        }
    }

    public Cwhile() {
        super(163, 3, 6, 7);
        this.f31989import = new kv1(this, null, null);
        Cfor cforMo35333super = mo35333super(BigInteger.valueOf(1L));
        this.f32022if = cforMo35333super;
        this.f32020for = cforMo35333super;
        this.f32023new = new BigInteger(1, org.bouncycastle.util.encoders.Cfor.m36332if("04000000000000000000020108A2E0CC0D99F8A5EF"));
        this.f32024try = BigInteger.valueOf(2L);
        this.f32017case = 6;
    }

    public int b() {
        return 3;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(Cfor cfor, Cfor cfor2, boolean z) {
        return new kv1(this, cfor, cfor2, z);
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
    public Cnew mo35331catch(Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
        return new kv1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 7;
    }

    public int e() {
        return 163;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: else */
    public ECMultiplier mo35344else() {
        return new Cconst();
    }

    public boolean f() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cwhile();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public Cfor mo35333super(BigInteger bigInteger) {
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
        return true;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31989import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
