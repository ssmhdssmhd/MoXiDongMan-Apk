package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.fv1;
import android.support.v4.gv1;
import android.support.v4.i21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31956native = 6;

    /* renamed from: import, reason: not valid java name */
    public gv1 f31957import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.super$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31958do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31960if;

        public Cdo(int i, long[] jArr) {
            this.f31958do = i;
            this.f31960if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31958do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM3210catch = i21.m3210catch();
            long[] jArrM3210catch2 = i21.m3210catch();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31958do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 3; i4++) {
                    long j2 = jArrM3210catch[i4];
                    long[] jArr = this.f31960if;
                    jArrM3210catch[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM3210catch2[i4] = jArrM3210catch2[i4] ^ (jArr[(i2 + 3) + i4] & j);
                }
                i2 += 6;
            }
            return Csuper.this.mo35329break(new fv1(jArrM3210catch), new fv1(jArrM3210catch2), false);
        }
    }

    public Csuper() {
        super(131, 2, 3, 8);
        this.f31957import = new gv1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("07A11B09A76B562144418FF3FF8C2570B8")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("0217C05610884B63B9C6C7291678F9D341")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("0400000000000000023123953A9464B54D"));
        this.f32024try = BigInteger.valueOf(2L);
        this.f32017case = 6;
    }

    public int b() {
        return 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new gv1(this, cfor, cfor2, z);
    }

    public int c() {
        return 3;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        long[] jArr = new long[i2 * 3 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            i21.m3221goto(((fv1) cnew.m35475super()).f2008do, 0, jArr, i3);
            int i5 = i3 + 3;
            i21.m3221goto(((fv1) cnew.m35478throw()).f2008do, 0, jArr, i5);
            i3 = i5 + 3;
        }
        return new Cdo(i2, jArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new gv1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 8;
    }

    public int e() {
        return 131;
    }

    public boolean f() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Csuper();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new fv1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return 131;
    }

    @Override // org.bouncycastle.math.ec.Cif.AbstractC0462if
    /* renamed from: synchronized */
    public boolean mo35339synchronized() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31957import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
