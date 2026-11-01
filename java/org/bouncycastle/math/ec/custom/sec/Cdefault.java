package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.aw1;
import android.support.v4.l21;
import android.support.v4.zv1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cconst;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.default, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdefault extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31865native = 6;

    /* renamed from: import, reason: not valid java name */
    public aw1 f31866import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.default$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31867do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31869if;

        public Cdo(int i, long[] jArr) {
            this.f31867do = i;
            this.f31869if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31867do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM4546for = l21.m4546for();
            long[] jArrM4546for2 = l21.m4546for();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31867do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 5; i4++) {
                    long j2 = jArrM4546for[i4];
                    long[] jArr = this.f31869if;
                    jArrM4546for[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM4546for2[i4] = jArrM4546for2[i4] ^ (jArr[(i2 + 5) + i4] & j);
                }
                i2 += 10;
            }
            return Cdefault.this.mo35329break(new zv1(jArrM4546for), new zv1(jArrM4546for2), false);
        }
    }

    public Cdefault() {
        super(283, 5, 7, 12);
        this.f31866import = new aw1(this, null, null);
        this.f32022if = mo35333super(BigInteger.valueOf(0L));
        this.f32020for = mo35333super(BigInteger.valueOf(1L));
        this.f32023new = new BigInteger(1, Cfor.m36332if("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"));
        this.f32024try = BigInteger.valueOf(4L);
        this.f32017case = 6;
    }

    public int b() {
        return 5;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new aw1(this, cfor, cfor2, z);
    }

    public int c() {
        return 7;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        long[] jArr = new long[i2 * 5 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            l21.m4544do(((zv1) cnew.m35475super()).f8667do, 0, jArr, i3);
            int i5 = i3 + 5;
            l21.m4544do(((zv1) cnew.m35478throw()).f8667do, 0, jArr, i5);
            i3 = i5 + 5;
        }
        return new Cdo(i2, jArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new aw1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 12;
    }

    public int e() {
        return 283;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: else, reason: not valid java name */
    public ECMultiplier mo35344else() {
        return new Cconst();
    }

    public boolean f() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cdefault();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new zv1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return 283;
    }

    @Override // org.bouncycastle.math.ec.Cif.AbstractC0462if
    /* renamed from: synchronized */
    public boolean mo35339synchronized() {
        return true;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31866import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
