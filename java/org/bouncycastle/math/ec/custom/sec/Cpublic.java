package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.k21;
import android.support.v4.ov1;
import android.support.v4.pv1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31941native = 6;

    /* renamed from: import, reason: not valid java name */
    public pv1 f31942import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.public$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31943do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31945if;

        public Cdo(int i, long[] jArr) {
            this.f31943do = i;
            this.f31945if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31943do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM4181const = k21.m4181const();
            long[] jArrM4181const2 = k21.m4181const();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31943do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 4; i4++) {
                    long j2 = jArrM4181const[i4];
                    long[] jArr = this.f31945if;
                    jArrM4181const[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM4181const2[i4] = jArrM4181const2[i4] ^ (jArr[(i2 + 4) + i4] & j);
                }
                i2 += 8;
            }
            return Cpublic.this.mo35329break(new ov1(jArrM4181const), new ov1(jArrM4181const2), false);
        }
    }

    public Cpublic() {
        super(193, 15, 0, 0);
        this.f31942import = new pv1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("01000000000000000000000000C7F34A778F443ACC920EBA49"));
        this.f32024try = BigInteger.valueOf(2L);
        this.f32017case = 6;
    }

    public int b() {
        return 15;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new pv1(this, cfor, cfor2, z);
    }

    public int c() {
        return 0;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        long[] jArr = new long[i2 * 4 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            k21.m4177break(((ov1) cnew.m35475super()).f4776do, 0, jArr, i3);
            int i5 = i3 + 4;
            k21.m4177break(((ov1) cnew.m35478throw()).f4776do, 0, jArr, i5);
            i3 = i5 + 4;
        }
        return new Cdo(i2, jArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new pv1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 0;
    }

    public int e() {
        return 193;
    }

    public boolean f() {
        return true;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cpublic();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new ov1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return 193;
    }

    @Override // org.bouncycastle.math.ec.Cif.AbstractC0462if
    /* renamed from: synchronized */
    public boolean mo35339synchronized() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31942import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
