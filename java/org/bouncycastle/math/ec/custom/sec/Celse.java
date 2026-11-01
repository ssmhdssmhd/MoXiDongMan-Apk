package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.j21;
import android.support.v4.ju1;
import android.support.v4.ku1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31876import = new BigInteger(1, Cfor.m36332if("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"));

    /* renamed from: native, reason: not valid java name */
    private static final int f31877native = 2;

    /* renamed from: while, reason: not valid java name */
    public ku1 f31878while;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.else$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31879do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31881if;

        public Cdo(int i, int[] iArr) {
            this.f31879do = i;
            this.f31881if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31879do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM3669break = j21.m3669break();
            int[] iArrM3669break2 = j21.m3669break();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31879do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 7; i5++) {
                    int i6 = iArrM3669break[i5];
                    int[] iArr = this.f31881if;
                    iArrM3669break[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM3669break2[i5] = iArrM3669break2[i5] ^ (iArr[(i2 + 7) + i5] & i4);
                }
                i2 += 14;
            }
            return Celse.this.mo35329break(new ju1(iArrM3669break), new ju1(iArrM3669break2), false);
        }
    }

    public Celse() {
        super(f31876import);
        this.f31878while = new ku1(this, null, null);
        this.f32022if = mo35333super(ECConstants.ZERO);
        this.f32020for = mo35333super(BigInteger.valueOf(5L));
        this.f32023new = new BigInteger(1, Cfor.m36332if("010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new ku1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 7 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            j21.m3682goto(((ju1) cnew.m35475super()).f3226do, 0, iArr, i3);
            int i5 = i3 + 7;
            j21.m3682goto(((ju1) cnew.m35478throw()).f3226do, 0, iArr, i5);
            i3 = i5 + 7;
        }
        return new Cdo(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new ku1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Celse();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new ju1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31876import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31878while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35346transient() {
        return f31876import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
