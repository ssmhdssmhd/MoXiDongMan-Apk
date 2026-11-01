package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.au1;
import android.support.v4.bu1;
import android.support.v4.h21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31925import = new BigInteger(1, Cfor.m36332if("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"));

    /* renamed from: native, reason: not valid java name */
    private static final int f31926native = 2;

    /* renamed from: while, reason: not valid java name */
    public bu1 f31927while;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.new$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31928do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31930if;

        public Cdo(int i, int[] iArr) {
            this.f31928do = i;
            this.f31930if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31928do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public org.bouncycastle.math.ec.Cnew lookup(int i) {
            int[] iArrM2896goto = h21.m2896goto();
            int[] iArrM2896goto2 = h21.m2896goto();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31928do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 5; i5++) {
                    int i6 = iArrM2896goto[i5];
                    int[] iArr = this.f31930if;
                    iArrM2896goto[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM2896goto2[i5] = iArrM2896goto2[i5] ^ (iArr[(i2 + 5) + i5] & i4);
                }
                i2 += 10;
            }
            return Cnew.this.mo35329break(new au1(iArrM2896goto), new au1(iArrM2896goto2), false);
        }
    }

    public Cnew() {
        super(f31925import);
        this.f31927while = new bu1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC70")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("B4E134D3FB59EB8BAB57274904664D5AF50388BA")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("0100000000000000000000351EE786A818F3A1A16B"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public org.bouncycastle.math.ec.Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new bu1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(org.bouncycastle.math.ec.Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 5 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            org.bouncycastle.math.ec.Cnew cnew = cnewArr[i + i4];
            h21.m2884case(((au1) cnew.m35475super()).f247do, 0, iArr, i3);
            int i5 = i3 + 5;
            h21.m2884case(((au1) cnew.m35478throw()).f247do, 0, iArr, i5);
            i3 = i5 + 5;
        }
        return new Cdo(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public org.bouncycastle.math.ec.Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new bu1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cnew();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new au1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31925import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public org.bouncycastle.math.ec.Cnew mo35335throws() {
        return this.f31927while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35350transient() {
        return f31925import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
