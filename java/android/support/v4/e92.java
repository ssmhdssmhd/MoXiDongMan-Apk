package android.support.v4;

import androidx.core.view.InputDeviceCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Celse;
import org.mozilla.javascript.NativeJavaObject;

/* loaded from: classes3.dex */
public final class e92 implements BlockCipher {
    private static final int a = 4;

    /* renamed from: abstract, reason: not valid java name */
    private static final int f1293abstract = 1;
    private static final int b = 8;

    /* renamed from: break, reason: not valid java name */
    private static final byte[][] f1294break = {new byte[]{-87, 103, -77, -24, 4, -3, -93, 118, -102, -110, Byte.MIN_VALUE, 120, -28, -35, -47, 56, 13, -58, 53, -104, t3.f6397package, -9, -20, 108, 67, 117, 55, 38, -6, 19, -108, 72, -14, -48, -117, 48, -124, 84, -33, 35, t3.f6398private, 91, 61, 89, -13, -82, -94, -126, NativeJavaObject.CONVERSION_NONE, 1, -125, 46, ExifInterface.MARKER_EOI, 81, -101, 124, -90, -21, -91, -66, t3.f6385extends, 12, -29, 97, -64, -116, 58, -11, 115, 44, 37, 11, -69, 78, -119, 107, 83, 106, -76, -15, ExifInterface.MARKER_APP1, -26, -67, 69, -30, -12, -74, 102, -52, -107, 3, 86, -44, t3.f6403strictfp, t3.f6394interface, -41, -5, -61, -114, -75, -23, -49, -65, -70, -22, 119, 57, -81, 51, -55, 98, 113, -127, 121, 9, -83, 36, -51, -7, -40, -27, -59, -71, 77, 68, 8, -122, -25, -95, t3.f6412volatile, -86, -19, 6, 112, -78, -46, 65, 123, -96, 17, 49, -62, 39, -112, 32, -10, 96, -1, -106, 92, -79, -85, -98, -100, 82, t3.f6381continue, 95, -109, 10, -17, -111, -123, 73, -18, 45, 79, -113, 59, 71, -121, 109, 70, -42, 62, 105, 100, ExifInterface.START_CODE, -50, -53, 47, -4, -105, 5, 122, -84, Byte.MAX_VALUE, -43, 26, 75, 14, -89, 90, 40, t3.f6409throws, Utf8.REPLACEMENT_BYTE, 41, -120, 60, 76, 2, -72, -38, -80, t3.f6387finally, 85, t3.f6399protected, -118, 125, 87, -57, -115, 116, -73, -60, -97, 114, 126, t3.f6382default, 34, 18, 88, 7, -103, 52, 110, 80, -34, 104, 101, Celse.f30385final, -37, -8, -56, -88, 43, Cfinal.f15506do, -36, -2, 50, -92, -54, 16, 33, -16, -45, 93, 15, 0, 111, -99, 54, 66, 74, 94, -63, -32}, new byte[]{117, -13, -58, -12, -37, 123, -5, -56, 74, -45, -26, 107, 69, 125, -24, 75, -42, 50, -40, -3, 55, 113, -15, ExifInterface.MARKER_APP1, 48, 15, -8, t3.f6381continue, -121, -6, 6, Utf8.REPLACEMENT_BYTE, 94, -70, -82, 91, -118, 0, Celse.f30385final, -99, 109, -63, -79, 14, Byte.MIN_VALUE, 93, -46, -43, -96, -124, 7, t3.f6409throws, -75, -112, 44, -93, -78, 115, 76, 84, -110, 116, 54, 81, 56, -80, -67, 90, -4, 96, 98, -106, 108, 66, -9, 16, 124, 40, 39, -116, 19, -107, -100, -57, 36, 70, 59, 112, -54, -29, -123, -53, 17, -48, -109, -72, -90, -125, 32, -1, -97, 119, -61, -52, 3, 111, 8, -65, Cfinal.f15506do, -25, 43, -30, 121, 12, -86, -126, 65, 58, -22, -71, -28, -102, -92, -105, 126, -38, 122, t3.f6387finally, 102, -108, -95, t3.f6412volatile, 61, -16, -34, -77, 11, 114, -89, t3.f6403strictfp, -17, -47, 83, 62, -113, 51, 38, 95, -20, 118, ExifInterface.START_CODE, 73, -127, -120, -18, 33, -60, 26, -21, ExifInterface.MARKER_EOI, -59, 57, -103, -51, -83, 49, -117, 1, t3.f6397package, 35, -35, t3.f6399protected, 78, 45, -7, 72, 79, -14, 101, -114, 120, 92, 88, t3.f6398private, -115, -27, -104, 87, 103, Byte.MAX_VALUE, 5, 100, -81, NativeJavaObject.CONVERSION_NONE, -74, -2, -11, -73, 60, -91, -50, -23, 104, 68, -32, 77, 67, 105, 41, 46, -84, t3.f6382default, 89, -88, 10, -98, 110, 71, -33, 52, 53, 106, -49, -36, 34, -55, -64, -101, -119, -44, -19, -85, 18, -94, 13, 82, -69, 2, 47, -87, -41, 97, t3.f6394interface, -76, 80, 4, -10, -62, t3.f6385extends, 37, -122, 86, 85, 9, -66, -111}};
    private static final int c = 40;

    /* renamed from: catch, reason: not valid java name */
    private static final int f1295catch = 1;

    /* renamed from: class, reason: not valid java name */
    private static final int f1296class = 0;

    /* renamed from: const, reason: not valid java name */
    private static final int f1297const = 0;

    /* renamed from: continue, reason: not valid java name */
    private static final int f1298continue = 361;
    private static final int d = 33686018;

    /* renamed from: default, reason: not valid java name */
    private static final int f1299default = 0;
    private static final int e = 16843009;

    /* renamed from: extends, reason: not valid java name */
    private static final int f1300extends = 0;
    private static final int f = 9;

    /* renamed from: final, reason: not valid java name */
    private static final int f1301final = 1;

    /* renamed from: finally, reason: not valid java name */
    private static final int f1302finally = 1;

    /* renamed from: implements, reason: not valid java name */
    private static final int f1303implements = 16;

    /* renamed from: import, reason: not valid java name */
    private static final int f1304import = 1;

    /* renamed from: instanceof, reason: not valid java name */
    private static final int f1305instanceof = 256;

    /* renamed from: interface, reason: not valid java name */
    private static final int f1306interface = 333;

    /* renamed from: native, reason: not valid java name */
    private static final int f1307native = 1;

    /* renamed from: package, reason: not valid java name */
    private static final int f1308package = 1;

    /* renamed from: private, reason: not valid java name */
    private static final int f1309private = 0;

    /* renamed from: protected, reason: not valid java name */
    private static final int f1310protected = 16;

    /* renamed from: public, reason: not valid java name */
    private static final int f1311public = 0;

    /* renamed from: return, reason: not valid java name */
    private static final int f1312return = 1;

    /* renamed from: static, reason: not valid java name */
    private static final int f1313static = 1;

    /* renamed from: strictfp, reason: not valid java name */
    private static final int f1314strictfp = 180;

    /* renamed from: super, reason: not valid java name */
    private static final int f1315super = 1;

    /* renamed from: switch, reason: not valid java name */
    private static final int f1316switch = 0;

    /* renamed from: synchronized, reason: not valid java name */
    private static final int f1317synchronized = 0;

    /* renamed from: throw, reason: not valid java name */
    private static final int f1318throw = 0;

    /* renamed from: throws, reason: not valid java name */
    private static final int f1319throws = 0;

    /* renamed from: transient, reason: not valid java name */
    private static final int f1320transient = 16;

    /* renamed from: volatile, reason: not valid java name */
    private static final int f1321volatile = 90;

    /* renamed from: while, reason: not valid java name */
    private static final int f1322while = 0;

    /* renamed from: case, reason: not valid java name */
    private int[] f1323case;

    /* renamed from: else, reason: not valid java name */
    private int[] f1325else;

    /* renamed from: do, reason: not valid java name */
    private boolean f1324do = false;

    /* renamed from: if, reason: not valid java name */
    private int[] f1328if = new int[256];

    /* renamed from: for, reason: not valid java name */
    private int[] f1326for = new int[256];

    /* renamed from: new, reason: not valid java name */
    private int[] f1329new = new int[256];

    /* renamed from: try, reason: not valid java name */
    private int[] f1331try = new int[256];

    /* renamed from: goto, reason: not valid java name */
    private int f1327goto = 0;

    /* renamed from: this, reason: not valid java name */
    private byte[] f1330this = null;

    public e92() {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        for (int i = 0; i < 256; i++) {
            byte[][] bArr = f1294break;
            int i2 = bArr[0][i] & 255;
            iArr[0] = i2;
            iArr2[0] = m1702goto(i2) & 255;
            iArr3[0] = m1707this(i2) & 255;
            int i3 = bArr[1][i] & 255;
            iArr[1] = i3;
            iArr2[1] = m1702goto(i3) & 255;
            iArr3[1] = m1707this(i3) & 255;
            this.f1328if[i] = iArr[1] | (iArr2[1] << 8) | (iArr3[1] << 16) | (iArr3[1] << 24);
            this.f1326for[i] = iArr3[0] | (iArr3[0] << 8) | (iArr2[0] << 16) | (iArr[0] << 24);
            this.f1329new[i] = (iArr3[1] << 24) | iArr2[1] | (iArr3[1] << 8) | (iArr[1] << 16);
            this.f1331try[i] = iArr2[0] | (iArr[0] << 8) | (iArr3[0] << 16) | (iArr2[0] << 24);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private int m1693break(int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            i2 = m1695catch(i2);
        }
        int iM1695catch = i ^ i2;
        for (int i4 = 0; i4 < 4; i4++) {
            iM1695catch = m1695catch(iM1695catch);
        }
        return iM1695catch;
    }

    /* renamed from: case, reason: not valid java name */
    private int m1694case(int i) {
        return ((i & 1) != 0 ? 180 : 0) ^ (i >> 1);
    }

    /* renamed from: catch, reason: not valid java name */
    private int m1695catch(int i) {
        int i2 = (i >>> 24) & 255;
        int i3 = ((i2 << 1) ^ ((i2 & 128) != 0 ? f1306interface : 0)) & 255;
        int i4 = ((i2 >>> 1) ^ ((i2 & 1) != 0 ? 166 : 0)) ^ i3;
        return ((((i << 8) ^ (i4 << 24)) ^ (i3 << 16)) ^ (i4 << 8)) ^ i2;
    }

    /* renamed from: class, reason: not valid java name */
    private int m1696class(int i) {
        return i & 255;
    }

    /* renamed from: const, reason: not valid java name */
    private int m1697const(int i) {
        return (i >>> 8) & 255;
    }

    /* renamed from: do, reason: not valid java name */
    private void m1698do(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
    }

    /* renamed from: else, reason: not valid java name */
    private int m1699else(int i) {
        return ((i >> 2) ^ ((i & 2) != 0 ? 180 : 0)) ^ ((i & 1) != 0 ? 90 : 0);
    }

    /* renamed from: final, reason: not valid java name */
    private int m1700final(int i) {
        return (i >>> 16) & 255;
    }

    /* renamed from: for, reason: not valid java name */
    private int m1701for(int i, int[] iArr) {
        int i2;
        int i3;
        int iM1696class = m1696class(i);
        int iM1697const = m1697const(i);
        int iM1700final = m1700final(i);
        int iM1706super = m1706super(i);
        int i4 = iArr[0];
        int i5 = iArr[1];
        int i6 = iArr[2];
        int i7 = iArr[3];
        int i8 = this.f1327goto & 3;
        if (i8 != 0) {
            if (i8 == 1) {
                int[] iArr2 = this.f1328if;
                byte[][] bArr = f1294break;
                i2 = (iArr2[(bArr[0][iM1696class] & 255) ^ m1696class(i4)] ^ this.f1326for[(bArr[0][iM1697const] & 255) ^ m1697const(i4)]) ^ this.f1329new[(bArr[1][iM1700final] & 255) ^ m1700final(i4)];
                i3 = this.f1331try[(bArr[1][iM1706super] & 255) ^ m1706super(i4)];
                return i2 ^ i3;
            }
            if (i8 != 2) {
                if (i8 != 3) {
                    return 0;
                }
            }
            int[] iArr3 = this.f1328if;
            byte[][] bArr2 = f1294break;
            i2 = (iArr3[(bArr2[0][(bArr2[0][iM1696class] & 255) ^ m1696class(i5)] & 255) ^ m1696class(i4)] ^ this.f1326for[(bArr2[0][(bArr2[1][iM1697const] & 255) ^ m1697const(i5)] & 255) ^ m1697const(i4)]) ^ this.f1329new[(bArr2[1][(bArr2[0][iM1700final] & 255) ^ m1700final(i5)] & 255) ^ m1700final(i4)];
            i3 = this.f1331try[(bArr2[1][(bArr2[1][iM1706super] & 255) ^ m1706super(i5)] & 255) ^ m1706super(i4)];
            return i2 ^ i3;
        }
        byte[][] bArr3 = f1294break;
        iM1696class = (bArr3[1][iM1696class] & 255) ^ m1696class(i7);
        iM1697const = (bArr3[0][iM1697const] & 255) ^ m1697const(i7);
        iM1700final = (bArr3[0][iM1700final] & 255) ^ m1700final(i7);
        iM1706super = (bArr3[1][iM1706super] & 255) ^ m1706super(i7);
        byte[][] bArr4 = f1294break;
        iM1696class = (bArr4[1][iM1696class] & 255) ^ m1696class(i6);
        iM1697const = (bArr4[1][iM1697const] & 255) ^ m1697const(i6);
        iM1700final = (bArr4[0][iM1700final] & 255) ^ m1700final(i6);
        iM1706super = (bArr4[0][iM1706super] & 255) ^ m1706super(i6);
        int[] iArr32 = this.f1328if;
        byte[][] bArr22 = f1294break;
        i2 = (iArr32[(bArr22[0][(bArr22[0][iM1696class] & 255) ^ m1696class(i5)] & 255) ^ m1696class(i4)] ^ this.f1326for[(bArr22[0][(bArr22[1][iM1697const] & 255) ^ m1697const(i5)] & 255) ^ m1697const(i4)]) ^ this.f1329new[(bArr22[1][(bArr22[0][iM1700final] & 255) ^ m1700final(i5)] & 255) ^ m1700final(i4)];
        i3 = this.f1331try[(bArr22[1][(bArr22[1][iM1706super] & 255) ^ m1706super(i5)] & 255) ^ m1706super(i4)];
        return i2 ^ i3;
    }

    /* renamed from: goto, reason: not valid java name */
    private int m1702goto(int i) {
        return i ^ m1699else(i);
    }

    /* renamed from: if, reason: not valid java name */
    private int m1703if(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: import, reason: not valid java name */
    private void m1704import(byte[] bArr) {
        int iM1696class;
        int iM1697const;
        int iM1700final;
        int iM1706super;
        int iM1700final2;
        int iM1697const2;
        int iM1696class2;
        int iM1706super2;
        int[] iArr = new int[4];
        int[] iArr2 = new int[4];
        int[] iArr3 = new int[4];
        this.f1323case = new int[40];
        int i = this.f1327goto;
        if (i < 1) {
            throw new IllegalArgumentException("Key size less than 64 bits");
        }
        if (i > 4) {
            throw new IllegalArgumentException("Key size larger than 256 bits");
        }
        for (int i2 = 0; i2 < this.f1327goto; i2++) {
            int i3 = i2 * 8;
            iArr[i2] = m1703if(bArr, i3);
            iArr2[i2] = m1703if(bArr, i3 + 4);
            iArr3[(this.f1327goto - 1) - i2] = m1693break(iArr[i2], iArr2[i2]);
        }
        for (int i4 = 0; i4 < 20; i4++) {
            int i5 = d * i4;
            int iM1701for = m1701for(i5, iArr);
            int iM1701for2 = m1701for(i5 + 16843009, iArr2);
            int i6 = (iM1701for2 >>> 24) | (iM1701for2 << 8);
            int i7 = iM1701for + i6;
            int[] iArr4 = this.f1323case;
            int i8 = i4 * 2;
            iArr4[i8] = i7;
            int i9 = i7 + i6;
            iArr4[i8 + 1] = (i9 << 9) | (i9 >>> 23);
        }
        int i10 = iArr3[0];
        int i11 = iArr3[1];
        int i12 = 2;
        int i13 = iArr3[2];
        int i14 = iArr3[3];
        this.f1325else = new int[1024];
        int i15 = 0;
        while (i15 < 256) {
            int i16 = this.f1327goto & 3;
            if (i16 != 0) {
                if (i16 == 1) {
                    int[] iArr5 = this.f1325else;
                    int i17 = i15 * 2;
                    int[] iArr6 = this.f1328if;
                    byte[][] bArr2 = f1294break;
                    iArr5[i17] = iArr6[(bArr2[0][i15] & 255) ^ m1696class(i10)];
                    this.f1325else[i17 + 1] = this.f1326for[(bArr2[0][i15] & 255) ^ m1697const(i10)];
                    this.f1325else[i17 + 512] = this.f1329new[(bArr2[1][i15] & 255) ^ m1700final(i10)];
                    this.f1325else[i17 + InputDeviceCompat.SOURCE_DPAD] = this.f1331try[(bArr2[1][i15] & 255) ^ m1706super(i10)];
                } else if (i16 == i12) {
                    iM1706super2 = i15;
                    iM1696class2 = iM1706super2;
                    iM1697const2 = iM1696class2;
                    iM1700final2 = iM1697const2;
                    int[] iArr7 = this.f1325else;
                    int i18 = i15 * 2;
                    int[] iArr8 = this.f1328if;
                    byte[][] bArr3 = f1294break;
                    iArr7[i18] = iArr8[(bArr3[0][(bArr3[0][iM1696class2] & 255) ^ m1696class(i11)] & 255) ^ m1696class(i10)];
                    this.f1325else[i18 + 1] = this.f1326for[(bArr3[0][(bArr3[1][iM1697const2] & 255) ^ m1697const(i11)] & 255) ^ m1697const(i10)];
                    this.f1325else[i18 + 512] = this.f1329new[(bArr3[1][(bArr3[0][iM1700final2] & 255) ^ m1700final(i11)] & 255) ^ m1700final(i10)];
                    this.f1325else[i18 + InputDeviceCompat.SOURCE_DPAD] = this.f1331try[(bArr3[1][(bArr3[1][iM1706super2] & 255) ^ m1706super(i11)] & 255) ^ m1706super(i10)];
                } else if (i16 == 3) {
                    iM1706super = i15;
                    iM1696class = iM1706super;
                    iM1697const = iM1696class;
                    iM1700final = iM1697const;
                }
                i15++;
                i12 = 2;
            } else {
                byte[][] bArr4 = f1294break;
                iM1696class = (bArr4[1][i15] & 255) ^ m1696class(i14);
                iM1697const = (bArr4[0][i15] & 255) ^ m1697const(i14);
                iM1700final = (bArr4[0][i15] & 255) ^ m1700final(i14);
                iM1706super = (bArr4[1][i15] & 255) ^ m1706super(i14);
            }
            byte[][] bArr5 = f1294break;
            iM1696class2 = (bArr5[1][iM1696class] & 255) ^ m1696class(i13);
            iM1697const2 = (bArr5[1][iM1697const] & 255) ^ m1697const(i13);
            iM1700final2 = (bArr5[0][iM1700final] & 255) ^ m1700final(i13);
            iM1706super2 = (bArr5[0][iM1706super] & 255) ^ m1706super(i13);
            int[] iArr72 = this.f1325else;
            int i182 = i15 * 2;
            int[] iArr82 = this.f1328if;
            byte[][] bArr32 = f1294break;
            iArr72[i182] = iArr82[(bArr32[0][(bArr32[0][iM1696class2] & 255) ^ m1696class(i11)] & 255) ^ m1696class(i10)];
            this.f1325else[i182 + 1] = this.f1326for[(bArr32[0][(bArr32[1][iM1697const2] & 255) ^ m1697const(i11)] & 255) ^ m1697const(i10)];
            this.f1325else[i182 + 512] = this.f1329new[(bArr32[1][(bArr32[0][iM1700final2] & 255) ^ m1700final(i11)] & 255) ^ m1700final(i10)];
            this.f1325else[i182 + InputDeviceCompat.SOURCE_DPAD] = this.f1331try[(bArr32[1][(bArr32[1][iM1706super2] & 255) ^ m1706super(i11)] & 255) ^ m1706super(i10)];
            i15++;
            i12 = 2;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private int m1705new(int i) {
        int[] iArr = this.f1325else;
        return iArr[(((i >>> 24) & 255) * 2) + InputDeviceCompat.SOURCE_DPAD] ^ ((iArr[((i & 255) * 2) + 0] ^ iArr[(((i >>> 8) & 255) * 2) + 1]) ^ iArr[(((i >>> 16) & 255) * 2) + 512]);
    }

    /* renamed from: super, reason: not valid java name */
    private int m1706super(int i) {
        return (i >>> 24) & 255;
    }

    /* renamed from: this, reason: not valid java name */
    private int m1707this(int i) {
        return m1699else(i) ^ (m1694case(i) ^ i);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m1708throw(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM1703if = m1703if(bArr, i) ^ this.f1323case[4];
        int iM1703if2 = m1703if(bArr, i + 4) ^ this.f1323case[5];
        int iM1703if3 = m1703if(bArr, i + 8) ^ this.f1323case[6];
        int iM1703if4 = m1703if(bArr, i + 12) ^ this.f1323case[7];
        int i3 = 39;
        for (int i4 = 0; i4 < 16; i4 += 2) {
            int iM1705new = m1705new(iM1703if);
            int iM1709try = m1709try(iM1703if2);
            int[] iArr = this.f1323case;
            int i5 = i3 - 1;
            int i6 = iM1703if4 ^ (((iM1709try * 2) + iM1705new) + iArr[i3]);
            int i7 = i5 - 1;
            iM1703if3 = ((iM1703if3 >>> 31) | (iM1703if3 << 1)) ^ ((iM1705new + iM1709try) + iArr[i5]);
            iM1703if4 = (i6 << 31) | (i6 >>> 1);
            int iM1705new2 = m1705new(iM1703if3);
            int iM1709try2 = m1709try(iM1703if4);
            int[] iArr2 = this.f1323case;
            int i8 = i7 - 1;
            int i9 = iM1703if2 ^ (((iM1709try2 * 2) + iM1705new2) + iArr2[i7]);
            i3 = i8 - 1;
            iM1703if = ((iM1703if >>> 31) | (iM1703if << 1)) ^ ((iM1705new2 + iM1709try2) + iArr2[i8]);
            iM1703if2 = (i9 << 31) | (i9 >>> 1);
        }
        m1698do(this.f1323case[0] ^ iM1703if3, bArr2, i2);
        m1698do(iM1703if4 ^ this.f1323case[1], bArr2, i2 + 4);
        m1698do(this.f1323case[2] ^ iM1703if, bArr2, i2 + 8);
        m1698do(this.f1323case[3] ^ iM1703if2, bArr2, i2 + 12);
    }

    /* renamed from: try, reason: not valid java name */
    private int m1709try(int i) {
        int[] iArr = this.f1325else;
        return iArr[(((i >>> 16) & 255) * 2) + InputDeviceCompat.SOURCE_DPAD] ^ ((iArr[(((i >>> 24) & 255) * 2) + 0] ^ iArr[((i & 255) * 2) + 1]) ^ iArr[(((i >>> 8) & 255) * 2) + 512]);
    }

    /* renamed from: while, reason: not valid java name */
    private void m1710while(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = 0;
        int iM1703if = m1703if(bArr, i) ^ this.f1323case[0];
        int iM1703if2 = m1703if(bArr, i + 4) ^ this.f1323case[1];
        int iM1703if3 = m1703if(bArr, i + 8) ^ this.f1323case[2];
        int iM1703if4 = m1703if(bArr, i + 12) ^ this.f1323case[3];
        int i4 = 8;
        while (i3 < 16) {
            int iM1705new = m1705new(iM1703if);
            int iM1709try = m1709try(iM1703if2);
            int[] iArr = this.f1323case;
            int i5 = i4 + 1;
            int i6 = iM1703if3 ^ ((iM1705new + iM1709try) + iArr[i4]);
            iM1703if3 = (i6 >>> 1) | (i6 << 31);
            int i7 = (iM1703if4 >>> 31) | (iM1703if4 << 1);
            int i8 = i5 + 1;
            iM1703if4 = i7 ^ ((iM1705new + (iM1709try * 2)) + iArr[i5]);
            int iM1705new2 = m1705new(iM1703if3);
            int iM1709try2 = m1709try(iM1703if4);
            int[] iArr2 = this.f1323case;
            int i9 = i8 + 1;
            int i10 = iM1703if ^ ((iM1705new2 + iM1709try2) + iArr2[i8]);
            iM1703if = (i10 >>> 1) | (i10 << 31);
            i3 += 2;
            iM1703if2 = ((iM1703if2 << 1) | (iM1703if2 >>> 31)) ^ ((iM1705new2 + (iM1709try2 * 2)) + iArr2[i9]);
            i4 = i9 + 1;
        }
        m1698do(this.f1323case[4] ^ iM1703if3, bArr2, i2);
        m1698do(iM1703if4 ^ this.f1323case[5], bArr2, i2 + 4);
        m1698do(this.f1323case[6] ^ iM1703if, bArr2, i2 + 8);
        m1698do(this.f1323case[7] ^ iM1703if2, bArr2, i2 + 12);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Twofish";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("invalid parameter passed to Twofish init - " + cipherParameters.getClass().getName());
        }
        this.f1324do = z;
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        this.f1330this = bArrM2770do;
        this.f1327goto = bArrM2770do.length / 8;
        m1704import(bArrM2770do);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.f1330this == null) {
            throw new IllegalStateException("Twofish not initialised");
        }
        if (i + 16 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 16 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        if (this.f1324do) {
            m1710while(bArr, i, bArr2, i2);
            return 16;
        }
        m1708throw(bArr, i, bArr2, i2);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.f1330this;
        if (bArr != null) {
            m1704import(bArr);
        }
    }
}
