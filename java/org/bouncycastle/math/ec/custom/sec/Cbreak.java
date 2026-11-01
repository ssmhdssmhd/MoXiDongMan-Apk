package org.bouncycastle.math.ec.custom.sec;

import android.support.v4.k21;
import android.support.v4.su1;
import android.support.v4.tu1;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.math.ec.custom.sec.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends Cif.Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final BigInteger f31836import = new BigInteger(1, Cfor.m36332if("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: native, reason: not valid java name */
    private static final int f31837native = 2;

    /* renamed from: while, reason: not valid java name */
    public tu1 f31838while;

    /* renamed from: org.bouncycastle.math.ec.custom.sec.break$do, reason: invalid class name */
    public class Cdo implements ECLookupTable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31839do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int[] f31841if;

        public Cdo(int i, int[] iArr) {
            this.f31839do = i;
            this.f31841if = iArr;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public int getSize() {
            return this.f31839do;
        }

        @Override // org.bouncycastle.math.ec.ECLookupTable
        public Cnew lookup(int i) {
            int[] iArrM4180class = k21.m4180class();
            int[] iArrM4180class2 = k21.m4180class();
            int i2 = 0;
            for (int i3 = 0; i3 < this.f31839do; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 8; i5++) {
                    int i6 = iArrM4180class[i5];
                    int[] iArr = this.f31841if;
                    iArrM4180class[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrM4180class2[i5] = iArrM4180class2[i5] ^ (iArr[(i2 + 8) + i5] & i4);
                }
                i2 += 16;
            }
            return Cbreak.this.mo35329break(new su1(iArrM4180class), new su1(iArrM4180class2), false);
        }
    }

    public Cbreak() {
        super(f31836import);
        this.f31838while = new tu1(this, null, null);
        this.f32022if = mo35333super(new BigInteger(1, Cfor.m36332if("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f32020for = mo35333super(new BigInteger(1, Cfor.m36332if("5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B")));
        this.f32023new = new BigInteger(1, Cfor.m36332if("FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"));
        this.f32024try = BigInteger.valueOf(1L);
        this.f32017case = 2;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: break */
    public Cnew mo35329break(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, boolean z) {
        return new tu1(this, cfor, cfor2, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: case */
    public ECLookupTable mo35330case(Cnew[] cnewArr, int i, int i2) {
        int[] iArr = new int[i2 * 8 * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Cnew cnew = cnewArr[i + i4];
            k21.m4190goto(((su1) cnew.m35475super()).f6309do, 0, iArr, i3);
            int i5 = i3 + 8;
            k21.m4190goto(((su1) cnew.m35478throw()).f6309do, 0, iArr, i5);
            i3 = i5 + 8;
        }
        return new Cdo(i2, iArr);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: catch */
    public Cnew mo35331catch(org.bouncycastle.math.ec.Cfor cfor, org.bouncycastle.math.ec.Cfor cfor2, org.bouncycastle.math.ec.Cfor[] cforArr, boolean z) {
        return new tu1(this, cfor, cfor2, cforArr, z);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: new */
    public Cif mo35332new() {
        return new Cbreak();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: super */
    public org.bouncycastle.math.ec.Cfor mo35333super(BigInteger bigInteger) {
        return new su1(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: switch */
    public int mo35334switch() {
        return f31836import.bitLength();
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: throws */
    public Cnew mo35335throws() {
        return this.f31838while;
    }

    /* renamed from: transient, reason: not valid java name */
    public BigInteger m35340transient() {
        return f31836import;
    }

    @Override // org.bouncycastle.math.ec.Cif
    /* renamed from: volatile */
    public boolean mo35337volatile(int i) {
        return i == 2;
    }
}
