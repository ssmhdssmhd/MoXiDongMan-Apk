package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.hw1;
import android.support.v4.jw1;
import android.support.v4.p21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cabstract extends Cif.AbstractC0462if {

    /* renamed from: native, reason: not valid java name */
    private static final int f31829native = 6;

    /* renamed from: public, reason: not valid java name */
    public static final hw1 f31830public;

    /* renamed from: return, reason: not valid java name */
    public static final hw1 f31831return;

    /* renamed from: import, reason: not valid java name */
    public jw1 f31832import;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.abstract$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31833do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long[] f31835if;

        public Cdo(int i, long[] jArr) {
            this.f31833do = i;
            this.f31835if = jArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31833do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            long[] jArrM5843for = p21.m5843for();
            long[] jArrM5843for2 = p21.m5843for();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31833do; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 9; i4++) {
                    long j2 = jArrM5843for[i4];
                    long[] jArr = this.f31835if;
                    jArrM5843for[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrM5843for2[i4] = jArrM5843for2[i4] ^ (jArr[(i2 + 9) + i4] & j);
                }
                i2 += 18;
            }
            return Cabstract.this.mo35329break(new hw1(jArrM5843for), new hw1(jArrM5843for2), false);
        }
    }

    static {
        hw1 hw1Var = new hw1(new BigInteger(1, Cfor.m36332if("02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A")));
        f31830public = hw1Var;
        f31831return = (hw1) hw1Var.mo340super();
    }

    public Cabstract() {
        super(571, 2, 5, 10);
        this.f31832import = new jw1(this, null, null);
        this.f32022if = mo35333super(BigInteger.valueOf(1L));
        this.f32020for = f31830public;
        this.f32023new = new BigInteger(1, Cfor.m36332if("03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"));
        this.f32024try = BigInteger.valueOf(2L);
        this.f32017case = 6;
    }

    public int b() {
        return 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new jw1(this, cfor, cfor2, z);
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
        return new jw1(this, cfor, cfor2, cforArr, z);
    }

    public int d() {
        return 10;
    }

    public int e() {
        return 571;
    }

    public boolean f() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cabstract();
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
    /* renamed from: synchronized, reason: not valid java name */
    public boolean mo35339synchronized() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31832import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 6;
    }
}
