package com.alibaba.fastjson.util;

import android.support.v4.hy1;
import android.support.v4.oa1;
import android.support.v4.w21;
import org.apache.commons.lang3.Ctry;

/* loaded from: classes.dex */
public final class RyuFloat {
    private static final int[][] POW5_SPLIT = {new int[]{oa1.f4492abstract, 0}, new int[]{671088640, 0}, new int[]{838860800, 0}, new int[]{1048576000, 0}, new int[]{655360000, 0}, new int[]{819200000, 0}, new int[]{1024000000, 0}, new int[]{640000000, 0}, new int[]{800000000, 0}, new int[]{1000000000, 0}, new int[]{625000000, 0}, new int[]{781250000, 0}, new int[]{976562500, 0}, new int[]{610351562, 1073741824}, new int[]{762939453, 268435456}, new int[]{953674316, 872415232}, new int[]{596046447, 1619001344}, new int[]{745058059, 1486880768}, new int[]{931322574, 1321730048}, new int[]{582076609, 289210368}, new int[]{727595761, 898383872}, new int[]{909494701, 1659850752}, new int[]{568434188, 1305842176}, new int[]{710542735, 1632302720}, new int[]{888178419, 1503507488}, new int[]{555111512, 671256724}, new int[]{693889390, 839070905}, new int[]{867361737, 2122580455}, new int[]{542101086, 521306416}, new int[]{677626357, 1725374844}, new int[]{847032947, 546105819}, new int[]{1058791184, 145761362}, new int[]{661744490, 91100851}, new int[]{827180612, 1187617888}, new int[]{1033975765, 1484522360}, new int[]{646234853, 1196261931}, new int[]{807793566, 2032198326}, new int[]{1009741958, 1466506084}, new int[]{631088724, 379695390}, new int[]{788860905, 474619238}, new int[]{986076131, 1130144959}, new int[]{616297582, 437905143}, new int[]{770371977, 1621123253}, new int[]{962964972, 415791331}, new int[]{601853107, 1333611405}, new int[]{752316384, 1130143345}, new int[]{940395480, 1412679181}};
    private static final int[][] POW5_INV_SPLIT = {new int[]{268435456, 1}, new int[]{214748364, 1717986919}, new int[]{171798691, 1803886265}, new int[]{137438953, 1013612282}, new int[]{219902325, 1192282922}, new int[]{175921860, 953826338}, new int[]{140737488, 763061070}, new int[]{225179981, 791400982}, new int[]{180143985, 203624056}, new int[]{144115188, 162899245}, new int[]{230584300, 1978625710}, new int[]{184467440, 1582900568}, new int[]{147573952, 1266320455}, new int[]{236118324, 308125809}, new int[]{188894659, 675997377}, new int[]{151115727, 970294631}, new int[]{241785163, 1981968139}, new int[]{193428131, 297084323}, new int[]{154742504, 1955654377}, new int[]{247588007, 1840556814}, new int[]{198070406, 613451992}, new int[]{158456325, 61264864}, new int[]{253530120, 98023782}, new int[]{202824096, 78419026}, new int[]{162259276, 1780722139}, new int[]{259614842, 1990161963}, new int[]{207691874, 733136111}, new int[]{166153499, 1016005619}, new int[]{265845599, 337118801}, new int[]{212676479, 699191770}, new int[]{170141183, 988850146}};

    public static String toString(float f) {
        char[] cArr = new char[15];
        return new String(cArr, 0, toString(f, cArr, 0));
    }

    public static int toString(float f, char[] cArr, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        int i10;
        int i11;
        if (Float.isNaN(f)) {
            int i12 = i + 1;
            cArr[i] = 'N';
            int i13 = i12 + 1;
            cArr[i12] = 'a';
            i11 = i13 + 1;
            cArr[i13] = 'N';
        } else {
            if (f == Float.POSITIVE_INFINITY) {
                int i14 = i + 1;
                cArr[i] = 'I';
                int i15 = i14 + 1;
                cArr[i14] = 'n';
                int i16 = i15 + 1;
                cArr[i15] = 'f';
                int i17 = i16 + 1;
                cArr[i16] = 'i';
                int i18 = i17 + 1;
                cArr[i17] = 'n';
                int i19 = i18 + 1;
                cArr[i18] = 'i';
                int i20 = i19 + 1;
                cArr[i19] = 't';
                cArr[i20] = 'y';
                return (i20 + 1) - i;
            }
            if (f == Float.NEGATIVE_INFINITY) {
                int i21 = i + 1;
                cArr[i] = hy1.f2561for;
                int i22 = i21 + 1;
                cArr[i21] = 'I';
                int i23 = i22 + 1;
                cArr[i22] = 'n';
                int i24 = i23 + 1;
                cArr[i23] = 'f';
                int i25 = i24 + 1;
                cArr[i24] = 'i';
                int i26 = i25 + 1;
                cArr[i25] = 'n';
                int i27 = i26 + 1;
                cArr[i26] = 'i';
                int i28 = i27 + 1;
                cArr[i27] = 't';
                i11 = i28 + 1;
                cArr[i28] = 'y';
            } else {
                int iFloatToIntBits = Float.floatToIntBits(f);
                if (iFloatToIntBits != 0) {
                    if (iFloatToIntBits == Integer.MIN_VALUE) {
                        int i29 = i + 1;
                        cArr[i] = hy1.f2561for;
                        int i30 = i29 + 1;
                        cArr[i29] = '0';
                        int i31 = i30 + 1;
                        cArr[i30] = Ctry.f28883do;
                        cArr[i31] = '0';
                        return (i31 + 1) - i;
                    }
                    int i32 = (iFloatToIntBits >> 23) & 255;
                    int i33 = 8388607 & iFloatToIntBits;
                    if (i32 == 0) {
                        i2 = w21.f2;
                    } else {
                        i2 = (i32 + w21.P1) - 23;
                        i33 |= 8388608;
                    }
                    boolean z5 = iFloatToIntBits < 0;
                    boolean z6 = (i33 & 1) == 0;
                    int i34 = i33 * 4;
                    int i35 = i34 + 2;
                    int i36 = i34 - ((((long) i33) != 8388608 || i32 <= 1) ? 2 : 1);
                    int i37 = i2 - 2;
                    if (i37 >= 0) {
                        i7 = (int) ((i37 * 3010299) / 10000000);
                        int i38 = i7 == 0 ? 1 : (int) ((((i7 * 23219280) + 10000000) - 1) / 10000000);
                        int[][] iArr = POW5_INV_SPLIT;
                        long j = iArr[i7][0];
                        z = z6;
                        long j2 = iArr[i7][1];
                        long j3 = i34;
                        int i39 = (((i38 + 59) - 1) + ((-i37) + i7)) - 31;
                        i5 = (int) (((j3 * j) + ((j3 * j2) >> 31)) >> i39);
                        long j4 = i35;
                        i3 = (int) (((j4 * j) + ((j4 * j2) >> 31)) >> i39);
                        long j5 = i36;
                        i6 = (int) (((j * j5) + ((j5 * j2) >> 31)) >> i39);
                        if (i7 == 0 || (i3 - 1) / 10 > i6 / 10) {
                            i4 = 0;
                        } else {
                            i4 = (int) ((((iArr[r7][0] * j3) + ((iArr[r7][1] * j3) >> 31)) >> (((r1 - 1) + (((i7 - 1 == 0 ? 1 : (int) ((((r7 * 23219280) + 10000000) - 1) / 10000000)) + 59) - 1)) - 31)) % 10);
                        }
                        int i40 = i35;
                        int i41 = 0;
                        while (i40 > 0 && i40 % 5 == 0) {
                            i40 /= 5;
                            i41++;
                        }
                        int i42 = 0;
                        while (i34 > 0 && i34 % 5 == 0) {
                            i34 /= 5;
                            i42++;
                        }
                        int i43 = 0;
                        while (i36 > 0 && i36 % 5 == 0) {
                            i36 /= 5;
                            i43++;
                        }
                        z2 = i41 >= i7;
                        z4 = i42 >= i7;
                        z3 = i43 >= i7;
                    } else {
                        z = z6;
                        int i44 = -i37;
                        int i45 = (int) ((i44 * 6989700) / 10000000);
                        int i46 = i44 - i45;
                        int[][] iArr2 = POW5_SPLIT;
                        long j6 = iArr2[i46][0];
                        long j7 = iArr2[i46][1];
                        int i47 = (i45 - ((i46 == 0 ? 1 : (int) ((((i46 * 23219280) + 10000000) - 1) / 10000000)) - 61)) - 31;
                        long j8 = i34;
                        int i48 = (int) (((j8 * j6) + ((j8 * j7) >> 31)) >> i47);
                        long j9 = i35;
                        i3 = (int) (((j9 * j6) + ((j9 * j7) >> 31)) >> i47);
                        long j10 = i36;
                        int i49 = (int) (((j6 * j10) + ((j10 * j7) >> 31)) >> i47);
                        if (i45 == 0 || (i3 - 1) / 10 > i49 / 10) {
                            i4 = 0;
                        } else {
                            i4 = (int) ((((iArr2[r1][0] * j8) + ((iArr2[r1][1] * j8) >> 31)) >> (((i45 - 1) - ((i46 + 1 == 0 ? 1 : (int) ((((r1 * 23219280) + 10000000) - 1) / 10000000)) - 61)) - 31)) % 10);
                        }
                        int i50 = i45 + i37;
                        boolean z7 = 1 >= i45;
                        boolean z8 = i45 < 23 && (((1 << (i45 + (-1))) - 1) & i34) == 0;
                        boolean z9 = (i36 % 2 == 1 ? 0 : 1) >= i45;
                        z2 = z7;
                        i5 = i48;
                        z3 = z9;
                        i6 = i49;
                        i7 = i50;
                        z4 = z8;
                    }
                    int i51 = 1000000000;
                    int i52 = 10;
                    while (i52 > 0 && i3 < i51) {
                        i51 /= 10;
                        i52--;
                    }
                    int i53 = (i7 + i52) - 1;
                    boolean z10 = i53 < -3 || i53 >= 7;
                    if (z2 && !z) {
                        i3--;
                    }
                    int i54 = 0;
                    while (true) {
                        int i55 = i3 / 10;
                        int i56 = i6 / 10;
                        if (i55 <= i56 || (i3 < 100 && z10)) {
                            break;
                        }
                        z3 &= i6 % 10 == 0;
                        i4 = i5 % 10;
                        i5 /= 10;
                        i54++;
                        i3 = i55;
                        i6 = i56;
                    }
                    if (z3 && z) {
                        while (i6 % 10 == 0 && (i3 >= 100 || !z10)) {
                            i3 /= 10;
                            i4 = i5 % 10;
                            i5 /= 10;
                            i6 /= 10;
                            i54++;
                        }
                    }
                    if (z4 && i4 == 5 && i5 % 2 == 0) {
                        i4 = 4;
                    }
                    int i57 = i5 + (((i5 != i6 || (z3 && z)) && i4 < 5) ? 0 : 1);
                    int i58 = i52 - i54;
                    if (z5) {
                        i8 = i + 1;
                        cArr[i] = hy1.f2561for;
                    } else {
                        i8 = i;
                    }
                    if (z10) {
                        for (int i59 = 0; i59 < i58 - 1; i59++) {
                            int i60 = i57 % 10;
                            i57 /= 10;
                            cArr[(i8 + i58) - i59] = (char) (i60 + 48);
                        }
                        cArr[i8] = (char) ((i57 % 10) + 48);
                        cArr[i8 + 1] = Ctry.f28883do;
                        int i61 = i8 + i58 + 1;
                        if (i58 == 1) {
                            cArr[i61] = '0';
                            i61++;
                        }
                        int i62 = i61 + 1;
                        cArr[i61] = 'E';
                        if (i53 < 0) {
                            cArr[i62] = hy1.f2561for;
                            i53 = -i53;
                            i62++;
                        }
                        if (i53 >= 10) {
                            i10 = 48;
                            cArr[i62] = (char) ((i53 / 10) + 48);
                            i62++;
                        } else {
                            i10 = 48;
                        }
                        i9 = i62 + 1;
                        cArr[i62] = (char) ((i53 % 10) + i10);
                    } else {
                        int i63 = 48;
                        if (i53 < 0) {
                            int i64 = i8 + 1;
                            cArr[i8] = '0';
                            int i65 = i64 + 1;
                            cArr[i64] = Ctry.f28883do;
                            int i66 = -1;
                            while (i66 > i53) {
                                cArr[i65] = '0';
                                i66--;
                                i65++;
                            }
                            int i67 = i65;
                            int i68 = 0;
                            while (i68 < i58) {
                                cArr[((i65 + i58) - i68) - 1] = (char) ((i57 % 10) + i63);
                                i57 /= 10;
                                i67++;
                                i68++;
                                i63 = 48;
                            }
                            i9 = i67;
                        } else {
                            int i69 = i53 + 1;
                            if (i69 >= i58) {
                                for (int i70 = 0; i70 < i58; i70++) {
                                    cArr[((i8 + i58) - i70) - 1] = (char) ((i57 % 10) + 48);
                                    i57 /= 10;
                                }
                                int i71 = i8 + i58;
                                while (i58 < i69) {
                                    cArr[i71] = '0';
                                    i58++;
                                    i71++;
                                }
                                int i72 = i71 + 1;
                                cArr[i71] = Ctry.f28883do;
                                i9 = i72 + 1;
                                cArr[i72] = '0';
                            } else {
                                int i73 = i8 + 1;
                                for (int i74 = 0; i74 < i58; i74++) {
                                    if ((i58 - i74) - 1 == i53) {
                                        cArr[((i73 + i58) - i74) - 1] = Ctry.f28883do;
                                        i73--;
                                    }
                                    cArr[((i73 + i58) - i74) - 1] = (char) ((i57 % 10) + 48);
                                    i57 /= 10;
                                }
                                i9 = i8 + i58 + 1;
                            }
                        }
                    }
                    return i9 - i;
                }
                int i75 = i + 1;
                cArr[i] = '0';
                int i76 = i75 + 1;
                cArr[i75] = Ctry.f28883do;
                i11 = i76 + 1;
                cArr[i76] = '0';
            }
        }
        return i11 - i;
    }
}
