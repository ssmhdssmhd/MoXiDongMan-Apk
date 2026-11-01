package org.mozilla.javascript;

import android.support.v4.hy1;
import java.math.BigInteger;
import org.apache.commons.lang3.Ctry;

/* loaded from: classes3.dex */
class DToA {
    private static final int Bias = 1023;
    private static final int Bletch = 16;
    private static final int Bndry_mask = 1048575;
    public static final int DTOSTR_EXPONENTIAL = 3;
    public static final int DTOSTR_FIXED = 2;
    public static final int DTOSTR_PRECISION = 4;
    public static final int DTOSTR_STANDARD = 0;
    public static final int DTOSTR_STANDARD_EXPONENTIAL = 1;
    private static final int Exp_11 = 1072693248;
    private static final int Exp_mask = 2146435072;
    private static final int Exp_mask_shifted = 2047;
    private static final int Exp_msk1 = 1048576;
    private static final long Exp_msk1L = 4503599627370496L;
    private static final int Exp_shift = 20;
    private static final int Exp_shift1 = 20;
    private static final int Exp_shiftL = 52;
    private static final int Frac_mask = 1048575;
    private static final int Frac_mask1 = 1048575;
    private static final long Frac_maskL = 4503599627370495L;
    private static final int Int_max = 14;
    private static final int Log2P = 1;
    private static final int P = 53;
    private static final int Quick_max = 14;
    private static final int Sign_bit = Integer.MIN_VALUE;
    private static final int Ten_pmax = 22;
    private static final int n_bigtens = 5;
    private static final double[] tens = {1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d, 1.0E9d, 1.0E10d, 1.0E11d, 1.0E12d, 1.0E13d, 1.0E14d, 1.0E15d, 1.0E16d, 1.0E17d, 1.0E18d, 1.0E19d, 1.0E20d, 1.0E21d, 1.0E22d};
    private static final double[] bigtens = {1.0E16d, 1.0E32d, 1.0E64d, 1.0E128d, 1.0E256d};
    private static final int[] dtoaModes = {0, 0, 3, 2, 2};

    private static char BASEDIGIT(int i) {
        return (char) (i >= 10 ? i + 87 : i + 48);
    }

    /* JADX WARN: Code restructure failed: missing block: B:353:0x05f7, code lost:
    
        if (r12 <= 0) goto L368;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x05f9, code lost:
    
        r2 = r11.shiftLeft(1).compareTo(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x0602, code lost:
    
        if (r2 > 0) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x0604, code lost:
    
        if (r2 != 0) goto L368;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0608, code lost:
    
        if ((r8 & 1) == 1) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x060a, code lost:
    
        if (r44 == false) goto L368;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x060c, code lost:
    
        r0 = (char) (r8 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0611, code lost:
    
        if (r8 != '9') goto L367;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0613, code lost:
    
        r47.append('9');
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x061a, code lost:
    
        if (roundOff(r47) == false) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x061c, code lost:
    
        r14 = r14 + 1;
        r47.append('1');
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0625, code lost:
    
        return r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0626, code lost:
    
        r11 = 1;
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0629, code lost:
    
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x062a, code lost:
    
        r47.append(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x062e, code lost:
    
        return r14 + r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x04d9  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0502  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x062f  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0652 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:383:0x065f  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int JS_dtoa(double d, int i, boolean z, int i2, boolean[] zArr, StringBuilder sb) {
        double word0;
        int[] iArr;
        long jWord1;
        double word02;
        int i3;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z4;
        BigInteger bigInteger;
        int i8;
        int i9;
        boolean z5;
        boolean z6;
        int i10;
        int i11;
        double d2;
        boolean z7;
        int i12;
        int i13;
        int i14;
        int i15;
        char c;
        int i16;
        double d3;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        BigInteger bigIntegerMultiply;
        boolean z8;
        int i23;
        int i24;
        int iHi0bits;
        int i25;
        int i26;
        int i27;
        BigInteger bigInteger2;
        char cIntValue;
        char cIntValue2;
        int iCompareTo;
        int i28;
        int i29;
        int i30;
        int iCompareTo2;
        int i31;
        int i32;
        int i33;
        char c2;
        double d4;
        int i34;
        int i35;
        boolean z9;
        char c3;
        char c4;
        double d5;
        int i36;
        int i37;
        boolean z10;
        int i38 = i;
        int[] iArr2 = new int[1];
        int[] iArr3 = new int[1];
        if ((word0(d) & Integer.MIN_VALUE) != 0) {
            zArr[0] = true;
            word0 = setWord0(d, word0(d) & Integer.MAX_VALUE);
        } else {
            word0 = d;
            zArr[0] = false;
        }
        if ((word0(word0) & Exp_mask) == Exp_mask) {
            sb.append((word1(word0) == 0 && (word0(word0) & 1048575) == 0) ? "Infinity" : "NaN");
            return 9999;
        }
        if (word0 == 0.0d) {
            sb.setLength(0);
            sb.append('0');
            return 1;
        }
        BigInteger bigIntegerD2b = d2b(word0, iArr2, iArr3);
        int iWord0 = (word0(word0) >>> 20) & Exp_mask_shifted;
        if (iWord0 != 0) {
            i3 = iWord0 - 1023;
            iArr = iArr2;
            word02 = setWord0(word0, (word0(word0) & 1048575) | Exp_11);
            z2 = false;
        } else {
            int i39 = iArr3[0] + iArr2[0] + 1074;
            if (i39 > 32) {
                iArr = iArr2;
                jWord1 = (word1(word0) >>> (i39 - 32)) | (word0(word0) << (64 - i39));
            } else {
                iArr = iArr2;
                jWord1 = word1(word0) << (32 - i39);
            }
            double d6 = jWord1;
            word02 = setWord0(d6, word0(d6) - 32505856);
            i3 = i39 - 1075;
            z2 = true;
        }
        double d7 = i3;
        Double.isNaN(d7);
        double d8 = ((word02 - 1.5d) * 0.289529654602168d) + 0.1760912590558d + (d7 * 0.301029995663981d);
        int i40 = (int) d8;
        if (d8 < 0.0d && d8 != i40) {
            i40--;
        }
        if (i40 < 0 || i40 > 22) {
            z3 = true;
        } else {
            if (word0 < tens[i40]) {
                i40--;
            }
            z3 = false;
        }
        int i41 = (iArr3[0] - i3) - 1;
        if (i41 >= 0) {
            i5 = i41;
            i4 = 0;
        } else {
            i4 = -i41;
            i5 = 0;
        }
        if (i40 >= 0) {
            i5 += i40;
            i7 = i40;
            i6 = 0;
        } else {
            i4 -= i40;
            i6 = -i40;
            i7 = 0;
        }
        if (i38 < 0 || i38 > 9) {
            i38 = 0;
        }
        if (i38 > 5) {
            i38 -= 4;
            z4 = false;
        } else {
            z4 = true;
        }
        int i42 = -1;
        if (i38 != 0) {
            z5 = true;
            if (i38 != 1) {
                if (i38 != 2) {
                    if (i38 == 3) {
                        z10 = false;
                    } else if (i38 != 4) {
                        if (i38 != 5) {
                            i8 = i2;
                            bigInteger = bigIntegerD2b;
                            i9 = 0;
                            i42 = 0;
                        } else {
                            z10 = true;
                        }
                    }
                    int i43 = i2 + i40 + 1;
                    bigInteger = bigIntegerD2b;
                    i9 = i43;
                    i42 = i43 - 1;
                    z5 = z10;
                    i8 = i2;
                } else {
                    z5 = false;
                }
                i8 = i2 <= 0 ? 1 : i2;
                i9 = i8;
                i42 = i9;
                bigInteger = bigIntegerD2b;
            } else {
                bigInteger = bigIntegerD2b;
                i8 = 0;
                i9 = -1;
                z5 = true;
            }
        }
        if (i9 < 0 || i9 > 14 || !z4) {
            z6 = z3;
            i10 = i4;
            i11 = i9;
            d2 = word0;
            z7 = z2;
            i12 = i5;
            i13 = i6;
            i14 = i7;
            i15 = i40;
            c = 0;
        } else {
            if (i40 > 0) {
                double d9 = tens[i40 & 15];
                int i44 = i40 >> 4;
                if ((i44 & 16) != 0) {
                    i44 &= 15;
                    d5 = word0 / bigtens[4];
                    i36 = 0;
                    i37 = 3;
                } else {
                    d5 = word0;
                    i36 = 0;
                    i37 = 2;
                }
                while (i44 != 0) {
                    if ((i44 & 1) != 0) {
                        i37++;
                        d9 *= bigtens[i36];
                    }
                    i44 >>= 1;
                    i36++;
                }
                d4 = d5 / d9;
                i34 = i37;
            } else {
                int i45 = -i40;
                if (i45 != 0) {
                    int i46 = i45 >> 4;
                    d4 = tens[i45 & 15] * word0;
                    i34 = 2;
                    int i47 = 0;
                    while (i46 != 0) {
                        if ((i46 & 1) != 0) {
                            i34++;
                            d4 *= bigtens[i47];
                        }
                        i46 >>= 1;
                        i47++;
                    }
                } else {
                    d4 = word0;
                    i34 = 2;
                }
            }
            if (!z3 || d4 >= 1.0d || i9 <= 0) {
                i11 = i9;
                d2 = word0;
                i35 = i40;
            } else if (i42 <= 0) {
                i11 = i9;
                d2 = word0;
                i35 = i40;
                z9 = true;
                double d10 = i34;
                Double.isNaN(d10);
                double d11 = (d10 * d4) + 7.0d;
                double word03 = setWord0(d11, word0(d11) - 54525952);
                if (i9 != 0) {
                    d4 -= 5.0d;
                    if (d4 > word03) {
                        sb.append('1');
                        i35++;
                        return i35 + 1;
                    }
                    z7 = z2;
                    if (d4 < (-word03)) {
                        sb.setLength(0);
                        sb.append('0');
                        return 1;
                    }
                    z9 = true;
                } else {
                    z7 = z2;
                }
                if (!z9) {
                    z6 = z3;
                    i10 = i4;
                    i12 = i5;
                    i13 = i6;
                    i14 = i7;
                    i15 = i40;
                } else {
                    if (!z5) {
                        z6 = z3;
                        i10 = i4;
                        i12 = i5;
                        i13 = i6;
                        i14 = i7;
                        i15 = i40;
                        double d12 = word03 * tens[i9 - 1];
                        double d13 = d4;
                        int i48 = 1;
                        while (true) {
                            double d14 = (long) d13;
                            Double.isNaN(d14);
                            d4 = d13 - d14;
                            sb.append((char) (r13 + 48));
                            if (i48 == i9) {
                                break;
                            }
                            i48++;
                            d13 = d4 * 10.0d;
                        }
                        if (d4 > d12 + 0.5d) {
                            while (true) {
                                char cCharAt = sb.charAt(sb.length() - 1);
                                sb.setLength(sb.length() - 1);
                                if (cCharAt != '9') {
                                    c3 = cCharAt;
                                    break;
                                }
                                if (sb.length() == 0) {
                                    i35++;
                                    c3 = '0';
                                    break;
                                }
                            }
                            sb.append((char) (c3 + 1));
                        } else {
                            if (d4 < 0.5d - d12) {
                                stripTrailingZeroes(sb);
                            }
                            z9 = true;
                        }
                        return i35 + 1;
                    }
                    double d15 = (0.5d / tens[i9 - 1]) - word03;
                    z6 = z3;
                    i10 = i4;
                    i14 = i7;
                    i15 = i40;
                    double d16 = d4;
                    int i49 = 0;
                    while (true) {
                        i12 = i5;
                        i13 = i6;
                        double d17 = (long) d16;
                        Double.isNaN(d17);
                        d4 = d16 - d17;
                        sb.append((char) (r13 + 48));
                        if (d4 < d15) {
                            break;
                        }
                        if (1.0d - d4 < d15) {
                            while (true) {
                                char cCharAt2 = sb.charAt(sb.length() - 1);
                                sb.setLength(sb.length() - 1);
                                if (cCharAt2 != '9') {
                                    c4 = cCharAt2;
                                    break;
                                }
                                if (sb.length() == 0) {
                                    i35++;
                                    c4 = '0';
                                    break;
                                }
                            }
                            sb.append((char) (c4 + 1));
                        } else {
                            i49++;
                            if (i49 >= i9) {
                                break;
                            }
                            d15 *= 10.0d;
                            d16 = d4 * 10.0d;
                            i5 = i12;
                            i6 = i13;
                        }
                    }
                    z9 = true;
                }
                c = 0;
                if (z9) {
                    i16 = i35;
                    d3 = d4;
                    if (iArr[c] < 0 && i16 <= 14) {
                        double d18 = tens[i16];
                        if (i8 < 0 && i9 <= 0) {
                            if (i9 >= 0) {
                                double d19 = d18 * 5.0d;
                                if (d3 >= d19 && (z || d3 != d19)) {
                                    sb.append('1');
                                    return i16 + 1 + 1;
                                }
                            }
                            sb.setLength(0);
                            sb.append('0');
                            return 1;
                        }
                        int i50 = 1;
                        while (true) {
                            long j = (long) (d3 / d18);
                            double d20 = j;
                            Double.isNaN(d20);
                            double d21 = d3 - (d20 * d18);
                            sb.append((char) (j + 48));
                            if (i50 == i9) {
                                double d22 = d21 + d21;
                                if (d22 > d18 || (d22 == d18 && ((j & 1) != 0 || z))) {
                                    while (true) {
                                        i33 = 1;
                                        char cCharAt3 = sb.charAt(sb.length() - 1);
                                        sb.setLength(sb.length() - 1);
                                        if (cCharAt3 != '9') {
                                            c2 = cCharAt3;
                                            break;
                                        }
                                        if (sb.length() == 0) {
                                            i16++;
                                            c2 = '0';
                                            break;
                                        }
                                    }
                                    sb.append((char) (c2 + 1));
                                } else {
                                    i33 = 1;
                                }
                            } else {
                                i33 = 1;
                                d3 = d21 * 10.0d;
                                if (d3 == 0.0d) {
                                    break;
                                }
                                i50++;
                            }
                        }
                        return i16 + i33;
                    }
                    BigInteger bigIntegerMultiply2 = null;
                    if (z5) {
                        i17 = i13;
                        i18 = i17;
                        i19 = i10;
                        i20 = i19;
                        i21 = i14;
                        i22 = i12;
                    } else {
                        if (i38 < 2) {
                            i32 = z7 ? iArr[0] + 1075 : 54 - iArr3[0];
                            i19 = i10;
                            i21 = i14;
                            i17 = i13;
                        } else {
                            int i51 = i9 - 1;
                            int i52 = i13;
                            if (i52 >= i51) {
                                i31 = i52 - i51;
                                i21 = i14;
                            } else {
                                int i53 = i51 - i52;
                                i21 = i14 + i53;
                                i52 += i53;
                                i31 = 0;
                            }
                            if (i9 < 0) {
                                i19 = i10 - i9;
                                i13 = i52;
                                i17 = i31;
                                i32 = 0;
                            } else {
                                i13 = i52;
                                i19 = i10;
                                i17 = i31;
                                i32 = i9;
                            }
                        }
                        i20 = i10 + i32;
                        i22 = i12 + i32;
                        bigIntegerMultiply2 = BigInteger.valueOf(1L);
                        i18 = i13;
                    }
                    if (i19 > 0 && i22 > 0) {
                        int i54 = i19 >= i22 ? i19 : i22;
                        i20 -= i54;
                        i19 -= i54;
                        i22 -= i54;
                    }
                    if (i18 > 0) {
                        bigIntegerMultiply = bigInteger;
                    } else if (z5) {
                        if (i17 > 0) {
                            bigIntegerMultiply2 = pow5mult(bigIntegerMultiply2, i17);
                            bigIntegerMultiply = bigIntegerMultiply2.multiply(bigInteger);
                        } else {
                            bigIntegerMultiply = bigInteger;
                        }
                        int i55 = i18 - i17;
                        if (i55 != 0) {
                            bigIntegerMultiply = pow5mult(bigIntegerMultiply, i55);
                        }
                    } else {
                        bigIntegerMultiply = pow5mult(bigInteger, i18);
                    }
                    BigInteger bigIntegerValueOf = BigInteger.valueOf(1L);
                    if (i21 > 0) {
                        bigIntegerValueOf = pow5mult(bigIntegerValueOf, i21);
                    }
                    if (i38 < 2 || word1(d3) != 0 || (word0(d3) & 1048575) != 0 || (word0(d3) & 2145386496) == 0) {
                        z8 = false;
                    } else {
                        i20++;
                        i22++;
                        z8 = true;
                    }
                    byte[] byteArray = bigIntegerValueOf.toByteArray();
                    int i56 = i9;
                    double d23 = d3;
                    i23 = 0;
                    int i57 = 0;
                    for (i24 = 4; i23 < i24; i24 = 4) {
                        int i58 = i57 << 8;
                        if (i23 < byteArray.length) {
                            i58 |= byteArray[i23] & 255;
                        }
                        i57 = i58;
                        i23++;
                    }
                    iHi0bits = ((i21 == 0 ? 32 - hi0bits(i57) : 1) + i22) & 31;
                    if (iHi0bits != 0) {
                        iHi0bits = 32 - iHi0bits;
                    }
                    if (iHi0bits > 4) {
                        if (iHi0bits < 4) {
                            i25 = iHi0bits + 28;
                        }
                        if (i20 > 0) {
                            bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i20);
                        }
                        if (i22 > 0) {
                            bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i22);
                        }
                        if (!z6 || bigIntegerMultiply.compareTo(bigIntegerValueOf) >= 0) {
                            i26 = i56;
                        } else {
                            i16--;
                            bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                            if (z5) {
                                bigIntegerMultiply2 = bigIntegerMultiply2.multiply(BigInteger.valueOf(10L));
                            }
                            i26 = i42;
                        }
                        if (i26 > 0 && i38 > 2) {
                            if (i26 < 0 || (iCompareTo2 = bigIntegerMultiply.compareTo(bigIntegerValueOf.multiply(BigInteger.valueOf(5L)))) < 0) {
                                i29 = 1;
                                i30 = 0;
                            } else {
                                if (iCompareTo2 != 0 || z) {
                                    sb.append('1');
                                    return i16 + 1 + 1;
                                }
                                i30 = 0;
                                i29 = 1;
                            }
                            sb.setLength(i30);
                            sb.append('0');
                            return i29;
                        }
                        char c5 = 1;
                        if (z5) {
                            if (i19 > 0) {
                                bigIntegerMultiply2 = bigIntegerMultiply2.shiftLeft(i19);
                            }
                            BigInteger bigIntegerShiftLeft = z8 ? bigIntegerMultiply2.shiftLeft(1) : bigIntegerMultiply2;
                            int i59 = 1;
                            while (true) {
                                BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerMultiply.divideAndRemainder(bigIntegerValueOf);
                                BigInteger bigInteger3 = bigIntegerArrDivideAndRemainder[c5];
                                cIntValue2 = (char) (bigIntegerArrDivideAndRemainder[0].intValue() + 48);
                                int iCompareTo3 = bigInteger3.compareTo(bigIntegerMultiply2);
                                BigInteger bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerShiftLeft);
                                int iCompareTo4 = bigIntegerSubtract.signum() <= 0 ? 1 : bigInteger3.compareTo(bigIntegerSubtract);
                                if (iCompareTo4 == 0 && i38 == 0) {
                                    i28 = 1;
                                    if ((word1(d23) & 1) == 0) {
                                        if (cIntValue2 != '9') {
                                            if (iCompareTo3 > 0) {
                                                cIntValue2 = (char) (cIntValue2 + 1);
                                            }
                                            sb.append(cIntValue2);
                                            return i16 + 1;
                                        }
                                        sb.append('9');
                                        if (roundOff(sb)) {
                                            i16++;
                                            sb.append('1');
                                        }
                                        return i16 + 1;
                                    }
                                } else {
                                    i28 = 1;
                                }
                                if (iCompareTo3 < 0 || (iCompareTo3 == 0 && i38 == 0 && (word1(d23) & i28) == 0)) {
                                    break;
                                }
                                if (iCompareTo4 > 0) {
                                    if (cIntValue2 != '9') {
                                        sb.append((char) (cIntValue2 + 1));
                                        return i16 + 1;
                                    }
                                    sb.append('9');
                                    if (roundOff(sb)) {
                                        i16++;
                                        sb.append('1');
                                    }
                                    return i16 + 1;
                                }
                                sb.append(cIntValue2);
                                if (i59 == i26) {
                                    bigInteger2 = bigInteger3;
                                    i27 = 1;
                                    break;
                                }
                                bigIntegerMultiply = bigInteger3.multiply(BigInteger.valueOf(10L));
                                if (bigIntegerMultiply2 == bigIntegerShiftLeft) {
                                    bigIntegerMultiply2 = bigIntegerShiftLeft.multiply(BigInteger.valueOf(10L));
                                    bigIntegerShiftLeft = bigIntegerMultiply2;
                                } else {
                                    bigIntegerMultiply2 = bigIntegerMultiply2.multiply(BigInteger.valueOf(10L));
                                    bigIntegerShiftLeft = bigIntegerShiftLeft.multiply(BigInteger.valueOf(10L));
                                }
                                i59++;
                                c5 = 1;
                            }
                        } else {
                            i27 = 1;
                            int i60 = 1;
                            while (true) {
                                BigInteger[] bigIntegerArrDivideAndRemainder2 = bigIntegerMultiply.divideAndRemainder(bigIntegerValueOf);
                                bigInteger2 = bigIntegerArrDivideAndRemainder2[1];
                                cIntValue = (char) (bigIntegerArrDivideAndRemainder2[0].intValue() + 48);
                                sb.append(cIntValue);
                                if (i60 >= i26) {
                                    break;
                                }
                                i60++;
                                bigIntegerMultiply = bigInteger2.multiply(BigInteger.valueOf(10L));
                            }
                            cIntValue2 = cIntValue;
                        }
                        iCompareTo = bigInteger2.shiftLeft(i27).compareTo(bigIntegerValueOf);
                        if (iCompareTo <= 0 && !(iCompareTo == 0 && ((cIntValue2 & 1) == i27 || z))) {
                            stripTrailingZeroes(sb);
                        } else if (roundOff(sb)) {
                            sb.append('1');
                            return i16 + i27 + i27;
                        }
                        return i16 + i27;
                    }
                    i25 = iHi0bits - 4;
                    i20 += i25;
                    i19 += i25;
                    i22 += i25;
                    if (i20 > 0) {
                    }
                    if (i22 > 0) {
                    }
                    if (z6) {
                        i26 = i56;
                    }
                    if (i26 > 0) {
                    }
                    char c52 = 1;
                    if (z5) {
                    }
                    iCompareTo = bigInteger2.shiftLeft(i27).compareTo(bigIntegerValueOf);
                    if (iCompareTo <= 0) {
                        if (roundOff(sb)) {
                        }
                    }
                    return i16 + i27;
                }
                sb.setLength(0);
            } else {
                d4 *= 10.0d;
                i34++;
                i11 = i9;
                d2 = word0;
                i35 = i40 - 1;
                i9 = i42;
            }
            z9 = false;
            double d102 = i34;
            Double.isNaN(d102);
            double d112 = (d102 * d4) + 7.0d;
            double word032 = setWord0(d112, word0(d112) - 54525952);
            if (i9 != 0) {
            }
            if (!z9) {
            }
            c = 0;
            if (z9) {
            }
        }
        i9 = i11;
        d3 = d2;
        i16 = i15;
        if (iArr[c] < 0) {
        }
        BigInteger bigIntegerMultiply22 = null;
        if (z5) {
        }
        if (i19 > 0) {
            if (i19 >= i22) {
            }
            i20 -= i54;
            i19 -= i54;
            i22 -= i54;
        }
        if (i18 > 0) {
        }
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(1L);
        if (i21 > 0) {
        }
        if (i38 < 2) {
            z8 = false;
        }
        byte[] byteArray2 = bigIntegerValueOf2.toByteArray();
        int i562 = i9;
        double d232 = d3;
        i23 = 0;
        int i572 = 0;
        while (i23 < i24) {
        }
        iHi0bits = ((i21 == 0 ? 32 - hi0bits(i572) : 1) + i22) & 31;
        if (iHi0bits != 0) {
        }
        if (iHi0bits > 4) {
        }
        i20 += i25;
        i19 += i25;
        i22 += i25;
        if (i20 > 0) {
        }
        if (i22 > 0) {
        }
        if (z6) {
        }
        if (i26 > 0) {
        }
        char c522 = 1;
        if (z5) {
        }
        iCompareTo = bigInteger2.shiftLeft(i27).compareTo(bigIntegerValueOf2);
        if (iCompareTo <= 0) {
        }
        return i16 + i27;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0123, code lost:
    
        if (r9 > 0) goto L76;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String JS_dtobasestr(int i, double d) {
        boolean z;
        String string;
        BigInteger bigIntegerMultiply;
        if (2 > i || i > 36) {
            throw new IllegalArgumentException("Bad base: " + i);
        }
        if (Double.isNaN(d)) {
            return "NaN";
        }
        if (Double.isInfinite(d)) {
            return d > 0.0d ? "Infinity" : "-Infinity";
        }
        if (d == 0.0d) {
            return "0";
        }
        if (d >= 0.0d) {
            z = false;
        } else {
            d = -d;
            z = true;
        }
        double dFloor = Math.floor(d);
        long j = (long) dFloor;
        if (j == dFloor) {
            if (z) {
                j = -j;
            }
            string = Long.toString(j, i);
        } else {
            long jDoubleToLongBits = Double.doubleToLongBits(dFloor);
            int i2 = ((int) (jDoubleToLongBits >> 52)) & Exp_mask_shifted;
            long j2 = i2 == 0 ? (jDoubleToLongBits & 4503599627370495L) << 1 : (jDoubleToLongBits & 4503599627370495L) | 4503599627370496L;
            if (z) {
                j2 = -j2;
            }
            int i3 = i2 - 1075;
            BigInteger bigIntegerValueOf = BigInteger.valueOf(j2);
            if (i3 > 0) {
                bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i3);
            } else if (i3 < 0) {
                bigIntegerValueOf = bigIntegerValueOf.shiftRight(-i3);
            }
            string = bigIntegerValueOf.toString(i);
        }
        if (d == dFloor) {
            return string;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(Ctry.f28883do);
        double d2 = d - dFloor;
        long jDoubleToLongBits2 = Double.doubleToLongBits(d);
        int i4 = (int) (jDoubleToLongBits2 >> 32);
        int i5 = (int) jDoubleToLongBits2;
        int[] iArr = new int[1];
        BigInteger bigIntegerD2b = d2b(d2, iArr, new int[1]);
        int i6 = -((i4 >>> 20) & Exp_mask_shifted);
        if (i6 == 0) {
            i6 = -1;
        }
        int i7 = i6 + 1076;
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(1L);
        if (i5 == 0 && (1048575 & i4) == 0 && (i4 & 2145386496) != 0) {
            i7++;
            bigIntegerMultiply = BigInteger.valueOf(2L);
        } else {
            bigIntegerMultiply = bigIntegerValueOf2;
        }
        BigInteger bigIntegerShiftLeft = bigIntegerD2b.shiftLeft(iArr[0] + i7);
        BigInteger bigIntegerShiftLeft2 = BigInteger.valueOf(1L).shiftLeft(i7);
        BigInteger bigIntegerValueOf3 = BigInteger.valueOf(i);
        boolean z2 = false;
        while (true) {
            BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerShiftLeft.multiply(bigIntegerValueOf3).divideAndRemainder(bigIntegerShiftLeft2);
            BigInteger bigIntegerShiftLeft3 = bigIntegerArrDivideAndRemainder[1];
            int iIntValue = (char) bigIntegerArrDivideAndRemainder[0].intValue();
            if (bigIntegerValueOf2 == bigIntegerMultiply) {
                bigIntegerMultiply = bigIntegerValueOf2.multiply(bigIntegerValueOf3);
                bigIntegerValueOf2 = bigIntegerMultiply;
            } else {
                BigInteger bigIntegerMultiply2 = bigIntegerValueOf2.multiply(bigIntegerValueOf3);
                bigIntegerMultiply = bigIntegerMultiply.multiply(bigIntegerValueOf3);
                bigIntegerValueOf2 = bigIntegerMultiply2;
            }
            int iCompareTo = bigIntegerShiftLeft3.compareTo(bigIntegerValueOf2);
            BigInteger bigIntegerSubtract = bigIntegerShiftLeft2.subtract(bigIntegerMultiply);
            int iCompareTo2 = bigIntegerSubtract.signum() <= 0 ? 1 : bigIntegerShiftLeft3.compareTo(bigIntegerSubtract);
            if (iCompareTo2 == 0 && (i5 & 1) == 0) {
                if (iCompareTo > 0) {
                    iIntValue++;
                }
                z2 = true;
            } else {
                if (iCompareTo < 0 || (iCompareTo == 0 && (i5 & 1) == 0)) {
                    if (iCompareTo2 > 0) {
                        bigIntegerShiftLeft3 = bigIntegerShiftLeft3.shiftLeft(1);
                        if (bigIntegerShiftLeft3.compareTo(bigIntegerShiftLeft2) > 0) {
                        }
                    }
                    z2 = true;
                }
                iIntValue++;
                z2 = true;
            }
            sb.append(BASEDIGIT(iIntValue));
            if (z2) {
                return sb.toString();
            }
            bigIntegerShiftLeft = bigIntegerShiftLeft3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x005f A[LOOP:0: B:41:0x005f->B:75:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void JS_dtostr(StringBuilder sb, int i, int i2, double d) {
        boolean z;
        boolean[] zArr = new boolean[1];
        if (i == 2 && (d >= 1.0E21d || d <= -1.0E21d)) {
            i = 0;
        }
        int iJS_dtoa = JS_dtoa(d, dtoaModes[i], i >= 2, i2, zArr, sb);
        int length = sb.length();
        if (iJS_dtoa != 9999) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        i2 = i2 >= 0 ? i2 + iJS_dtoa : iJS_dtoa;
                    } else if (i != 3) {
                        if (i != 4) {
                            z = false;
                            i2 = 0;
                            if (length < i2) {
                                do {
                                    sb.append('0');
                                } while (sb.length() != i2);
                                length = i2;
                            }
                            if (!z) {
                                if (length != 1) {
                                    sb.insert(1, Ctry.f28883do);
                                }
                                sb.append('e');
                                int i3 = iJS_dtoa - 1;
                                if (i3 >= 0) {
                                    sb.append(hy1.f2562if);
                                }
                                sb.append(i3);
                            } else if (iJS_dtoa != length) {
                                if (iJS_dtoa > 0) {
                                    sb.insert(iJS_dtoa, Ctry.f28883do);
                                } else {
                                    for (int i4 = 0; i4 < 1 - iJS_dtoa; i4++) {
                                        sb.insert(0, '0');
                                    }
                                    sb.insert(1, Ctry.f28883do);
                                }
                            }
                        } else {
                            if (iJS_dtoa < -5 || iJS_dtoa > i2) {
                            }
                            if (length < i2) {
                            }
                            if (!z) {
                            }
                        }
                    }
                    z = false;
                    if (length < i2) {
                    }
                    if (!z) {
                    }
                } else {
                    i2 = 0;
                }
                z = true;
                if (length < i2) {
                }
                if (!z) {
                }
            } else {
                if (iJS_dtoa < -5 || iJS_dtoa > 21) {
                    z = true;
                    i2 = 0;
                    if (length < i2) {
                    }
                    if (!z) {
                    }
                }
                z = false;
                if (length < i2) {
                }
                if (!z) {
                }
            }
        }
        if (zArr[0]) {
            if (word0(d) == Integer.MIN_VALUE && word1(d) == 0) {
                return;
            }
            if ((word0(d) & Exp_mask) != Exp_mask || (word1(d) == 0 && (word0(d) & 1048575) == 0)) {
                sb.insert(0, hy1.f2561for);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static BigInteger d2b(double d, int[] iArr, int[] iArr2) {
        byte[] bArr;
        int iLo0bits;
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        int i = (int) (jDoubleToLongBits >>> 32);
        int i2 = (int) jDoubleToLongBits;
        int i3 = 1048575 & i;
        int i4 = (Integer.MAX_VALUE & i) >>> 20;
        if (i4 != 0) {
            i3 |= 1048576;
        }
        if (i2 != 0) {
            bArr = new byte[8];
            iLo0bits = lo0bits(i2);
            int i5 = i2 >>> iLo0bits;
            if (iLo0bits != 0) {
                stuffBits(bArr, 4, i5 | (i3 << (32 - iLo0bits)));
                i3 >>= iLo0bits;
            } else {
                stuffBits(bArr, 4, i5);
            }
            stuffBits(bArr, 0, i3);
            int i6 = i3 != 0 ? 2 : 1;
            if (i4 == 0) {
                iArr[0] = ((i4 - 1023) - 52) + iLo0bits;
                iArr2[0] = 53 - iLo0bits;
            } else {
                iArr[0] = ((i4 - 1023) - 52) + 1 + iLo0bits;
                iArr2[0] = (i6 * 32) - hi0bits(i3);
            }
            return new BigInteger(bArr);
        }
        bArr = new byte[4];
        int iLo0bits2 = lo0bits(i3);
        i3 >>>= iLo0bits2;
        stuffBits(bArr, 0, i3);
        iLo0bits = iLo0bits2 + 32;
        if (i4 == 0) {
        }
        return new BigInteger(bArr);
    }

    private static int hi0bits(int i) {
        int i2;
        if (((-65536) & i) == 0) {
            i <<= 16;
            i2 = 16;
        } else {
            i2 = 0;
        }
        if (((-16777216) & i) == 0) {
            i2 += 8;
            i <<= 8;
        }
        if (((-268435456) & i) == 0) {
            i2 += 4;
            i <<= 4;
        }
        if (((-1073741824) & i) == 0) {
            i2 += 2;
            i <<= 2;
        }
        if ((Integer.MIN_VALUE & i) == 0) {
            i2++;
            if ((i & 1073741824) == 0) {
                return 32;
            }
        }
        return i2;
    }

    private static int lo0bits(int i) {
        int i2 = 0;
        if ((i & 7) != 0) {
            if ((i & 1) != 0) {
                return 0;
            }
            return (i & 2) != 0 ? 1 : 2;
        }
        if ((65535 & i) == 0) {
            i >>>= 16;
            i2 = 16;
        }
        if ((i & 255) == 0) {
            i2 += 8;
            i >>>= 8;
        }
        if ((i & 15) == 0) {
            i2 += 4;
            i >>>= 4;
        }
        if ((i & 3) == 0) {
            i2 += 2;
            i >>>= 2;
        }
        if ((i & 1) == 0) {
            i2++;
            if (((i >>> 1) & 1) == 0) {
                return 32;
            }
        }
        return i2;
    }

    public static BigInteger pow5mult(BigInteger bigInteger, int i) {
        return bigInteger.multiply(BigInteger.valueOf(5L).pow(i));
    }

    public static boolean roundOff(StringBuilder sb) {
        int length = sb.length();
        while (length != 0) {
            length--;
            char cCharAt = sb.charAt(length);
            if (cCharAt != '9') {
                sb.setCharAt(length, (char) (cCharAt + 1));
                sb.setLength(length + 1);
                return false;
            }
        }
        sb.setLength(0);
        return true;
    }

    public static double setWord0(double d, int i) {
        return Double.longBitsToDouble((Double.doubleToLongBits(d) & 4294967295L) | (i << 32));
    }

    private static void stripTrailingZeroes(StringBuilder sb) {
        int i;
        int length = sb.length();
        while (true) {
            i = length - 1;
            if (length <= 0 || sb.charAt(i) != '0') {
                break;
            } else {
                length = i;
            }
        }
        sb.setLength(i + 1);
    }

    private static void stuffBits(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public static int word0(double d) {
        return (int) (Double.doubleToLongBits(d) >> 32);
    }

    public static int word1(double d) {
        return (int) Double.doubleToLongBits(d);
    }
}
