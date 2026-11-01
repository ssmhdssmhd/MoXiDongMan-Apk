package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.q21;
import android.support.v4.yu1;
import android.support.v4.zu1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31854import = new BigInteger(1, Cfor.m36332if("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: native, reason: not valid java name */
    private static final int f31855native = 2;

    /* renamed from: while, reason: not valid java name */
    public zu1 f31856while;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.class$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31857do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31859if;

        public Cdo(int i, int[] iArr) {
            this.f31857do = i;
            this.f31859if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31857do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM6351switch = q21.m6351switch(17);
            int[] iArrM6351switch2 = q21.m6351switch(17);
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31857do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 17; i5++) {
                    int i6 = iArrM6351switch[i5];
                    int[] iArr = this.f31859if;
                    iArrM6351switch[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM6351switch2[i5] = iArrM6351switch2[i5] ^ (iArr[(i2 + 17) + i5] & i4);
                }
                i2 += 34;
            }
            return Cclass.this.mo35329break(new yu1(iArrM6351switch), new yu1(iArrM6351switch2), false);
        }
    }

    public Cclass() {
        super(f31854import);
        this.f31856while = new zu1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new zu1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 17 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            q21.m6346public(17, ((yu1) cnew.m35475super()).f8331do, 0, iArr, i3);
            int i5 = i3 + 17;
            q21.m6346public(17, ((yu1) cnew.m35478throw()).f8331do, 0, iArr, i5);
            i3 = i5 + 17;
        }
        return new Cdo(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new zu1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cclass();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new yu1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31854import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31856while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35343transient() {
        return f31854import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
