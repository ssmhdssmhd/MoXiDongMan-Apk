package org.bouncycastle.math.ec.custom.djb;

import android.support.v4.dt;
import android.support.v4.et;
import android.support.v4.ft;
import android.support.v4.k21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.djb.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31817import = k21.h(dt.f1125if);

    /* renamed from: native, reason: not valid java name */
    private static final int f31818native = 4;

    /* renamed from: while, reason: not valid java name */
    public ft f31819while;

    /* renamed from: org.bouncycastle.math.ec.custom.djb.do$do, reason: invalid class name and collision with other inner class name */
    public class C0458do implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31820do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31822if;

        public C0458do(int i, int[] iArr) {
            this.f31820do = i;
            this.f31822if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31820do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM4180class = k21.m4180class();
            int[] iArrM4180class2 = k21.m4180class();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31820do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 8; i5++) {
                    int i6 = iArrM4180class[i5];
                    int[] iArr = this.f31822if;
                    iArrM4180class[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM4180class2[i5] = iArrM4180class2[i5] ^ (iArr[(i2 + 8) + i5] & i4);
                }
                i2 += 16;
            }
            return Cdo.this.mo35329break(new et(iArrM4180class), new et(iArrM4180class2), false);
        }
    }

    public Cdo() {
        super(f31817import);
        this.f31819while = new ft(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"));
        this.f32024try = BigInteger.valueOf(8L);
        this.f32017case = 4;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break, reason: not valid java name */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new ft(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case, reason: not valid java name */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 8 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            k21.m4190goto(((et) cnew.m35475super()).f1581do, 0, iArr, i3);
            int i5 = i3 + 8;
            k21.m4190goto(((et) cnew.m35478throw()).f1581do, 0, iArr, i5);
            i3 = i5 + 8;
        }
        return new C0458do(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch, reason: not valid java name */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new ft(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new, reason: not valid java name */
    public Cif mo35332new() {
        return new Cdo();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super, reason: not valid java name */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new et(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch, reason: not valid java name */
    public int mo35334switch() {
        return f31817import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws, reason: not valid java name */
    public Cnew mo35335throws() {
        return this.f31819while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35336transient() {
        return f31817import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile, reason: not valid java name */
    public boolean mo35337volatile(int i) {
        return i == 4;
    }
}
