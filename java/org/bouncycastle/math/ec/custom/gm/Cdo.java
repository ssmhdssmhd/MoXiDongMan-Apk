package org.bouncycastle.math.ec.custom.gm;

import android.support.v4.iq1;
import android.support.v4.jq1;
import android.support.v4.k21;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.gm.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31823import = new BigInteger(1, Cfor.m36332if("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"));

    /* renamed from: native, reason: not valid java name */
    private static final int f31824native = 2;

    /* renamed from: while, reason: not valid java name */
    public jq1 f31825while;

    /* renamed from: org.bouncycastle.math.ec.custom.gm.do$do, reason: invalid class name and collision with other inner class name */
    public class C0459do implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31826do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31828if;

        public C0459do(int i, int[] iArr) {
            this.f31826do = i;
            this.f31828if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31826do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM4180class = k21.m4180class();
            int[] iArrM4180class2 = k21.m4180class();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31826do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 8; i5++) {
                    int i6 = iArrM4180class[i5];
                    int[] iArr = this.f31828if;
                    iArrM4180class[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM4180class2[i5] = iArrM4180class2[i5] ^ (iArr[(i2 + 8) + i5] & i4);
                }
                i2 += 16;
            }
            return Cdo.this.mo35329break(new iq1(iArrM4180class), new iq1(iArrM4180class2), false);
        }
    }

    public Cdo() {
        super(f31823import);
        this.f31825while = new jq1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new jq1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 8 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            k21.m4190goto(((iq1) cnew.m35475super()).f2827do, 0, iArr, i3);
            int i5 = i3 + 8;
            k21.m4190goto(((iq1) cnew.m35478throw()).f2827do, 0, iArr, i5);
            i3 = i5 + 8;
        }
        return new C0459do(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new jq1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cdo();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new iq1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31823import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31825while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35338transient() {
        return f31823import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
