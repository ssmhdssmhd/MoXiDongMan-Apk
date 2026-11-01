package org.bouncycastle.math.ec;

import android.support.v4.ff2;
import java.math.BigInteger;

/* renamed from: org.bouncycastle.math.ec.class, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cclass {

    /* renamed from: do, reason: not valid java name */
    public static final String f31802do = "bc_wnaf";

    /* renamed from: if, reason: not valid java name */
    private static final int[] f31804if = {13, 41, 121, 337, 897, 2305};

    /* renamed from: for, reason: not valid java name */
    private static final byte[] f31803for = new byte[0];

    /* renamed from: new, reason: not valid java name */
    private static final int[] f31805new = new int[0];

    /* renamed from: try, reason: not valid java name */
    private static final Cnew[] f31806try = new Cnew[0];

    /* renamed from: org.bouncycastle.math.ec.class$do, reason: invalid class name */
    public static class Cdo implements PreCompCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ff2 f31807do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f31808for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ECPointMap f31809if;

        public Cdo(ff2 ff2Var, ECPointMap eCPointMap, boolean z) {
            this.f31807do = ff2Var;
            this.f31809if = eCPointMap;
            this.f31808for = z;
        }

        @Override // org.bouncycastle.math.ec.PreCompCallback
        public PreCompInfo precompute(PreCompInfo preCompInfo) {
            ff2 ff2Var = new ff2();
            Cnew cnewM2270for = this.f31807do.m2270for();
            if (cnewM2270for != null) {
                ff2Var.m2268case(this.f31809if.map(cnewM2270for));
            }
            Cnew[] cnewArrM2269do = this.f31807do.m2269do();
            int length = cnewArrM2269do.length;
            Cnew[] cnewArr = new Cnew[length];
            for (int i = 0; i < cnewArrM2269do.length; i++) {
                cnewArr[i] = this.f31809if.map(cnewArrM2269do[i]);
            }
            ff2Var.m2272new(cnewArr);
            if (this.f31808for) {
                Cnew[] cnewArr2 = new Cnew[length];
                for (int i2 = 0; i2 < length; i2++) {
                    cnewArr2[i2] = cnewArr[i2].mo377private();
                }
                ff2Var.m2273try(cnewArr2);
            }
            return ff2Var;
        }
    }

    /* renamed from: org.bouncycastle.math.ec.class$if, reason: invalid class name */
    public static class Cif implements PreCompCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f31810do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Cnew f31811for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f31812if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ org.bouncycastle.math.ec.Cif f31813new;

        public Cif(int i, boolean z, Cnew cnew, org.bouncycastle.math.ec.Cif cif) {
            this.f31810do = i;
            this.f31812if = z;
            this.f31811for = cnew;
            this.f31813new = cif;
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m35325do(ff2 ff2Var, int i, boolean z) {
            return ff2Var != null && m35326if(ff2Var.m2269do(), i) && (!z || m35326if(ff2Var.m2271if(), i));
        }

        /* renamed from: if, reason: not valid java name */
        private boolean m35326if(Cnew[] cnewArr, int i) {
            return cnewArr != null && cnewArr.length >= i;
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x00c2 A[PHI: r12
          0x00c2: PHI (r12v6 org.bouncycastle.math.ec.new) = 
          (r12v4 org.bouncycastle.math.ec.new)
          (r12v9 org.bouncycastle.math.ec.new)
          (r12v9 org.bouncycastle.math.ec.new)
          (r12v9 org.bouncycastle.math.ec.new)
          (r12v9 org.bouncycastle.math.ec.new)
         binds: [B:25:0x0064, B:27:0x0070, B:29:0x0078, B:31:0x0082, B:37:0x0090] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00ea A[LOOP:1: B:54:0x00e8->B:55:0x00ea, LOOP_END] */
        @Override // org.bouncycastle.math.ec.PreCompCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public PreCompInfo precompute(PreCompInfo preCompInfo) {
            Cnew cnewMo378synchronized;
            Cnew[] cnewArrM35320super;
            Cnew[] cnewArrM2271if;
            int length;
            Cnew[] cnewArrM35320super2;
            int i;
            Cnew cnewM35430goto;
            int iM35438public;
            Cfor cforMo2405public = null;
            ff2 ff2Var = preCompInfo instanceof ff2 ? (ff2) preCompInfo : null;
            int length2 = 0;
            int iMax = 1 << Math.max(0, this.f31810do - 2);
            if (m35325do(ff2Var, iMax, this.f31812if)) {
                return ff2Var;
            }
            if (ff2Var != null) {
                cnewArrM35320super = ff2Var.m2269do();
                cnewArrM2271if = ff2Var.m2271if();
                cnewMo378synchronized = ff2Var.m2270for();
            } else {
                cnewMo378synchronized = null;
                cnewArrM35320super = null;
                cnewArrM2271if = null;
            }
            if (cnewArrM35320super == null) {
                cnewArrM35320super = Cclass.f31806try;
                length = 0;
            } else {
                length = cnewArrM35320super.length;
            }
            if (length < iMax) {
                cnewArrM35320super = Cclass.m35320super(cnewArrM35320super, iMax);
                if (iMax == 1) {
                    cnewArrM35320super[0] = this.f31811for.m35454abstract();
                } else {
                    if (length == 0) {
                        cnewArrM35320super[0] = this.f31811for;
                        i = 1;
                    } else {
                        i = length;
                    }
                    if (iMax == 2) {
                        cnewArrM35320super[1] = this.f31811for.mo642implements();
                    } else {
                        Cnew cnewMo373do = cnewArrM35320super[i - 1];
                        if (cnewMo378synchronized == null) {
                            cnewMo378synchronized = cnewArrM35320super[0].mo378synchronized();
                            if (cnewMo378synchronized.m35479throws() || !org.bouncycastle.math.ec.Cdo.m35360final(this.f31813new) || this.f31813new.mo35334switch() < 64 || !((iM35438public = this.f31813new.m35438public()) == 2 || iM35438public == 3 || iM35438public == 4)) {
                                cnewM35430goto = cnewMo378synchronized;
                            } else {
                                cforMo2405public = cnewMo378synchronized.mo2405public(0);
                                cnewM35430goto = this.f31813new.m35430goto(cnewMo378synchronized.m35467import().mo339static(), cnewMo378synchronized.mo375native().mo339static());
                                Cfor cforMo342throw = cforMo2405public.mo342throw();
                                cnewMo373do = cnewMo373do.mo35469interface(cforMo342throw).mo35471protected(cforMo342throw.mo330catch(cforMo2405public));
                                if (length == 0) {
                                    cnewArrM35320super[0] = cnewMo373do;
                                }
                            }
                            while (i < iMax) {
                                cnewMo373do = cnewMo373do.mo373do(cnewM35430goto);
                                cnewArrM35320super[i] = cnewMo373do;
                                i++;
                            }
                        }
                    }
                    this.f31813new.m35423continue(cnewArrM35320super, length, iMax - length, cforMo2405public);
                }
            }
            if (this.f31812if) {
                if (cnewArrM2271if == null) {
                    cnewArrM35320super2 = new Cnew[iMax];
                } else {
                    length2 = cnewArrM2271if.length;
                    if (length2 < iMax) {
                        cnewArrM35320super2 = Cclass.m35320super(cnewArrM2271if, iMax);
                    }
                    while (length2 < iMax) {
                        cnewArrM2271if[length2] = cnewArrM35320super[length2].mo377private();
                        length2++;
                    }
                }
                cnewArrM2271if = cnewArrM35320super2;
                while (length2 < iMax) {
                }
            }
            ff2 ff2Var2 = new ff2();
            ff2Var2.m2272new(cnewArrM35320super);
            ff2Var2.m2273try(cnewArrM2271if);
            ff2Var2.m2268case(cnewMo378synchronized);
            return ff2Var2;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static ff2 m35308break(PreCompInfo preCompInfo) {
        if (preCompInfo instanceof ff2) {
            return (ff2) preCompInfo;
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m35309case(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return f31803for;
        }
        BigInteger bigIntegerAdd = bigInteger.shiftLeft(1).add(bigInteger);
        int iBitLength = bigIntegerAdd.bitLength() - 1;
        byte[] bArr = new byte[iBitLength];
        BigInteger bigIntegerXor = bigIntegerAdd.xor(bigInteger);
        int i = 1;
        while (i < iBitLength) {
            if (bigIntegerXor.testBit(i)) {
                bArr[i - 1] = (byte) (bigInteger.testBit(i) ? -1 : 1);
                i++;
            }
            i++;
        }
        bArr[iBitLength - 1] = 1;
        return bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m35310catch(int i) {
        return m35311class(i, f31804if);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m35311class(int i, int[] iArr) {
        int i2 = 0;
        while (i2 < iArr.length && i >= iArr[i2]) {
            i2++;
        }
        return i2 + 2;
    }

    /* renamed from: const, reason: not valid java name */
    public static Cnew m35312const(Cnew cnew, int i, boolean z, ECPointMap eCPointMap) {
        org.bouncycastle.math.ec.Cif cifM35477this = cnew.m35477this();
        ff2 ff2VarM35315final = m35315final(cnew, i, z);
        Cnew map = eCPointMap.map(cnew);
        cifM35477this.m35441strictfp(map, f31802do, new Cdo(ff2VarM35315final, eCPointMap, z));
        return map;
    }

    /* renamed from: else, reason: not valid java name */
    public static byte[] m35314else(int i, BigInteger bigInteger) {
        if (i == 2) {
            return m35309case(bigInteger);
        }
        if (i < 2 || i > 8) {
            throw new IllegalArgumentException("'width' must be in the range [2, 8]");
        }
        if (bigInteger.signum() == 0) {
            return f31803for;
        }
        int iBitLength = bigInteger.bitLength() + 1;
        byte[] bArr = new byte[iBitLength];
        int i2 = 1 << i;
        int i3 = i2 - 1;
        int i4 = i2 >>> 1;
        int i5 = 0;
        int i6 = 0;
        boolean z = false;
        while (i5 <= bigInteger.bitLength()) {
            if (bigInteger.testBit(i5) == z) {
                i5++;
            } else {
                bigInteger = bigInteger.shiftRight(i5);
                int iIntValue = bigInteger.intValue() & i3;
                if (z) {
                    iIntValue++;
                }
                z = (iIntValue & i4) != 0;
                if (z) {
                    iIntValue -= i2;
                }
                if (i6 > 0) {
                    i5--;
                }
                int i7 = i6 + i5;
                bArr[i7] = (byte) iIntValue;
                i6 = i7 + 1;
                i5 = i;
            }
        }
        return iBitLength > i6 ? m35322throw(bArr, i6) : bArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static ff2 m35315final(Cnew cnew, int i, boolean z) {
        org.bouncycastle.math.ec.Cif cifM35477this = cnew.m35477this();
        return (ff2) cifM35477this.m35441strictfp(cnew, f31802do, new Cif(i, z, cnew, cifM35477this));
    }

    /* renamed from: for, reason: not valid java name */
    public static int[] m35316for(BigInteger bigInteger) {
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        }
        if (bigInteger.signum() == 0) {
            return f31805new;
        }
        BigInteger bigIntegerAdd = bigInteger.shiftLeft(1).add(bigInteger);
        int iBitLength = bigIntegerAdd.bitLength();
        int i = iBitLength >> 1;
        int[] iArr = new int[i];
        BigInteger bigIntegerXor = bigIntegerAdd.xor(bigInteger);
        int i2 = iBitLength - 1;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i5 < i2) {
            if (bigIntegerXor.testBit(i5)) {
                iArr[i3] = i4 | ((bigInteger.testBit(i5) ? -1 : 1) << 16);
                i5++;
                i3++;
                i4 = 1;
            } else {
                i4++;
            }
            i5++;
        }
        int i6 = i3 + 1;
        iArr[i3] = 65536 | i4;
        return i > i6 ? m35324while(iArr, i6) : iArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m35317goto(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return 0;
        }
        return bigInteger.shiftLeft(1).add(bigInteger).xor(bigInteger).bitCount();
    }

    /* renamed from: new, reason: not valid java name */
    public static int[] m35319new(int i, BigInteger bigInteger) {
        if (i == 2) {
            return m35316for(bigInteger);
        }
        if (i < 2 || i > 16) {
            throw new IllegalArgumentException("'width' must be in the range [2, 16]");
        }
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        }
        if (bigInteger.signum() == 0) {
            return f31805new;
        }
        int iBitLength = (bigInteger.bitLength() / i) + 1;
        int[] iArr = new int[iBitLength];
        int i2 = 1 << i;
        int i3 = i2 - 1;
        int i4 = i2 >>> 1;
        int i5 = 0;
        int i6 = 0;
        boolean z = false;
        while (i5 <= bigInteger.bitLength()) {
            if (bigInteger.testBit(i5) == z) {
                i5++;
            } else {
                bigInteger = bigInteger.shiftRight(i5);
                int iIntValue = bigInteger.intValue() & i3;
                if (z) {
                    iIntValue++;
                }
                z = (iIntValue & i4) != 0;
                if (z) {
                    iIntValue -= i2;
                }
                if (i6 > 0) {
                    i5--;
                }
                iArr[i6] = i5 | (iIntValue << 16);
                i5 = i;
                i6++;
            }
        }
        return iBitLength > i6 ? m35324while(iArr, i6) : iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public static Cnew[] m35320super(Cnew[] cnewArr, int i) {
        Cnew[] cnewArr2 = new Cnew[i];
        System.arraycopy(cnewArr, 0, cnewArr2, 0, cnewArr.length);
        return cnewArr2;
    }

    /* renamed from: this, reason: not valid java name */
    public static ff2 m35321this(Cnew cnew) {
        return m35308break(cnew.m35477this().m35428finally(cnew, f31802do));
    }

    /* renamed from: throw, reason: not valid java name */
    private static byte[] m35322throw(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m35323try(BigInteger bigInteger, BigInteger bigInteger2) {
        int iMax = Math.max(bigInteger.bitLength(), bigInteger2.bitLength()) + 1;
        byte[] bArr = new byte[iMax];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if ((i | i2) == 0 && bigInteger.bitLength() <= i3 && bigInteger2.bitLength() <= i3) {
                break;
            }
            int iIntValue = ((bigInteger.intValue() >>> i3) + i) & 7;
            int iIntValue2 = ((bigInteger2.intValue() >>> i3) + i2) & 7;
            int i5 = iIntValue & 1;
            if (i5 != 0) {
                i5 -= iIntValue & 2;
                if (iIntValue + i5 == 4 && (iIntValue2 & 3) == 2) {
                    i5 = -i5;
                }
            }
            int i6 = iIntValue2 & 1;
            if (i6 != 0) {
                i6 -= iIntValue2 & 2;
                if (iIntValue2 + i6 == 4 && (iIntValue & 3) == 2) {
                    i6 = -i6;
                }
            }
            if ((i << 1) == i5 + 1) {
                i ^= 1;
            }
            if ((i2 << 1) == i6 + 1) {
                i2 ^= 1;
            }
            i3++;
            if (i3 == 30) {
                bigInteger = bigInteger.shiftRight(30);
                bigInteger2 = bigInteger2.shiftRight(30);
                i3 = 0;
            }
            bArr[i4] = (byte) ((i5 << 4) | (i6 & 15));
            i4++;
        }
        return iMax > i4 ? m35322throw(bArr, i4) : bArr;
    }

    /* renamed from: while, reason: not valid java name */
    private static int[] m35324while(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, i);
        return iArr2;
    }
}
