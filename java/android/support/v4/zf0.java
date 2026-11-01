package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class zf0 {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f8525new = BigInteger.valueOf(1);

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f8526try = BigInteger.valueOf(2);

    /* renamed from: do, reason: not valid java name */
    private int f8527do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f8528for;

    /* renamed from: if, reason: not valid java name */
    private int f8529if;

    /* renamed from: case, reason: not valid java name */
    private void m10166case(long j, long j2, BigInteger[] bigIntegerArr) {
        long jNextInt = j;
        while (true) {
            if (jNextInt >= 0 && jNextInt <= freemarker.core.o3.f24027catch) {
                break;
            } else {
                jNextInt = this.f8528for.nextInt() * 2;
            }
        }
        long jNextInt2 = j2;
        while (true) {
            if (jNextInt2 >= 0 && jNextInt2 <= freemarker.core.o3.f24027catch && jNextInt2 / 2 != 0) {
                break;
            } else {
                jNextInt2 = (this.f8528for.nextInt() * 2) + 1;
            }
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Long.toString(jNextInt2));
        BigInteger bigInteger2 = new BigInteger("97781173");
        long j3 = jNextInt2;
        long jM10169new = m10169new(jNextInt, j3, bigIntegerArr2, 256);
        char c = 0;
        BigInteger bigInteger3 = bigIntegerArr2[0];
        long jM10169new2 = m10169new(jM10169new, j3, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[33];
        bigIntegerArr3[0] = new BigInteger(Long.toString(jM10169new2));
        while (true) {
            int i = 0;
            while (i < 32) {
                int i2 = i + 1;
                bigIntegerArr3[i2] = bigIntegerArr3[i].multiply(bigInteger2).add(bigInteger).mod(f8526try.pow(32));
                i = i2;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i3 = 0; i3 < 32; i3++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i3].multiply(f8526try.pow(i3 * 32)));
            }
            bigIntegerArr3[c] = bigIntegerArr3[32];
            BigInteger bigInteger6 = f8526try;
            int i4 = 1024;
            BigInteger bigIntegerAdd = bigInteger6.pow(1023).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(1023).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger6);
            BigInteger bigInteger7 = f8525new;
            if (bigIntegerMod.compareTo(bigInteger7) == 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigInteger7);
            }
            int i5 = 0;
            while (true) {
                long j4 = i5;
                BigInteger bigIntegerMultiply = bigInteger3.multiply(bigInteger4).multiply(bigIntegerAdd.add(BigInteger.valueOf(j4)));
                BigInteger bigInteger8 = f8525new;
                BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger8);
                BigInteger bigInteger9 = f8526try;
                if (bigIntegerAdd2.compareTo(bigInteger9.pow(i4)) == 1) {
                    break;
                }
                if (bigInteger9.modPow(bigInteger3.multiply(bigInteger4).multiply(bigIntegerAdd.add(BigInteger.valueOf(j4))), bigIntegerAdd2).compareTo(bigInteger8) == 0 && bigInteger9.modPow(bigInteger3.multiply(bigIntegerAdd.add(BigInteger.valueOf(j4))), bigIntegerAdd2).compareTo(bigInteger8) != 0) {
                    bigIntegerArr[0] = bigIntegerAdd2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                } else {
                    i5 += 2;
                    i4 = 1024;
                }
            }
            c = 0;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private BigInteger m10167else(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerSubtract = bigInteger.subtract(f8525new);
        BigInteger bigIntegerDivide = bigIntegerSubtract.divide(bigInteger2);
        int iBitLength = bigInteger.bitLength();
        while (true) {
            BigInteger bigIntegerM36314new = Cdo.m36314new(iBitLength, this.f8528for);
            BigInteger bigInteger3 = f8525new;
            if (bigIntegerM36314new.compareTo(bigInteger3) > 0 && bigIntegerM36314new.compareTo(bigIntegerSubtract) < 0) {
                BigInteger bigIntegerModPow = bigIntegerM36314new.modPow(bigIntegerDivide, bigInteger);
                if (bigIntegerModPow.compareTo(bigInteger3) != 0) {
                    return bigIntegerModPow;
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m10168for(int i, int i2, BigInteger[] bigIntegerArr, int i3) {
        BigInteger bigInteger;
        BigInteger[] bigIntegerArr2;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        int i4;
        int i5;
        int iNextInt = i;
        while (true) {
            if (iNextInt >= 0 && iNextInt <= 65536) {
                break;
            }
            iNextInt = this.f8528for.nextInt() / 32768;
        }
        int iNextInt2 = i2;
        while (true) {
            if (iNextInt2 >= 0 && iNextInt2 <= 65536 && iNextInt2 / 2 != 0) {
                break;
            }
            iNextInt2 = (this.f8528for.nextInt() / 32768) + 1;
        }
        BigInteger bigInteger4 = new BigInteger(Integer.toString(iNextInt2));
        BigInteger bigInteger5 = new BigInteger("19381");
        BigInteger bigInteger6 = new BigInteger(Integer.toString(iNextInt));
        int i6 = 0;
        BigInteger[] bigIntegerArr3 = {bigInteger6};
        int[] iArr = {i3};
        int i7 = 0;
        int i8 = 0;
        while (iArr[i7] >= 17) {
            int length = iArr.length + 1;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[length];
            System.arraycopy(iArr2, 0, iArr, 0, length);
            i8 = i7 + 1;
            iArr[i8] = iArr[i7] / 2;
            i7 = i8;
        }
        BigInteger[] bigIntegerArr4 = new BigInteger[i8 + 1];
        int i9 = 16;
        bigIntegerArr4[i8] = new BigInteger("8003", 16);
        int i10 = i8 - 1;
        int i11 = 0;
        while (true) {
            if (i11 >= i8) {
                bigInteger = bigIntegerArr3[0];
                break;
            }
            int i12 = iArr[i10] / i9;
            while (true) {
                int length2 = bigIntegerArr3.length;
                BigInteger[] bigIntegerArr5 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr3, i6, bigIntegerArr5, i6, bigIntegerArr3.length);
                bigIntegerArr2 = new BigInteger[i12 + 1];
                System.arraycopy(bigIntegerArr5, i6, bigIntegerArr2, i6, length2);
                int i13 = 0;
                while (i13 < i12) {
                    int i14 = i13 + 1;
                    bigIntegerArr2[i14] = bigIntegerArr2[i13].multiply(bigInteger5).add(bigInteger4).mod(f8526try.pow(i9));
                    i13 = i14;
                }
                BigInteger bigInteger7 = new BigInteger("0");
                for (int i15 = 0; i15 < i12; i15++) {
                    bigInteger7 = bigInteger7.add(bigIntegerArr2[i15].multiply(f8526try.pow(i15 * 16)));
                }
                bigIntegerArr2[i6] = bigIntegerArr2[i12];
                BigInteger bigInteger8 = f8526try;
                int i16 = i10 + 1;
                BigInteger bigIntegerAdd = bigInteger8.pow(iArr[i10] - 1).divide(bigIntegerArr4[i16]).add(bigInteger8.pow(iArr[i10] - 1).multiply(bigInteger7).divide(bigIntegerArr4[i16].multiply(bigInteger8.pow(i12 * 16))));
                BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger8);
                BigInteger bigInteger9 = f8525new;
                if (bigIntegerMod.compareTo(bigInteger9) == 0) {
                    bigIntegerAdd = bigIntegerAdd.add(bigInteger9);
                }
                int i17 = 0;
                while (true) {
                    bigInteger2 = bigInteger4;
                    bigInteger3 = bigInteger5;
                    long j = i17;
                    i4 = i8;
                    BigInteger bigIntegerMultiply = bigIntegerArr4[i16].multiply(bigIntegerAdd.add(BigInteger.valueOf(j)));
                    BigInteger bigInteger10 = f8525new;
                    bigIntegerArr4[i10] = bigIntegerMultiply.add(bigInteger10);
                    BigInteger bigInteger11 = bigIntegerArr4[i10];
                    BigInteger bigInteger12 = f8526try;
                    i5 = i12;
                    if (bigInteger11.compareTo(bigInteger12.pow(iArr[i10])) == 1) {
                        break;
                    }
                    if (bigInteger12.modPow(bigIntegerArr4[i16].multiply(bigIntegerAdd.add(BigInteger.valueOf(j))), bigIntegerArr4[i10]).compareTo(bigInteger10) == 0 && bigInteger12.modPow(bigIntegerAdd.add(BigInteger.valueOf(j)), bigIntegerArr4[i10]).compareTo(bigInteger10) != 0) {
                        break;
                    }
                    i17 += 2;
                    i8 = i4;
                    bigInteger5 = bigInteger3;
                    bigInteger4 = bigInteger2;
                    i12 = i5;
                }
                i8 = i4;
                bigInteger5 = bigInteger3;
                bigIntegerArr3 = bigIntegerArr2;
                bigInteger4 = bigInteger2;
                i12 = i5;
                i6 = 0;
                i9 = 16;
            }
            i10--;
            if (i10 < 0) {
                bigIntegerArr[0] = bigIntegerArr4[0];
                bigIntegerArr[1] = bigIntegerArr4[1];
                bigInteger = bigIntegerArr2[0];
                break;
            }
            i11++;
            i8 = i4;
            bigInteger5 = bigInteger3;
            bigIntegerArr3 = bigIntegerArr2;
            bigInteger4 = bigInteger2;
            i6 = 0;
            i9 = 16;
        }
        return bigInteger.intValue();
    }

    /* renamed from: new, reason: not valid java name */
    private long m10169new(long j, long j2, BigInteger[] bigIntegerArr, int i) {
        BigInteger bigInteger;
        BigInteger[] bigIntegerArr2;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        int i2;
        long jNextInt = j;
        while (true) {
            if (jNextInt >= 0 && jNextInt <= freemarker.core.o3.f24027catch) {
                break;
            }
            jNextInt = this.f8528for.nextInt() * 2;
        }
        long jNextInt2 = j2;
        while (true) {
            if (jNextInt2 >= 0 && jNextInt2 <= freemarker.core.o3.f24027catch && jNextInt2 / 2 != 0) {
                break;
            }
            jNextInt2 = (this.f8528for.nextInt() * 2) + 1;
        }
        BigInteger bigInteger4 = new BigInteger(Long.toString(jNextInt2));
        BigInteger bigInteger5 = new BigInteger("97781173");
        BigInteger bigInteger6 = new BigInteger(Long.toString(jNextInt));
        int i3 = 0;
        BigInteger[] bigIntegerArr3 = {bigInteger6};
        int[] iArr = {i};
        int i4 = 0;
        int i5 = 0;
        while (iArr[i4] >= 33) {
            int length = iArr.length + 1;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[length];
            System.arraycopy(iArr2, 0, iArr, 0, length);
            i5 = i4 + 1;
            iArr[i5] = iArr[i4] / 2;
            i4 = i5;
        }
        BigInteger[] bigIntegerArr4 = new BigInteger[i5 + 1];
        bigIntegerArr4[i5] = new BigInteger("8000000B", 16);
        int i6 = i5 - 1;
        int i7 = 0;
        while (true) {
            if (i7 >= i5) {
                bigInteger = bigIntegerArr3[0];
                break;
            }
            int i8 = 32;
            int i9 = iArr[i6] / 32;
            while (true) {
                int length2 = bigIntegerArr3.length;
                BigInteger[] bigIntegerArr5 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr3, i3, bigIntegerArr5, i3, bigIntegerArr3.length);
                bigIntegerArr2 = new BigInteger[i9 + 1];
                System.arraycopy(bigIntegerArr5, i3, bigIntegerArr2, i3, length2);
                int i10 = 0;
                while (i10 < i9) {
                    int i11 = i10 + 1;
                    bigIntegerArr2[i11] = bigIntegerArr2[i10].multiply(bigInteger5).add(bigInteger4).mod(f8526try.pow(i8));
                    i10 = i11;
                }
                BigInteger bigInteger7 = new BigInteger("0");
                for (int i12 = 0; i12 < i9; i12++) {
                    bigInteger7 = bigInteger7.add(bigIntegerArr2[i12].multiply(f8526try.pow(i12 * 32)));
                }
                bigIntegerArr2[i3] = bigIntegerArr2[i9];
                BigInteger bigInteger8 = f8526try;
                int i13 = i6 + 1;
                BigInteger bigIntegerAdd = bigInteger8.pow(iArr[i6] - 1).divide(bigIntegerArr4[i13]).add(bigInteger8.pow(iArr[i6] - 1).multiply(bigInteger7).divide(bigIntegerArr4[i13].multiply(bigInteger8.pow(i9 * 32))));
                BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger8);
                BigInteger bigInteger9 = f8525new;
                if (bigIntegerMod.compareTo(bigInteger9) == 0) {
                    bigIntegerAdd = bigIntegerAdd.add(bigInteger9);
                }
                int i14 = 0;
                while (true) {
                    long j3 = i14;
                    bigInteger2 = bigInteger4;
                    BigInteger bigIntegerMultiply = bigIntegerArr4[i13].multiply(bigIntegerAdd.add(BigInteger.valueOf(j3)));
                    BigInteger bigInteger10 = f8525new;
                    bigIntegerArr4[i6] = bigIntegerMultiply.add(bigInteger10);
                    BigInteger bigInteger11 = bigIntegerArr4[i6];
                    bigInteger3 = bigInteger5;
                    BigInteger bigInteger12 = f8526try;
                    i2 = i5;
                    if (bigInteger11.compareTo(bigInteger12.pow(iArr[i6])) == 1) {
                        break;
                    }
                    if (bigInteger12.modPow(bigIntegerArr4[i13].multiply(bigIntegerAdd.add(BigInteger.valueOf(j3))), bigIntegerArr4[i6]).compareTo(bigInteger10) == 0 && bigInteger12.modPow(bigIntegerAdd.add(BigInteger.valueOf(j3)), bigIntegerArr4[i6]).compareTo(bigInteger10) != 0) {
                        break;
                    }
                    i14 += 2;
                    bigInteger4 = bigInteger2;
                    i5 = i2;
                    bigInteger5 = bigInteger3;
                }
                bigInteger4 = bigInteger2;
                i5 = i2;
                bigIntegerArr3 = bigIntegerArr2;
                bigInteger5 = bigInteger3;
                i3 = 0;
                i8 = 32;
            }
            i6--;
            if (i6 < 0) {
                bigIntegerArr[0] = bigIntegerArr4[0];
                bigIntegerArr[1] = bigIntegerArr4[1];
                bigInteger = bigIntegerArr2[0];
                break;
            }
            i7++;
            bigInteger4 = bigInteger2;
            i5 = i2;
            bigIntegerArr3 = bigIntegerArr2;
            bigInteger5 = bigInteger3;
            i3 = 0;
        }
        return bigInteger.longValue();
    }

    /* renamed from: try, reason: not valid java name */
    private void m10170try(int i, int i2, BigInteger[] bigIntegerArr) {
        int iNextInt = i;
        while (true) {
            if (iNextInt >= 0 && iNextInt <= 65536) {
                break;
            } else {
                iNextInt = this.f8528for.nextInt() / 32768;
            }
        }
        int iNextInt2 = i2;
        while (true) {
            if (iNextInt2 >= 0 && iNextInt2 <= 65536 && iNextInt2 / 2 != 0) {
                break;
            } else {
                iNextInt2 = (this.f8528for.nextInt() / 32768) + 1;
            }
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Integer.toString(iNextInt2));
        BigInteger bigInteger2 = new BigInteger("19381");
        int iM10168for = m10168for(iNextInt, iNextInt2, bigIntegerArr2, 256);
        char c = 0;
        BigInteger bigInteger3 = bigIntegerArr2[0];
        int iM10168for2 = m10168for(iM10168for, iNextInt2, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[65];
        bigIntegerArr3[0] = new BigInteger(Integer.toString(iM10168for2));
        while (true) {
            int i3 = 0;
            while (i3 < 64) {
                int i4 = i3 + 1;
                bigIntegerArr3[i4] = bigIntegerArr3[i3].multiply(bigInteger2).add(bigInteger).mod(f8526try.pow(16));
                i3 = i4;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i5 = 0; i5 < 64; i5++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i5].multiply(f8526try.pow(i5 * 16)));
            }
            bigIntegerArr3[c] = bigIntegerArr3[64];
            BigInteger bigInteger6 = f8526try;
            int i6 = 1024;
            BigInteger bigIntegerAdd = bigInteger6.pow(1023).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(1023).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger bigIntegerMod = bigIntegerAdd.mod(bigInteger6);
            BigInteger bigInteger7 = f8525new;
            if (bigIntegerMod.compareTo(bigInteger7) == 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigInteger7);
            }
            BigInteger bigInteger8 = bigIntegerAdd;
            int i7 = 0;
            while (true) {
                long j = i7;
                BigInteger bigIntegerMultiply = bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j)));
                BigInteger bigInteger9 = f8525new;
                BigInteger bigIntegerAdd2 = bigIntegerMultiply.add(bigInteger9);
                BigInteger bigInteger10 = f8526try;
                if (bigIntegerAdd2.compareTo(bigInteger10.pow(i6)) == 1) {
                    break;
                }
                if (bigInteger10.modPow(bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j))), bigIntegerAdd2).compareTo(bigInteger9) == 0 && bigInteger10.modPow(bigInteger3.multiply(bigInteger8.add(BigInteger.valueOf(j))), bigIntegerAdd2).compareTo(bigInteger9) != 0) {
                    bigIntegerArr[0] = bigIntegerAdd2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                } else {
                    i7 += 2;
                    i6 = 1024;
                }
            }
            c = 0;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public yf0 m10171do() {
        BigInteger[] bigIntegerArr = new BigInteger[2];
        if (this.f8529if == 1) {
            int iNextInt = this.f8528for.nextInt();
            int iNextInt2 = this.f8528for.nextInt();
            int i = this.f8527do;
            if (i == 512) {
                m10168for(iNextInt, iNextInt2, bigIntegerArr, 512);
            } else {
                if (i != 1024) {
                    throw new IllegalArgumentException("Ooops! key size 512 or 1024 bit.");
                }
                m10170try(iNextInt, iNextInt2, bigIntegerArr);
            }
            BigInteger bigInteger = bigIntegerArr[0];
            BigInteger bigInteger2 = bigIntegerArr[1];
            return new yf0(bigInteger, bigInteger2, m10167else(bigInteger, bigInteger2), new hg0(iNextInt, iNextInt2));
        }
        long jNextLong = this.f8528for.nextLong();
        long jNextLong2 = this.f8528for.nextLong();
        int i2 = this.f8527do;
        if (i2 == 512) {
            m10169new(jNextLong, jNextLong2, bigIntegerArr, 512);
        } else {
            if (i2 != 1024) {
                throw new IllegalStateException("Ooops! key size 512 or 1024 bit.");
            }
            m10166case(jNextLong, jNextLong2, bigIntegerArr);
        }
        BigInteger bigInteger3 = bigIntegerArr[0];
        BigInteger bigInteger4 = bigIntegerArr[1];
        return new yf0(bigInteger3, bigInteger4, m10167else(bigInteger3, bigInteger4), new hg0(jNextLong, jNextLong2));
    }

    /* renamed from: if, reason: not valid java name */
    public void m10172if(int i, int i2, SecureRandom secureRandom) {
        this.f8527do = i;
        this.f8529if = i2;
        this.f8528for = secureRandom;
    }
}
