package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.hw1;
import android.support.v4.iw1;
import android.support.v4.p21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cconst;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.private, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cprivate extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31936native = 6;

    /* renamed from: import, reason: not valid java name */
    public iw1 f31937import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.private$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31938do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31940if;

        public Cdo(int i, long[] jArr) {
            this.f31938do = i;
            this.f31940if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31938do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM5843for = p21.m5843for();
            long[] jArrM5843for2 = p21.m5843for();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31938do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 9; i4++) {
                    long j2 = jArrM5843for[i4];
                    long[] jArr = this.f31940if;
                    jArrM5843for[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM5843for2[i4] = jArrM5843for2[i4] ^ (jArr[(i2 + 9) + i4] & j);
                }
                i2 += 18;
            }
            return Cprivate.this.mo35329break(new hw1(jArrM5843for), new hw1(jArrM5843for2), false);
        }
    }

    public Cprivate() {
        super(571, 2, 5, 10);
        this.f31937import = new iw1(this, null, null);
        this.f32022if = mo35333super(BigInteger.valueOf(0L));
        this.f32020for = mo35333super(BigInteger.valueOf(1L));
        this.f32023new = new BigInteger(1, Cfor.m36332if("020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001"));
        this.f32024try = BigInteger.valueOf(4L);
        this.f32017case = 6;
    }

    public int b() {
        return 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new iw1(this, cfor, cfor2, z);
    }

    public int c() {
        return 5;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        long[] jArr = new long[i2 * 9 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            p21.m5841do(((hw1) cnew.m35475super()).f2542do, 0, jArr, i3);
            int i5 = i3 + 9;
            p21.m5841do(((hw1) cnew.m35478throw()).f2542do, 0, jArr, i5);
            i3 = i5 + 9;
        }
        return new Cdo(i2, jArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new iw1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 10;
    }

    public int e() {
        return 571;
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
        return new Cprivate();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new hw1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return 571;
    }

    @Override // org.bouncycastle.math.ec.Cif.AbstractC0462if
    /* renamed from: synchronized */
    public boolean mo35339synchronized() {
        return true;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31937import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
