package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.q21;
import android.support.v4.vu1;
import android.support.v4.wu1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31848import = new BigInteger(1, Cfor.m36332if("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"));

    /* renamed from: native, reason: not valid java name */
    private static final int f31849native = 2;

    /* renamed from: while, reason: not valid java name */
    public wu1 f31850while;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.catch$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31851do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31853if;

        public Cdo(int i, int[] iArr) {
            this.f31851do = i;
            this.f31853if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31851do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM6351switch = q21.m6351switch(12);
            int[] iArrM6351switch2 = q21.m6351switch(12);
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31851do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 12; i5++) {
                    int i6 = iArrM6351switch[i5];
                    int[] iArr = this.f31853if;
                    iArrM6351switch[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM6351switch2[i5] = iArrM6351switch2[i5] ^ (iArr[(i2 + 12) + i5] & i4);
                }
                i2 += 24;
            }
            return Ccatch.this.mo35329break(new vu1(iArrM6351switch), new vu1(iArrM6351switch2), false);
        }
    }

    public Ccatch() {
        super(f31848import);
        this.f31850while = new wu1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new wu1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 12 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            q21.m6346public(12, ((vu1) cnew.m35475super()).f7347do, 0, iArr, i3);
            int i5 = i3 + 12;
            q21.m6346public(12, ((vu1) cnew.m35478throw()).f7347do, 0, iArr, i5);
            i3 = i5 + 12;
        }
        return new Cdo(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new wu1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Ccatch();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new vu1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31848import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31850while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35342transient() {
        return f31848import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
