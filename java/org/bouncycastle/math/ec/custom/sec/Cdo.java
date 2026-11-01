package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.g21;
import android.support.v4.tt1;
import android.support.v4.ut1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31870import = new BigInteger(1, Cfor.m36332if("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: native, reason: not valid java name */
    private static final int f31871native = 2;

    /* renamed from: while, reason: not valid java name */
    public ut1 f31872while;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.do$do, reason: invalid class name and collision with other inner class name */
    public class C0460do implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31873do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31875if;

        public C0460do(int i, int[] iArr) {
            this.f31873do = i;
            this.f31875if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31873do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM2514break = g21.m2514break();
            int[] iArrM2514break2 = g21.m2514break();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31873do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 4; i5++) {
                    int i6 = iArrM2514break[i5];
                    int[] iArr = this.f31875if;
                    iArrM2514break[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM2514break2[i5] = iArrM2514break2[i5] ^ (iArr[(i2 + 4) + i5] & i4);
                }
                i2 += 8;
            }
            return Cdo.this.mo35329break(new tt1(iArrM2514break), new tt1(iArrM2514break2), false);
        }
    }

    public Cdo() {
        super(f31870import);
        this.f31872while = new ut1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("E87579C11079F43DD824993C2CEE5ED3")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("FFFFFFFE0000000075A30D1B9038A115"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new ut1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 4 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            g21.m2515case(((tt1) cnew.m35475super()).f6694do, 0, iArr, i3);
            int i5 = i3 + 4;
            g21.m2515case(((tt1) cnew.m35478throw()).f6694do, 0, iArr, i5);
            i3 = i5 + 4;
        }
        return new C0460do(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new ut1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cdo();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new tt1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31870import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31872while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35345transient() {
        return f31870import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
