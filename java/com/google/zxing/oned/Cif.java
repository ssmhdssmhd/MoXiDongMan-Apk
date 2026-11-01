package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cnew;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: com.google.zxing.oned.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif extends Cwhile {

    /* renamed from: break, reason: not valid java name */
    private static final int f17640break = 96;

    /* renamed from: case, reason: not valid java name */
    private static final int f17641case = 100;

    /* renamed from: catch, reason: not valid java name */
    private static final int f17642catch = 101;

    /* renamed from: class, reason: not valid java name */
    private static final int f17643class = 100;

    /* renamed from: const, reason: not valid java name */
    private static final int f17644const = 103;

    /* renamed from: do, reason: not valid java name */
    public static final int[][] f17645do = {new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, new int[]{1, 2, 2, 2, 3, 1}, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};

    /* renamed from: else, reason: not valid java name */
    private static final int f17646else = 101;

    /* renamed from: final, reason: not valid java name */
    private static final int f17647final = 104;

    /* renamed from: for, reason: not valid java name */
    private static final float f17648for = 0.7f;

    /* renamed from: goto, reason: not valid java name */
    private static final int f17649goto = 102;

    /* renamed from: if, reason: not valid java name */
    private static final float f17650if = 0.25f;

    /* renamed from: new, reason: not valid java name */
    private static final int f17651new = 98;

    /* renamed from: super, reason: not valid java name */
    private static final int f17652super = 105;

    /* renamed from: this, reason: not valid java name */
    private static final int f17653this = 97;

    /* renamed from: throw, reason: not valid java name */
    private static final int f17654throw = 106;

    /* renamed from: try, reason: not valid java name */
    private static final int f17655try = 99;

    /* renamed from: case, reason: not valid java name */
    private static int m22017case(w8 w8Var, int[] iArr, int i) throws j41 {
        Cwhile.m22153new(w8Var, i, iArr);
        float f = 0.25f;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            int[][] iArr2 = f17645do;
            if (i3 >= iArr2.length) {
                break;
            }
            float fM22151for = Cwhile.m22151for(iArr, iArr2[i3], 0.7f);
            if (fM22151for < f) {
                i2 = i3;
                f = fM22151for;
            }
            i3++;
        }
        if (i2 >= 0) {
            return i2;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: else, reason: not valid java name */
    private static int[] m22018else(w8 w8Var) throws j41 {
        int iM9078class = w8Var.m9078class();
        int iM9076break = w8Var.m9076break(0);
        int[] iArr = new int[6];
        int i = iM9076break;
        boolean z = false;
        int i2 = 0;
        while (iM9076break < iM9078class) {
            if (w8Var.m9084goto(iM9076break) != z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                if (i2 == 5) {
                    float f = 0.25f;
                    int i3 = -1;
                    for (int i4 = 103; i4 <= 105; i4++) {
                        float fM22151for = Cwhile.m22151for(iArr, f17645do[i4], 0.7f);
                        if (fM22151for < f) {
                            i3 = i4;
                            f = fM22151for;
                        }
                    }
                    if (i3 >= 0 && w8Var.m9082final(Math.max(0, i - ((iM9076break - i) / 2)), i, false)) {
                        return new int[]{i, iM9076break, i3};
                    }
                    i += iArr[0] + iArr[1];
                    int i5 = i2 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i5);
                    iArr[i5] = 0;
                    iArr[i2] = 0;
                    i2--;
                } else {
                    i2++;
                }
                iArr[i2] = 1;
                z = !z;
            }
            iM9076break++;
        }
        throw j41.getNotFoundInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e1, code lost:
    
        if (r9 != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0127, code lost:
    
        if (r9 != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0129, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012e A[PHI: r17
      0x012e: PHI (r17v10 boolean) = (r17v6 boolean), (r17v17 boolean) binds: [B:67:0x0107, B:43:0x00c1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0138 A[PHI: r17
      0x0138: PHI (r17v8 boolean) = (r17v6 boolean), (r17v17 boolean) binds: [B:66:0x0105, B:42:0x00bf] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws ll, ld0, j41 {
        char c;
        boolean z;
        boolean z2 = false;
        boolean z3 = map != null && map.containsKey(Cnew.ASSUME_GS1);
        int[] iArrM22018else = m22018else(w8Var);
        int i2 = iArrM22018else[2];
        ArrayList arrayList = new ArrayList(20);
        arrayList.add(Byte.valueOf((byte) i2));
        switch (i2) {
            case 103:
                c = 'e';
                break;
            case 104:
                c = 'd';
                break;
            case 105:
                c = 'c';
                break;
            default:
                throw ld0.getFormatInstance();
        }
        StringBuilder sb = new StringBuilder(20);
        int i3 = 6;
        int[] iArr = new int[6];
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = true;
        boolean z7 = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        char c2 = c;
        int i7 = iArrM22018else[0];
        int i8 = iArrM22018else[1];
        char c3 = c2;
        while (!z5) {
            int iM22017case = m22017case(w8Var, iArr, i8);
            arrayList.add(Byte.valueOf((byte) iM22017case));
            if (iM22017case != 106) {
                z6 = true;
            }
            if (iM22017case != 106) {
                i5++;
                i2 += i5 * iM22017case;
            }
            int i9 = i8;
            for (int i10 = 0; i10 < i3; i10++) {
                i9 += iArr[i10];
            }
            switch (iM22017case) {
                case 103:
                case 104:
                case 105:
                    throw ld0.getFormatInstance();
                default:
                    switch (c3) {
                        case 'c':
                            if (iM22017case >= 100) {
                                if (iM22017case != 106) {
                                    z6 = false;
                                }
                                if (iM22017case != 106) {
                                    switch (iM22017case) {
                                        case 100:
                                            z = false;
                                            c3 = 'd';
                                            break;
                                        case 101:
                                            z = false;
                                            c3 = 'e';
                                            break;
                                        case 102:
                                            if (z3) {
                                                if (sb.length() == 0) {
                                                    sb.append("]C1");
                                                } else {
                                                    sb.append((char) 29);
                                                }
                                            }
                                        default:
                                            z = false;
                                            break;
                                    }
                                } else {
                                    z = false;
                                    z5 = true;
                                    break;
                                }
                            } else {
                                if (iM22017case < 10) {
                                    sb.append('0');
                                }
                                sb.append(iM22017case);
                            }
                            z = false;
                        case 'd':
                            if (iM22017case < 96) {
                                if (z4 == z2) {
                                    sb.append((char) (iM22017case + 32));
                                } else {
                                    sb.append((char) (iM22017case + 32 + 128));
                                }
                                z = false;
                                z4 = false;
                                break;
                            } else {
                                if (iM22017case != 106) {
                                    z6 = false;
                                }
                                if (iM22017case != 106) {
                                    switch (iM22017case) {
                                        case 98:
                                            z = true;
                                            c3 = 'e';
                                            break;
                                        case 99:
                                            z = false;
                                            c3 = 'c';
                                            break;
                                        case 100:
                                            if (z2 || !z4) {
                                                if (z2) {
                                                }
                                                z = false;
                                                z4 = true;
                                                break;
                                            }
                                            z2 = true;
                                            z = false;
                                            z4 = false;
                                            break;
                                        case 101:
                                            z = false;
                                            c3 = 'e';
                                            break;
                                        case 102:
                                            if (z3) {
                                                if (sb.length() == 0) {
                                                    sb.append("]C1");
                                                    break;
                                                } else {
                                                    sb.append((char) 29);
                                                    break;
                                                }
                                            }
                                            break;
                                    }
                                } else {
                                    z5 = true;
                                }
                                z = false;
                            }
                            break;
                        case 'e':
                            if (iM22017case < 64) {
                                if (z4 == z2) {
                                    sb.append((char) (iM22017case + 32));
                                } else {
                                    sb.append((char) (iM22017case + 32 + 128));
                                }
                            } else if (iM22017case >= 96) {
                                if (iM22017case != 106) {
                                    z6 = false;
                                }
                                if (iM22017case != 106) {
                                    switch (iM22017case) {
                                        case 98:
                                            z = true;
                                            c3 = 'd';
                                            break;
                                        case 100:
                                            z = false;
                                            c3 = 'd';
                                            break;
                                        case 101:
                                            if (z2 || !z4) {
                                                if (z2) {
                                                }
                                                z = false;
                                                z4 = true;
                                                break;
                                            }
                                            z2 = true;
                                            break;
                                        case 102:
                                            if (z3) {
                                                if (sb.length() == 0) {
                                                    sb.append("]C1");
                                                    break;
                                                } else {
                                                    sb.append((char) 29);
                                                    break;
                                                }
                                            }
                                            break;
                                    }
                                }
                                z = false;
                            } else if (z4 == z2) {
                                sb.append((char) (iM22017case - 64));
                            } else {
                                sb.append((char) (iM22017case + 64));
                            }
                            z = false;
                            z4 = false;
                            break;
                        default:
                            z = false;
                            break;
                    }
                    if (z7) {
                        c3 = c3 == 'e' ? 'd' : 'e';
                    }
                    z7 = z;
                    i3 = 6;
                    i7 = i8;
                    i8 = i9;
                    i6 = i4;
                    i4 = iM22017case;
                    break;
            }
            while (!z5) {
            }
        }
        int i11 = i8 - i7;
        int iM9077catch = w8Var.m9077catch(i8);
        if (!w8Var.m9082final(iM9077catch, Math.min(w8Var.m9078class(), ((iM9077catch - i7) / 2) + iM9077catch), false)) {
            throw j41.getNotFoundInstance();
        }
        int i12 = i6;
        if ((i2 - (i5 * i12)) % 103 != i12) {
            throw ll.getChecksumInstance();
        }
        int length = sb.length();
        if (length == 0) {
            throw j41.getNotFoundInstance();
        }
        if (length > 0 && z6) {
            if (c3 == 'c') {
                sb.delete(length - 2, length);
            } else {
                sb.delete(length - 1, length);
            }
        }
        float f = (iArrM22018else[1] + iArrM22018else[0]) / 2.0f;
        float f2 = i7 + (i11 / 2.0f);
        int size = arrayList.size();
        byte[] bArr = new byte[size];
        for (int i13 = 0; i13 < size; i13++) {
            bArr[i13] = ((Byte) arrayList.get(i13)).byteValue();
        }
        float f3 = i;
        return new wn1(sb.toString(), bArr, new yn1[]{new yn1(f, f3), new yn1(f2, f3)}, Cdo.CODE_128);
    }
}
