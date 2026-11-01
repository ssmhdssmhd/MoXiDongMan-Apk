package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.du1;
import android.support.v4.eu1;
import android.support.v4.i21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31982import = new BigInteger(1, Cfor.m36332if("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"));

    /* renamed from: native, reason: not valid java name */
    private static final int f31983native = 2;

    /* renamed from: while, reason: not valid java name */
    public eu1 f31984while;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.try$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31985do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31987if;

        public Cdo(int i, int[] iArr) {
            this.f31985do = i;
            this.f31987if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31985do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM3208break = i21.m3208break();
            int[] iArrM3208break2 = i21.m3208break();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31985do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 6; i5++) {
                    int i6 = iArrM3208break[i5];
                    int[] iArr = this.f31987if;
                    iArrM3208break[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM3208break2[i5] = iArrM3208break2[i5] ^ (iArr[(i2 + 6) + i5] & i4);
                }
                i2 += 12;
            }
            return Ctry.this.mo35329break(new du1(iArrM3208break), new du1(iArrM3208break2), false);
        }
    }

    public Ctry() {
        super(f31982import);
        this.f31984while = new eu1(this, null, null);
        this.f32022if = mo35333super(ECConstants.ZERO);
        this.f32020for = mo35333super(BigInteger.valueOf(3L));
        this.f32023new = new BigInteger(1, Cfor.m36332if("FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new eu1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 6 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            i21.m3209case(((du1) cnew.m35475super()).f1135do, 0, iArr, i3);
            int i5 = i3 + 6;
            i21.m3209case(((du1) cnew.m35478throw()).f1135do, 0, iArr, i5);
            i3 = i5 + 6;
        }
        return new Cdo(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new eu1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Ctry();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new du1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31982import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31984while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35352transient() {
        return f31982import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
