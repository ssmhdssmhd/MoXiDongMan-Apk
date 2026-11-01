package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import java.lang.reflect.Array;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Celse;
import org.mozilla.javascript.NativeJavaObject;

/* loaded from: classes3.dex */
public class mo1 implements BlockCipher {

    /* renamed from: const, reason: not valid java name */
    private static final int f3976const = 14;

    /* renamed from: final, reason: not valid java name */
    private static final int f3977final = 64;

    /* renamed from: break, reason: not valid java name */
    private boolean f3985break;

    /* renamed from: case, reason: not valid java name */
    private long f3986case;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f3987catch;

    /* renamed from: class, reason: not valid java name */
    private byte[] f3988class;

    /* renamed from: do, reason: not valid java name */
    private int f3989do;

    /* renamed from: else, reason: not valid java name */
    private long f3990else;

    /* renamed from: for, reason: not valid java name */
    private int f3991for;

    /* renamed from: goto, reason: not valid java name */
    private long f3992goto;

    /* renamed from: if, reason: not valid java name */
    private long f3993if;

    /* renamed from: new, reason: not valid java name */
    private int f3994new;

    /* renamed from: this, reason: not valid java name */
    private long f3995this;

    /* renamed from: try, reason: not valid java name */
    private long[][] f3996try;

    /* renamed from: super, reason: not valid java name */
    private static final byte[] f3982super = {0, 0, t3.f6398private, 1, 50, 2, 26, -58, 75, -57, t3.f6381continue, 104, 51, -18, -33, 3, 100, 4, -32, 14, 52, -115, -127, -17, 76, 113, 8, -56, -8, 105, t3.f6403strictfp, -63, 125, -62, t3.f6412volatile, -75, -7, -71, 39, 106, 77, -28, -90, 114, -102, -55, 9, 120, 101, 47, -118, 5, 33, 15, ExifInterface.MARKER_APP1, 36, 18, -16, -126, 69, 53, -109, -38, -114, -106, -113, -37, -67, 54, -48, -50, -108, 19, 92, -46, -15, Cfinal.f15506do, 70, -125, 56, 102, -35, -3, 48, -65, 6, -117, 98, -77, 37, -30, -104, 34, -120, -111, 16, 126, 110, 72, -61, -93, -74, t3.f6394interface, 66, 58, 107, 40, 84, -6, -123, 61, -70, 43, 121, 10, t3.f6382default, -101, -97, 94, -54, 78, -44, -84, -27, -13, 115, -89, 87, -81, 88, -88, 80, -12, -22, -42, 116, 79, -82, -23, -43, -25, -26, -83, -24, 44, -41, 117, 122, -21, t3.f6385extends, 11, -11, 89, -53, 95, -80, -100, -87, 81, -96, Byte.MAX_VALUE, 12, -10, 111, t3.f6387finally, -60, 73, -20, -40, 67, t3.f6399protected, 45, -92, 118, 123, -73, -52, -69, 62, 90, -5, 96, -79, -122, 59, 82, -95, 108, -86, 85, 41, -99, -105, -78, -121, -112, 97, -66, -36, -4, Celse.f30385final, -107, -49, -51, 55, Utf8.REPLACEMENT_BYTE, 91, -47, 83, 57, -124, 60, 65, -94, 109, 71, t3.f6409throws, ExifInterface.START_CODE, -98, 93, 86, -14, -45, -85, 68, 17, -110, ExifInterface.MARKER_EOI, 35, 32, 46, -119, -76, 124, -72, 38, 119, -103, -29, -91, 103, 74, -19, -34, -59, 49, -2, t3.f6397package, 13, NativeJavaObject.CONVERSION_NONE, -116, Byte.MIN_VALUE, -64, -9, 112, 7};

    /* renamed from: throw, reason: not valid java name */
    private static final byte[] f3983throw = {0, 3, 5, 15, 17, 51, 85, -1, 26, 46, 114, -106, -95, -8, 19, 53, 95, ExifInterface.MARKER_APP1, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, t3.f6394interface, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, ExifInterface.MARKER_EOI, 112, -112, -85, -26, 49, 83, -11, 4, 12, t3.f6409throws, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, -32, 59, 77, -41, 98, -90, -15, 8, t3.f6397package, 40, 120, -120, -125, -98, -71, -48, 107, -67, -36, Byte.MAX_VALUE, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, 48, 80, -16, 11, t3.f6412volatile, 39, 105, -69, -42, 97, -93, -2, t3.f6398private, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, -96, -5, t3.f6385extends, 58, 78, -46, 109, -73, -62, 93, -25, 50, 86, -6, t3.f6382default, Utf8.REPLACEMENT_BYTE, 65, -61, 94, -30, 61, 71, -55, Cfinal.f15506do, -64, 91, -19, 44, 116, -100, -65, -38, 117, -97, -70, -43, 100, -84, -17, ExifInterface.START_CODE, 126, -126, -99, Celse.f30385final, -33, 122, -114, -119, Byte.MIN_VALUE, -101, -74, -63, 88, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, t3.f6399protected, 33, NativeJavaObject.CONVERSION_NONE, -91, -12, 7, 9, t3.f6381continue, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, 14, 18, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, t3.f6387finally, 57, 75, -35, 124, -124, -105, -94, -3, t3.f6403strictfp, 36, 108, -76, -57, 82, -10, 1, 3, 5, 15, 17, 51, 85, -1, 26, 46, 114, -106, -95, -8, 19, 53, 95, ExifInterface.MARKER_APP1, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, t3.f6394interface, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, ExifInterface.MARKER_EOI, 112, -112, -85, -26, 49, 83, -11, 4, 12, t3.f6409throws, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, -32, 59, 77, -41, 98, -90, -15, 8, t3.f6397package, 40, 120, -120, -125, -98, -71, -48, 107, -67, -36, Byte.MAX_VALUE, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, 48, 80, -16, 11, t3.f6412volatile, 39, 105, -69, -42, 97, -93, -2, t3.f6398private, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, -96, -5, t3.f6385extends, 58, 78, -46, 109, -73, -62, 93, -25, 50, 86, -6, t3.f6382default, Utf8.REPLACEMENT_BYTE, 65, -61, 94, -30, 61, 71, -55, Cfinal.f15506do, -64, 91, -19, 44, 116, -100, -65, -38, 117, -97, -70, -43, 100, -84, -17, ExifInterface.START_CODE, 126, -126, -99, Celse.f30385final, -33, 122, -114, -119, Byte.MIN_VALUE, -101, -74, -63, 88, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, t3.f6399protected, 33, NativeJavaObject.CONVERSION_NONE, -91, -12, 7, 9, t3.f6381continue, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, 14, 18, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, t3.f6387finally, 57, 75, -35, 124, -124, -105, -94, -3, t3.f6403strictfp, 36, 108, -76, -57, 82, -10, 1};

    /* renamed from: while, reason: not valid java name */
    private static final byte[] f3984while = {NativeJavaObject.CONVERSION_NONE, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, t3.f6382default, 4, -57, 35, -61, t3.f6397package, -106, 5, -102, 7, 18, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, 26, t3.f6381continue, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, Cfinal.f15506do, -113, -110, -99, 56, -11, Celse.f30385final, -74, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, t3.f6387finally, -60, -89, 126, 61, 100, 93, t3.f6398private, 115, 96, -127, 79, -36, 34, ExifInterface.START_CODE, -112, -120, 70, -18, -72, t3.f6409throws, -34, 94, 11, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, t3.f6403strictfp, -90, -76, -58, -24, -35, 116, t3.f6399protected, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, t3.f6412volatile, -98, ExifInterface.MARKER_APP1, -8, -104, 17, 105, ExifInterface.MARKER_EOI, -114, -108, -101, t3.f6394interface, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, t3.f6385extends};

    /* renamed from: import, reason: not valid java name */
    private static final byte[] f3978import = {82, 9, 106, -43, 48, 54, -91, 56, -65, Cfinal.f15506do, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, ExifInterface.MARKER_EOI, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, t3.f6385extends, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, t3.f6382default, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, Celse.f30385final, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, t3.f6394interface, -113, -54, Utf8.REPLACEMENT_BYTE, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, t3.f6403strictfp, 117, -33, 110, 71, -15, 26, 113, t3.f6412volatile, 41, -59, -119, 111, -73, 98, 14, -86, t3.f6397package, -66, t3.f6381continue, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, t3.f6399protected, -35, -88, 51, -120, 7, -57, 49, -79, 18, 16, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, t3.f6398private, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, ExifInterface.START_CODE, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, t3.f6387finally, 43, 4, 126, -70, 119, -42, 38, ExifInterface.MARKER_APP1, 105, t3.f6409throws, NativeJavaObject.CONVERSION_NONE, 85, 33, 12, 125};

    /* renamed from: native, reason: not valid java name */
    private static final int[] f3979native = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};

    /* renamed from: public, reason: not valid java name */
    public static byte[][] f3980public = {new byte[]{0, 8, 16, t3.f6397package}, new byte[]{0, 8, 16, t3.f6397package}, new byte[]{0, 8, 16, t3.f6397package}, new byte[]{0, 8, 16, 32}, new byte[]{0, 8, t3.f6397package, 32}};

    /* renamed from: return, reason: not valid java name */
    public static byte[][] f3981return = {new byte[]{0, t3.f6397package, 16, 8}, new byte[]{0, 32, t3.f6397package, 16}, new byte[]{0, 40, 32, t3.f6397package}, new byte[]{0, 48, 40, t3.f6397package}, new byte[]{0, 56, 40, 32}};

    public mo1() {
        this(128);
    }

    public mo1(int i) {
        if (i == 128) {
            this.f3989do = 32;
            this.f3993if = 4294967295L;
            this.f3987catch = f3980public[0];
            this.f3988class = f3981return[0];
        } else if (i == 160) {
            this.f3989do = 40;
            this.f3993if = 1099511627775L;
            this.f3987catch = f3980public[1];
            this.f3988class = f3981return[1];
        } else if (i == 192) {
            this.f3989do = 48;
            this.f3993if = 281474976710655L;
            this.f3987catch = f3980public[2];
            this.f3988class = f3981return[2];
        } else if (i == 224) {
            this.f3989do = 56;
            this.f3993if = 72057594037927935L;
            this.f3987catch = f3980public[3];
            this.f3988class = f3981return[3];
        } else {
            if (i != 256) {
                throw new IllegalArgumentException("unknown blocksize to Rijndael");
            }
            this.f3989do = 64;
            this.f3993if = -1L;
            this.f3987catch = f3980public[4];
            this.f3988class = f3981return[4];
        }
        this.f3994new = i;
    }

    /* renamed from: break, reason: not valid java name */
    private byte m4957break(int i) {
        if (i != 0) {
            return f3983throw[(f3982super[i] & 255) + 25];
        }
        return (byte) 0;
    }

    /* renamed from: case, reason: not valid java name */
    private long m4958case(long j, byte[] bArr) {
        long j2 = 0;
        for (int i = 0; i < this.f3989do; i += 8) {
            j2 |= (bArr[(int) ((j >> i) & 255)] & 255) << i;
        }
        return j2;
    }

    /* renamed from: catch, reason: not valid java name */
    private byte m4959catch(int i) {
        if (i != 0) {
            return f3983throw[(f3982super[i] & 255) + 1];
        }
        return (byte) 0;
    }

    /* renamed from: class, reason: not valid java name */
    private byte m4960class(int i) {
        if (i >= 0) {
            return f3983throw[i + 199];
        }
        return (byte) 0;
    }

    /* renamed from: const, reason: not valid java name */
    private byte m4961const(int i) {
        if (i >= 0) {
            return f3983throw[i + 104];
        }
        return (byte) 0;
    }

    /* renamed from: do, reason: not valid java name */
    private void m4962do() {
        long jM4970super = 0;
        long jM4970super2 = 0;
        long jM4970super3 = 0;
        long jM4970super4 = 0;
        for (int i = 0; i < this.f3989do; i += 8) {
            int i2 = (int) ((this.f3986case >> i) & 255);
            int i3 = (int) ((this.f3990else >> i) & 255);
            int i4 = (int) ((this.f3992goto >> i) & 255);
            long j = jM4970super4;
            int i5 = (int) ((this.f3995this >> i) & 255);
            int i6 = -1;
            int i7 = i2 != 0 ? f3982super[i2 & 255] & 255 : -1;
            int i8 = i3 != 0 ? f3982super[i3 & 255] & 255 : -1;
            int i9 = i4 != 0 ? f3982super[i4 & 255] & 255 : -1;
            if (i5 != 0) {
                i6 = f3982super[i5 & 255] & 255;
            }
            jM4970super |= ((((m4970super(i7) ^ m4961const(i8)) ^ m4964final(i9)) ^ m4960class(i6)) & 255) << i;
            jM4970super2 |= ((((m4970super(i8) ^ m4961const(i9)) ^ m4964final(i6)) ^ m4960class(i7)) & 255) << i;
            jM4970super3 |= ((((m4970super(i9) ^ m4961const(i6)) ^ m4964final(i7)) ^ m4960class(i8)) & 255) << i;
            jM4970super4 = j | (((((m4970super(i6) ^ m4961const(i7)) ^ m4964final(i8)) ^ m4960class(i9)) & 255) << i);
        }
        this.f3986case = jM4970super;
        this.f3990else = jM4970super2;
        this.f3992goto = jM4970super3;
        this.f3995this = jM4970super4;
    }

    /* renamed from: else, reason: not valid java name */
    private void m4963else(long[][] jArr) {
        m4967if(jArr[this.f3991for]);
        m4973try(f3978import);
        m4969new(this.f3988class);
        for (int i = this.f3991for - 1; i > 0; i--) {
            m4967if(jArr[i]);
            m4962do();
            m4973try(f3978import);
            m4969new(this.f3988class);
        }
        m4967if(jArr[0]);
    }

    /* renamed from: final, reason: not valid java name */
    private byte m4964final(int i) {
        if (i >= 0) {
            return f3983throw[i + 238];
        }
        return (byte) 0;
    }

    /* renamed from: for, reason: not valid java name */
    private void m4965for() {
        long jM4957break = 0;
        long jM4957break2 = 0;
        long jM4957break3 = 0;
        long jM4957break4 = 0;
        for (int i = 0; i < this.f3989do; i += 8) {
            int i2 = (int) ((this.f3986case >> i) & 255);
            int i3 = (int) ((this.f3990else >> i) & 255);
            int i4 = (int) ((this.f3992goto >> i) & 255);
            int i5 = (int) ((this.f3995this >> i) & 255);
            jM4957break |= ((((m4957break(i2) ^ m4959catch(i3)) ^ i4) ^ i5) & 255) << i;
            jM4957break2 |= ((((m4957break(i3) ^ m4959catch(i4)) ^ i5) ^ i2) & 255) << i;
            jM4957break3 |= ((((m4957break(i4) ^ m4959catch(i5)) ^ i2) ^ i3) & 255) << i;
            jM4957break4 |= ((((m4957break(i5) ^ m4959catch(i2)) ^ i3) ^ i4) & 255) << i;
        }
        this.f3986case = jM4957break;
        this.f3990else = jM4957break2;
        this.f3992goto = jM4957break3;
        this.f3995this = jM4957break4;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m4966goto(long[][] jArr) {
        m4967if(jArr[0]);
        for (int i = 1; i < this.f3991for; i++) {
            m4973try(f3984while);
            m4969new(this.f3987catch);
            m4965for();
            m4967if(jArr[i]);
        }
        m4973try(f3984while);
        m4969new(this.f3987catch);
        m4967if(jArr[this.f3991for]);
    }

    /* renamed from: if, reason: not valid java name */
    private void m4967if(long[] jArr) {
        this.f3986case ^= jArr[0];
        this.f3990else ^= jArr[1];
        this.f3992goto ^= jArr[2];
        this.f3995this ^= jArr[3];
    }

    /* renamed from: import, reason: not valid java name */
    private void m4968import(byte[] bArr, int i) {
        this.f3986case = bArr[i] & 255;
        this.f3990else = bArr[r0] & 255;
        this.f3992goto = bArr[r8] & 255;
        int i2 = i + 1 + 1 + 1 + 1;
        this.f3995this = bArr[r0] & 255;
        for (int i3 = 8; i3 != this.f3989do; i3 += 8) {
            this.f3986case |= (bArr[i2] & 255) << i3;
            this.f3990else |= (bArr[r3] & 255) << i3;
            this.f3992goto |= (bArr[r8] & 255) << i3;
            i2 = i2 + 1 + 1 + 1 + 1;
            this.f3995this |= (bArr[r3] & 255) << i3;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m4969new(byte[] bArr) {
        this.f3990else = m4974while(this.f3990else, bArr[1]);
        this.f3992goto = m4974while(this.f3992goto, bArr[2]);
        this.f3995this = m4974while(this.f3995this, bArr[3]);
    }

    /* renamed from: super, reason: not valid java name */
    private byte m4970super(int i) {
        if (i >= 0) {
            return f3983throw[i + 223];
        }
        return (byte) 0;
    }

    /* renamed from: this, reason: not valid java name */
    private long[][] m4971this(byte[] bArr) {
        int i;
        int i2;
        int i3 = 8;
        int length = bArr.length * 8;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) byte.class, 4, 64);
        long[][] jArr = (long[][]) Array.newInstance((Class<?>) long.class, 15, 4);
        int i4 = 4;
        if (length == 128) {
            i = 4;
        } else if (length == 160) {
            i = 5;
        } else if (length == 192) {
            i = 6;
        } else if (length == 224) {
            i = 7;
        } else {
            if (length != 256) {
                throw new IllegalArgumentException("Key length not 128/160/192/224/256 bits.");
            }
            i = 8;
        }
        this.f3991for = length >= this.f3994new ? i + 6 : (this.f3989do / 8) + 6;
        char c = 0;
        int i5 = 0;
        int i6 = 0;
        while (i5 < bArr.length) {
            bArr2[i5 % 4][i5 / 4] = bArr[i6];
            i5++;
            i6++;
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < i && i8 < (this.f3991for + 1) * (this.f3989do / 8)) {
            int i9 = 0;
            while (i9 < i4) {
                int i10 = this.f3989do;
                long[] jArr2 = jArr[i8 / (i10 / 8)];
                jArr2[i9] = ((bArr2[i9][i7] & 255) << ((i8 * 8) % i10)) | jArr2[i9];
                i9++;
                i4 = 4;
            }
            i7++;
            i8++;
            i4 = 4;
        }
        int i11 = 0;
        while (i8 < (this.f3991for + 1) * (this.f3989do / i3)) {
            int i12 = 0;
            while (i12 < 4) {
                byte[] bArr3 = bArr2[i12];
                i12++;
                bArr3[c] = (byte) (bArr3[c] ^ f3984while[bArr2[i12 % 4][i - 1] & 255]);
            }
            byte[] bArr4 = bArr2[c];
            int i13 = i11 + 1;
            bArr4[c] = (byte) (f3979native[i11] ^ bArr4[c]);
            int i14 = 1;
            if (i <= 6) {
                while (i14 < i) {
                    for (int i15 = 0; i15 < 4; i15++) {
                        byte[] bArr5 = bArr2[i15];
                        bArr5[i14] = (byte) (bArr5[i14] ^ bArr2[i15][i14 - 1]);
                    }
                    i14++;
                }
            } else {
                while (true) {
                    i2 = 4;
                    if (i14 >= 4) {
                        break;
                    }
                    int i16 = 0;
                    while (i16 < i2) {
                        byte[] bArr6 = bArr2[i16];
                        bArr6[i14] = (byte) (bArr6[i14] ^ bArr2[i16][i14 - 1]);
                        i16++;
                        i2 = 4;
                    }
                    i14++;
                }
                for (int i17 = 0; i17 < 4; i17++) {
                    byte[] bArr7 = bArr2[i17];
                    bArr7[4] = (byte) (bArr7[4] ^ f3984while[bArr2[i17][3] & 255]);
                }
                int i18 = 5;
                while (i18 < i) {
                    int i19 = 0;
                    while (i19 < i2) {
                        byte[] bArr8 = bArr2[i19];
                        bArr8[i18] = (byte) (bArr8[i18] ^ bArr2[i19][i18 - 1]);
                        i19++;
                        i2 = 4;
                    }
                    i18++;
                    i2 = 4;
                }
            }
            int i20 = 0;
            while (i20 < i && i8 < (this.f3991for + 1) * (this.f3989do / i3)) {
                for (int i21 = 0; i21 < 4; i21++) {
                    int i22 = this.f3989do;
                    long[] jArr3 = jArr[i8 / (i22 / 8)];
                    jArr3[i21] = ((bArr2[i21][i20] & 255) << ((i8 * 8) % i22)) | jArr3[i21];
                }
                i20++;
                i8++;
                i3 = 8;
            }
            i11 = i13;
            c = 0;
            i3 = 8;
        }
        return jArr;
    }

    /* renamed from: throw, reason: not valid java name */
    private void m4972throw(byte[] bArr, int i) {
        for (int i2 = 0; i2 != this.f3989do; i2 += 8) {
            int i3 = i + 1;
            bArr[i] = (byte) (this.f3986case >> i2);
            int i4 = i3 + 1;
            bArr[i3] = (byte) (this.f3990else >> i2);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (this.f3992goto >> i2);
            i = i5 + 1;
            bArr[i5] = (byte) (this.f3995this >> i2);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m4973try(byte[] bArr) {
        this.f3986case = m4958case(this.f3986case, bArr);
        this.f3990else = m4958case(this.f3990else, bArr);
        this.f3992goto = m4958case(this.f3992goto, bArr);
        this.f3995this = m4958case(this.f3995this, bArr);
    }

    /* renamed from: while, reason: not valid java name */
    private long m4974while(long j, int i) {
        return ((j << (this.f3989do - i)) | (j >>> i)) & this.f3993if;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Rijndael";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f3989do / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            this.f3996try = m4971this(((gr0) cipherParameters).m2770do());
            this.f3985break = z;
        } else {
            throw new IllegalArgumentException("invalid parameter passed to Rijndael init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.f3996try == null) {
            throw new IllegalStateException("Rijndael engine not initialised");
        }
        int i3 = this.f3989do;
        if ((i3 / 2) + i > bArr.length) {
            throw new tw("input buffer too short");
        }
        if ((i3 / 2) + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        boolean z = this.f3985break;
        m4968import(bArr, i);
        long[][] jArr = this.f3996try;
        if (z) {
            m4966goto(jArr);
        } else {
            m4963else(jArr);
        }
        m4972throw(bArr2, i2);
        return this.f3989do / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
