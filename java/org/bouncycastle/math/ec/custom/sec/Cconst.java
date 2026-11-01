package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.bv1;
import android.support.v4.cv1;
import android.support.v4.g21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31860native = 6;

    /* renamed from: import, reason: not valid java name */
    public cv1 f31861import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.const$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31862do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31864if;

        public Cdo(int i, long[] jArr) {
            this.f31862do = i;
            this.f31864if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31862do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM2516catch = g21.m2516catch();
            long[] jArrM2516catch2 = g21.m2516catch();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31862do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 2; i4++) {
                    long j2 = jArrM2516catch[i4];
                    long[] jArr = this.f31864if;
                    jArrM2516catch[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM2516catch2[i4] = jArrM2516catch2[i4] ^ (jArr[(i2 + 2) + i4] & j);
                }
                i2 += 4;
            }
            return Cconst.this.mo35329break(new bv1(jArrM2516catch), new bv1(jArrM2516catch2), false);
        }
    }

    public Cconst() {
        super(113, 9, 0, 0);
        this.f31861import = new cv1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("003088250CA6E7C7FE649CE85820F7")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("00E8BEE4D3E2260744188BE0E9C723")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("0100000000000000D9CCEC8A39E56F"));
        this.f32024try = BigInteger.valueOf(2L);
        this.f32017case = 6;
    }

    public int b() {
        return 9;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new cv1(this, cfor, cfor2, z);
    }

    public int c() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        long[] jArr = new long[i2 * 2 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            g21.m2527goto(((bv1) cnew.m35475super()).f544do, 0, jArr, i3);
            int i5 = i3 + 2;
            g21.m2527goto(((bv1) cnew.m35478throw()).f544do, 0, jArr, i5);
            i3 = i5 + 2;
        }
        return new Cdo(i2, jArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new cv1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 0;
    }

    public int e() {
        return 113;
    }

    public boolean f() {
        return true;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cconst();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new bv1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return 113;
    }

    @Override // org.bouncycastle.math.ec.Cif.AbstractC0462if
    /* renamed from: synchronized */
    public boolean mo35339synchronized() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31861import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
