package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.dw1;
import android.support.v4.fw1;
import android.support.v4.l80;
import android.support.v4.n21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.package, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpackage extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31931native = 6;

    /* renamed from: import, reason: not valid java name */
    public fw1 f31932import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.package$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31933do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31935if;

        public Cdo(int i, long[] jArr) {
            this.f31933do = i;
            this.f31935if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31933do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM5073for = n21.m5073for();
            long[] jArrM5073for2 = n21.m5073for();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31933do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 7; i4++) {
                    long j2 = jArrM5073for[i4];
                    long[] jArr = this.f31935if;
                    jArrM5073for[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM5073for2[i4] = jArrM5073for2[i4] ^ (jArr[(i2 + 7) + i4] & j);
                }
                i2 += 14;
            }
            return Cpackage.this.mo35329break(new dw1(jArrM5073for), new dw1(jArrM5073for2), false);
        }
    }

    public Cpackage() {
        super(l80.f3561break, 87, 0, 0);
        this.f31932import = new fw1(this, null, null);
        this.f32022if = mo35333super(BigInteger.valueOf(1L));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("0021A5C2C8EE9FEB5C4B9A753B7B476B7FD6422EF1F3DD674761FA99D6AC27C8A9A197B272822F6CD57A55AA4F50AE317B13545F")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("010000000000000000000000000000000000000000000000000001E2AAD6A612F33307BE5FA47C3C9E052F838164CD37D9A21173"));
        this.f32024try = BigInteger.valueOf(2L);
        this.f32017case = 6;
    }

    public int b() {
        return 87;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new fw1(this, cfor, cfor2, z);
    }

    public int c() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        long[] jArr = new long[i2 * 7 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            n21.m5071do(((dw1) cnew.m35475super()).f1155do, 0, jArr, i3);
            int i5 = i3 + 7;
            n21.m5071do(((dw1) cnew.m35478throw()).f1155do, 0, jArr, i5);
            i3 = i5 + 7;
        }
        return new Cdo(i2, jArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new fw1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 0;
    }

    public int e() {
        return l80.f3561break;
    }

    public boolean f() {
        return true;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cpackage();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new dw1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return l80.f3561break;
    }

    @Override // org.bouncycastle.math.ec.Cif.AbstractC0462if
    /* renamed from: synchronized */
    public boolean mo35339synchronized() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31932import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
