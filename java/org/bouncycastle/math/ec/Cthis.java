package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* renamed from: org.bouncycastle.math.ec.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis {

    /* renamed from: case, reason: not valid java name */
    public static final Csuper[] f32153case;

    /* renamed from: do, reason: not valid java name */
    private static final BigInteger f32154do;

    /* renamed from: else, reason: not valid java name */
    public static final byte[][] f32155else;

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f32156for;

    /* renamed from: goto, reason: not valid java name */
    public static final Csuper[] f32157goto;

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f32158if;

    /* renamed from: new, reason: not valid java name */
    public static final byte f32159new = 4;

    /* renamed from: this, reason: not valid java name */
    public static final byte[][] f32160this;

    /* renamed from: try, reason: not valid java name */
    public static final byte f32161try = 16;

    static {
        BigInteger bigInteger = ECConstants.ONE;
        BigInteger bigIntegerNegate = bigInteger.negate();
        f32154do = bigIntegerNegate;
        f32158if = ECConstants.TWO.negate();
        BigInteger bigIntegerNegate2 = ECConstants.THREE.negate();
        f32156for = bigIntegerNegate2;
        BigInteger bigInteger2 = ECConstants.ZERO;
        f32153case = new Csuper[]{null, new Csuper(bigInteger, bigInteger2), null, new Csuper(bigIntegerNegate2, bigIntegerNegate), null, new Csuper(bigIntegerNegate, bigIntegerNegate), null, new Csuper(bigInteger, bigIntegerNegate), null};
        f32155else = new byte[][]{null, new byte[]{1}, null, new byte[]{-1, 0, 1}, null, new byte[]{1, 0, 1}, null, new byte[]{-1, 0, 0, 1}};
        f32157goto = new Csuper[]{null, new Csuper(bigInteger, bigInteger2), null, new Csuper(bigIntegerNegate2, bigInteger), null, new Csuper(bigIntegerNegate, bigInteger), null, new Csuper(bigInteger, bigInteger), null};
        f32160this = new byte[][]{null, new byte[]{1}, null, new byte[]{-1, 0, 1}, null, new byte[]{1, 0, 1}, null, new byte[]{-1, 0, 0, -1}};
    }

    /* renamed from: break, reason: not valid java name */
    public static BigInteger m35562break(byte b, int i) {
        if (i == 4) {
            return b == 1 ? BigInteger.valueOf(6L) : BigInteger.valueOf(10L);
        }
        BigInteger[] bigIntegerArrM35572if = m35572if(b, i, false);
        BigInteger bit = ECConstants.ZERO.setBit(i);
        return ECConstants.TWO.multiply(bigIntegerArrM35572if[0]).multiply(bigIntegerArrM35572if[1].modInverse(bit)).mod(bit);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cnew.Cif[] m35563case(Cnew.Cif cif, byte b) {
        byte[][] bArr = b == 0 ? f32155else : f32160this;
        Cnew.Cif[] cifArr = new Cnew.Cif[(bArr.length + 1) >>> 1];
        cifArr[0] = cif;
        int length = bArr.length;
        for (int i = 3; i < length; i += 2) {
            cifArr[i >>> 1] = m35564catch(cif, bArr[i]);
        }
        cif.m35477this().m35420abstract(cifArr);
        return cifArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cnew.Cif m35564catch(Cnew.Cif cif, byte[] bArr) {
        Cnew.Cif cif2 = (Cnew.Cif) cif.m35477this().mo35335throws();
        Cnew.Cif cif3 = (Cnew.Cif) cif.mo377private();
        int i = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            i++;
            byte b = bArr[length];
            if (b != 0) {
                cif2 = (Cnew.Cif) cif2.c(i).mo373do(b > 0 ? cif : cif3);
                i = 0;
            }
        }
        return i > 0 ? cif2.c(i) : cif2;
    }

    /* renamed from: class, reason: not valid java name */
    public static Cnew.Cif m35565class(Cnew.Cif cif, BigInteger bigInteger) {
        Cif.AbstractC0462if abstractC0462if = (Cif.AbstractC0462if) cif.m35477this();
        int iMo35334switch = abstractC0462if.mo35334switch();
        int iIntValue = abstractC0462if.m35443throw().mo339static().intValue();
        return m35566const(cif, m35579throw(bigInteger, iMo35334switch, (byte) iIntValue, abstractC0462if.m35448implements(), m35570for(iIntValue), (byte) 10));
    }

    /* renamed from: const, reason: not valid java name */
    public static Cnew.Cif m35566const(Cnew.Cif cif, Csuper csuper) {
        return m35564catch(cif, m35574native(m35580try(((Cif.AbstractC0462if) cif.m35477this()).m35443throw()), csuper));
    }

    /* renamed from: do, reason: not valid java name */
    public static Cgoto m35567do(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, byte b, int i, int i2) {
        BigInteger bigIntegerMultiply = bigInteger2.multiply(bigInteger.shiftRight(((i - r0) - 2) + b));
        BigInteger bigIntegerAdd = bigIntegerMultiply.add(bigInteger3.multiply(bigIntegerMultiply.shiftRight(i)));
        int i3 = (((i + 5) / 2) + i2) - i2;
        BigInteger bigIntegerShiftRight = bigIntegerAdd.shiftRight(i3);
        if (bigIntegerAdd.testBit(i3 - 1)) {
            bigIntegerShiftRight = bigIntegerShiftRight.add(ECConstants.ONE);
        }
        return new Cgoto(bigIntegerShiftRight, i2);
    }

    /* renamed from: else, reason: not valid java name */
    public static int m35568else(BigInteger bigInteger) {
        if (bigInteger != null) {
            if (bigInteger.equals(ECConstants.TWO)) {
                return 1;
            }
            if (bigInteger.equals(ECConstants.FOUR)) {
                return 2;
            }
        }
        throw new IllegalArgumentException("h (Cofactor) must be 2 or 4");
    }

    /* renamed from: final, reason: not valid java name */
    public static BigInteger m35569final(byte b, Csuper csuper) {
        BigInteger bigIntegerSubtract;
        BigInteger bigInteger = csuper.f32151do;
        BigInteger bigIntegerMultiply = bigInteger.multiply(bigInteger);
        BigInteger bigIntegerMultiply2 = csuper.f32151do.multiply(csuper.f32152if);
        BigInteger bigInteger2 = csuper.f32152if;
        BigInteger bigIntegerShiftLeft = bigInteger2.multiply(bigInteger2).shiftLeft(1);
        if (b == 1) {
            bigIntegerSubtract = bigIntegerMultiply.add(bigIntegerMultiply2);
        } else {
            if (b != -1) {
                throw new IllegalArgumentException("mu must be 1 or -1");
            }
            bigIntegerSubtract = bigIntegerMultiply.subtract(bigIntegerMultiply2);
        }
        return bigIntegerSubtract.add(bigIntegerShiftLeft);
    }

    /* renamed from: for, reason: not valid java name */
    public static byte m35570for(int i) {
        return (byte) (i == 0 ? -1 : 1);
    }

    /* renamed from: goto, reason: not valid java name */
    public static BigInteger[] m35571goto(int i, int i2, BigInteger bigInteger) {
        byte bM35570for = m35570for(i2);
        int iM35568else = m35568else(bigInteger);
        BigInteger[] bigIntegerArrM35572if = m35572if(bM35570for, (i + 3) - i2, false);
        if (bM35570for == 1) {
            bigIntegerArrM35572if[0] = bigIntegerArrM35572if[0].negate();
            bigIntegerArrM35572if[1] = bigIntegerArrM35572if[1].negate();
        }
        BigInteger bigInteger2 = ECConstants.ONE;
        return new BigInteger[]{bigInteger2.add(bigIntegerArrM35572if[1]).shiftRight(iM35568else), bigInteger2.add(bigIntegerArrM35572if[0]).shiftRight(iM35568else).negate()};
    }

    /* renamed from: if, reason: not valid java name */
    public static BigInteger[] m35572if(byte b, int i, boolean z) {
        BigInteger bigInteger;
        BigInteger bigIntegerSubtract;
        if (b != 1 && b != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        if (z) {
            bigInteger = ECConstants.TWO;
            bigIntegerSubtract = BigInteger.valueOf(b);
        } else {
            bigInteger = ECConstants.ZERO;
            bigIntegerSubtract = ECConstants.ONE;
        }
        int i2 = 1;
        while (i2 < i) {
            i2++;
            BigInteger bigInteger2 = bigIntegerSubtract;
            bigIntegerSubtract = (b == 1 ? bigIntegerSubtract : bigIntegerSubtract.negate()).subtract(bigInteger.shiftLeft(1));
            bigInteger = bigInteger2;
        }
        return new BigInteger[]{bigInteger, bigIntegerSubtract};
    }

    /* renamed from: import, reason: not valid java name */
    public static Cnew.Cif m35573import(Cnew.Cif cif) {
        return cif.b();
    }

    /* renamed from: native, reason: not valid java name */
    public static byte[] m35574native(byte b, Csuper csuper) {
        if (b != 1 && b != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        int iBitLength = m35569final(b, csuper).bitLength();
        byte[] bArr = new byte[iBitLength > 30 ? iBitLength + 4 : 34];
        BigInteger bigIntegerClearBit = csuper.f32151do;
        BigInteger bigInteger = csuper.f32152if;
        int i = 0;
        int i2 = 0;
        while (true) {
            BigInteger bigInteger2 = ECConstants.ZERO;
            if (bigIntegerClearBit.equals(bigInteger2) && bigInteger.equals(bigInteger2)) {
                int i3 = i + 1;
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, 0, bArr2, 0, i3);
                return bArr2;
            }
            if (bigIntegerClearBit.testBit(0)) {
                bArr[i2] = (byte) ECConstants.TWO.subtract(bigIntegerClearBit.subtract(bigInteger.shiftLeft(1)).mod(ECConstants.FOUR)).intValue();
                bigIntegerClearBit = bArr[i2] == 1 ? bigIntegerClearBit.clearBit(0) : bigIntegerClearBit.add(ECConstants.ONE);
                i = i2;
            } else {
                bArr[i2] = 0;
            }
            BigInteger bigIntegerShiftRight = bigIntegerClearBit.shiftRight(1);
            BigInteger bigIntegerAdd = b == 1 ? bigInteger.add(bigIntegerShiftRight) : bigInteger.subtract(bigIntegerShiftRight);
            BigInteger bigIntegerNegate = bigIntegerClearBit.shiftRight(1).negate();
            i2++;
            bigIntegerClearBit = bigIntegerAdd;
            bigInteger = bigIntegerNegate;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static byte m35575new(Cif.AbstractC0462if abstractC0462if) {
        if (abstractC0462if.mo35339synchronized()) {
            return abstractC0462if.m35443throw().mo328break() ? (byte) -1 : (byte) 1;
        }
        throw new IllegalArgumentException("No Koblitz curve (ABC), TNAF multiplication not possible");
    }

    /* renamed from: public, reason: not valid java name */
    public static byte[] m35576public(byte b, Csuper csuper, byte b2, BigInteger bigInteger, BigInteger bigInteger2, Csuper[] csuperArr) {
        boolean z;
        if (b != 1 && b != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        int iBitLength = m35569final(b, csuper).bitLength();
        byte[] bArr = new byte[iBitLength > 30 ? iBitLength + 4 + b2 : b2 + 34];
        BigInteger bigIntegerShiftRight = bigInteger.shiftRight(1);
        BigInteger bigIntegerAdd = csuper.f32151do;
        BigInteger bigIntegerAdd2 = csuper.f32152if;
        int i = 0;
        while (true) {
            BigInteger bigInteger3 = ECConstants.ZERO;
            if (bigIntegerAdd.equals(bigInteger3) && bigIntegerAdd2.equals(bigInteger3)) {
                return bArr;
            }
            if (bigIntegerAdd.testBit(0)) {
                BigInteger bigIntegerMod = bigIntegerAdd.add(bigIntegerAdd2.multiply(bigInteger2)).mod(bigInteger);
                if (bigIntegerMod.compareTo(bigIntegerShiftRight) >= 0) {
                    bigIntegerMod = bigIntegerMod.subtract(bigInteger);
                }
                byte bIntValue = (byte) bigIntegerMod.intValue();
                bArr[i] = bIntValue;
                if (bIntValue < 0) {
                    bIntValue = (byte) (-bIntValue);
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    bigIntegerAdd = bigIntegerAdd.subtract(csuperArr[bIntValue].f32151do);
                    bigIntegerAdd2 = bigIntegerAdd2.subtract(csuperArr[bIntValue].f32152if);
                } else {
                    bigIntegerAdd = bigIntegerAdd.add(csuperArr[bIntValue].f32151do);
                    bigIntegerAdd2 = bigIntegerAdd2.add(csuperArr[bIntValue].f32152if);
                }
            } else {
                bArr[i] = 0;
            }
            BigInteger bigIntegerShiftRight2 = bigIntegerAdd.shiftRight(1);
            BigInteger bigIntegerAdd3 = b == 1 ? bigIntegerAdd2.add(bigIntegerShiftRight2) : bigIntegerAdd2.subtract(bigIntegerShiftRight2);
            BigInteger bigIntegerNegate = bigIntegerAdd.shiftRight(1).negate();
            i++;
            bigIntegerAdd = bigIntegerAdd3;
            bigIntegerAdd2 = bigIntegerNegate;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static Cgoto m35577super(byte b, Cgoto cgoto, Cgoto cgoto2) {
        Cgoto cgotoM35413public;
        Cgoto cgotoM35414super = cgoto.m35414super(cgoto);
        Cgoto cgotoM35414super2 = cgoto.m35414super(cgoto2);
        Cgoto cgotoM35411import = cgoto2.m35414super(cgoto2).m35411import(1);
        if (b == 1) {
            cgotoM35413public = cgotoM35414super.m35410if(cgotoM35414super2);
        } else {
            if (b != -1) {
                throw new IllegalArgumentException("mu must be 1 or -1");
            }
            cgotoM35413public = cgotoM35414super.m35413public(cgotoM35414super2);
        }
        return cgotoM35413public.m35410if(cgotoM35411import);
    }

    /* renamed from: this, reason: not valid java name */
    public static BigInteger[] m35578this(Cif.AbstractC0462if abstractC0462if) {
        if (!abstractC0462if.mo35339synchronized()) {
            throw new IllegalArgumentException("si is defined for Koblitz curves only");
        }
        int iMo35334switch = abstractC0462if.mo35334switch();
        int iIntValue = abstractC0462if.m35443throw().mo339static().intValue();
        byte bM35570for = m35570for(iIntValue);
        int iM35568else = m35568else(abstractC0462if.m35434native());
        BigInteger[] bigIntegerArrM35572if = m35572if(bM35570for, (iMo35334switch + 3) - iIntValue, false);
        if (bM35570for == 1) {
            bigIntegerArrM35572if[0] = bigIntegerArrM35572if[0].negate();
            bigIntegerArrM35572if[1] = bigIntegerArrM35572if[1].negate();
        }
        BigInteger bigInteger = ECConstants.ONE;
        return new BigInteger[]{bigInteger.add(bigIntegerArrM35572if[1]).shiftRight(iM35568else), bigInteger.add(bigIntegerArrM35572if[0]).shiftRight(iM35568else).negate()};
    }

    /* renamed from: throw, reason: not valid java name */
    public static Csuper m35579throw(BigInteger bigInteger, int i, byte b, BigInteger[] bigIntegerArr, byte b2, byte b3) {
        BigInteger bigIntegerAdd = b2 == 1 ? bigIntegerArr[0].add(bigIntegerArr[1]) : bigIntegerArr[0].subtract(bigIntegerArr[1]);
        BigInteger bigInteger2 = m35572if(b2, i, true)[1];
        Csuper csuperM35581while = m35581while(m35567do(bigInteger, bigIntegerArr[0], bigInteger2, b, i, b3), m35567do(bigInteger, bigIntegerArr[1], bigInteger2, b, i, b3), b2);
        return new Csuper(bigInteger.subtract(bigIntegerAdd.multiply(csuperM35581while.f32151do)).subtract(BigInteger.valueOf(2L).multiply(bigIntegerArr[1]).multiply(csuperM35581while.f32152if)), bigIntegerArr[1].multiply(csuperM35581while.f32151do).subtract(bigIntegerArr[0].multiply(csuperM35581while.f32152if)));
    }

    /* renamed from: try, reason: not valid java name */
    public static byte m35580try(Cfor cfor) {
        return (byte) (cfor.mo328break() ? -1 : 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
    
        if (r5.m35417try(org.bouncycastle.math.ec.Cthis.f32154do) < 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
    
        if (r5.m35417try(r9) >= 0) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Csuper m35581while(Cgoto cgoto, Cgoto cgoto2, byte b) {
        Cgoto cgotoM35410if;
        Cgoto cgotoM35413public;
        if (cgoto2.m35402catch() != cgoto.m35402catch()) {
            throw new IllegalArgumentException("lambda0 and lambda1 do not have same scale");
        }
        int i = -1;
        int i2 = 1;
        if (b != 1 && b != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        BigInteger bigIntegerM35418while = cgoto.m35418while();
        BigInteger bigIntegerM35418while2 = cgoto2.m35418while();
        Cgoto cgotoM35412native = cgoto.m35412native(bigIntegerM35418while);
        Cgoto cgotoM35412native2 = cgoto2.m35412native(bigIntegerM35418while2);
        Cgoto cgotoM35410if2 = cgotoM35412native.m35410if(cgotoM35412native);
        Cgoto cgotoM35410if3 = b == 1 ? cgotoM35410if2.m35410if(cgotoM35412native2) : cgotoM35410if2.m35413public(cgotoM35412native2);
        Cgoto cgotoM35410if4 = cgotoM35412native2.m35410if(cgotoM35412native2).m35410if(cgotoM35412native2);
        Cgoto cgotoM35410if5 = cgotoM35410if4.m35410if(cgotoM35412native2);
        if (b == 1) {
            cgotoM35410if = cgotoM35412native.m35413public(cgotoM35410if4);
            cgotoM35413public = cgotoM35412native.m35410if(cgotoM35410if5);
        } else {
            cgotoM35410if = cgotoM35412native.m35410if(cgotoM35410if4);
            cgotoM35413public = cgotoM35412native.m35413public(cgotoM35410if5);
        }
        BigInteger bigInteger = ECConstants.ONE;
        byte b2 = 0;
        if (cgotoM35410if3.m35417try(bigInteger) < 0) {
            if (cgotoM35413public.m35417try(ECConstants.TWO) >= 0) {
            }
            i2 = 0;
            if (cgotoM35410if3.m35417try(f32154do) < 0) {
                if (cgotoM35413public.m35417try(f32158if) < 0) {
                }
                i = i2;
                return new Csuper(bigIntegerM35418while.add(BigInteger.valueOf(i)), bigIntegerM35418while2.add(BigInteger.valueOf(b2)));
            }
            b2 = (byte) (-b);
            i = i2;
            return new Csuper(bigIntegerM35418while.add(BigInteger.valueOf(i)), bigIntegerM35418while2.add(BigInteger.valueOf(b2)));
        }
        b2 = b;
        i2 = 0;
        if (cgotoM35410if3.m35417try(f32154do) < 0) {
        }
        b2 = (byte) (-b);
        i = i2;
        return new Csuper(bigIntegerM35418while.add(BigInteger.valueOf(i)), bigIntegerM35418while2.add(BigInteger.valueOf(b2)));
    }
}
