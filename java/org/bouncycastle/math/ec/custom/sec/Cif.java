package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.au1;
import android.support.v4.h21;
import android.support.v4.vt1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31909import = Cnew.f31925import;

    /* renamed from: native, reason: not valid java name */
    private static final int f31910native = 2;

    /* renamed from: while, reason: not valid java name */
    public vt1 f31911while;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.if$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31912do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31914if;

        public Cdo(int i, int[] iArr) {
            this.f31912do = i;
            this.f31914if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31912do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM2896goto = h21.m2896goto();
            int[] iArrM2896goto2 = h21.m2896goto();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31912do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 5; i5++) {
                    int i6 = iArrM2896goto[i5];
                    int[] iArr = this.f31914if;
                    iArrM2896goto[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM2896goto2[i5] = iArrM2896goto2[i5] ^ (iArr[(i2 + 5) + i5] & i4);
                }
                i2 += 10;
            }
            return Cif.this.mo35329break(new au1(iArrM2896goto), new au1(iArrM2896goto2), false);
        }
    }

    public Cif() {
        super(f31909import);
        this.f31911while = new vt1(this, null, null);
        this.f32022if = mo35333super(ECConstants.ZERO);
        this.f32020for = mo35333super(BigInteger.valueOf(7L));
        this.f32023new = new BigInteger(1, Cfor.m36332if("0100000000000000000001B8FA16DFAB9ACA16B6B3"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new vt1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 5 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            h21.m2884case(((au1) cnew.m35475super()).f247do, 0, iArr, i3);
            int i5 = i3 + 5;
            h21.m2884case(((au1) cnew.m35478throw()).f247do, 0, iArr, i5);
            i3 = i5 + 5;
        }
        return new Cdo(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new vt1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public org.bouncycastle.math.ec.Cif mo35332new() {
        return new Cif();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new au1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31909import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31911while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35349transient() {
        return f31909import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
