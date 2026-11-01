package org.bouncycastle.crypto.engines;

import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.q3;
import android.support.v4.t3;
import android.support.v4.tw;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Celse;
import org.mozilla.javascript.NativeJavaObject;

/* renamed from: org.bouncycastle.crypto.engines.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements BlockCipher {

    /* renamed from: break, reason: not valid java name */
    private static final int f29606break = 18;

    /* renamed from: goto, reason: not valid java name */
    private static final int f29611goto = 10;

    /* renamed from: this, reason: not valid java name */
    private static final int f29614this = 14;

    /* renamed from: case, reason: not valid java name */
    private int f29617case;

    /* renamed from: do, reason: not valid java name */
    private long[] f29618do;

    /* renamed from: else, reason: not valid java name */
    private boolean f29619else;

    /* renamed from: for, reason: not valid java name */
    private long[][] f29620for;

    /* renamed from: if, reason: not valid java name */
    private long[] f29621if;

    /* renamed from: new, reason: not valid java name */
    private int f29622new;

    /* renamed from: try, reason: not valid java name */
    private int f29623try;

    /* renamed from: catch, reason: not valid java name */
    private static final byte[] f29607catch = {-88, 67, 95, 6, 107, 117, 108, 89, 113, -33, -121, -107, t3.f6387finally, -16, -40, 9, 109, -13, t3.f6412volatile, -53, -55, 77, 44, -81, 121, -32, -105, -3, 111, 75, 69, 57, 62, -35, -93, 79, -76, -74, -102, 14, t3.f6399protected, -65, t3.f6382default, ExifInterface.MARKER_APP1, 73, -46, -109, -58, -110, 114, -98, 97, -47, NativeJavaObject.CONVERSION_NONE, -6, -18, -12, t3.f6398private, -43, -83, 88, -92, -69, -95, -36, -14, -125, 55, 66, -28, 122, 50, -100, -52, -85, 74, -113, 110, 4, 39, 46, -25, -30, 90, -106, t3.f6385extends, 35, 43, -62, 101, 102, 15, Celse.f30385final, -87, 71, 65, 52, 72, -4, -73, 106, -120, -91, 83, -122, -7, 91, -37, 56, 123, -61, t3.f6394interface, 34, 51, 36, 40, 54, -57, -78, 59, -114, 119, -70, -11, t3.f6409throws, -97, 8, 85, -101, 76, -2, 96, 92, -38, t3.f6397package, 70, -51, 125, 33, -80, Utf8.REPLACEMENT_BYTE, t3.f6381continue, -119, -1, -21, -124, 105, 58, -99, -41, -45, 112, 103, Cfinal.f15506do, -75, -34, 93, 48, -111, -79, 120, 17, 1, -27, 0, 104, -104, -96, -59, 2, -90, 116, 45, 11, -94, 118, -77, -66, -50, -67, -82, -23, -118, 49, t3.f6403strictfp, -20, -15, -103, -108, -86, -10, 38, 47, -17, -24, -116, 53, 3, -44, Byte.MAX_VALUE, -5, 5, -63, 94, -112, 32, 61, -126, -9, -22, 10, 13, 126, -8, 80, 26, -60, 7, 87, -72, 60, 98, -29, -56, -84, 82, 100, 16, -48, ExifInterface.MARKER_EOI, 19, 12, 18, 41, 81, -71, -49, -42, 115, -115, -127, 84, -64, -19, 78, 68, -89, ExifInterface.START_CODE, -123, 37, -26, -54, 124, -117, 86, Byte.MIN_VALUE};

    /* renamed from: class, reason: not valid java name */
    private static final byte[] f29608class = {-50, -69, -21, -110, -22, -53, 19, -63, -23, 58, -42, -78, -46, -112, t3.f6387finally, -8, 66, t3.f6382default, 86, -76, 101, t3.f6403strictfp, -120, 67, -59, 92, 54, -70, -11, 87, 103, -115, 49, -10, 100, 88, -98, -12, 34, -86, 117, 15, 2, -79, -33, 109, 115, 77, 124, 38, 46, -9, 8, 93, 68, 62, -97, t3.f6409throws, -56, -82, 84, 16, -40, Celse.f30385final, 26, 107, 105, -13, -67, 51, -85, -6, -47, -101, 104, 78, t3.f6385extends, -107, -111, -18, 76, NativeJavaObject.CONVERSION_NONE, -114, 91, -52, 60, t3.f6398private, -95, -127, 73, 123, ExifInterface.MARKER_EOI, 111, 55, 96, -54, -25, 43, 72, -3, -106, 69, -4, 65, 18, 13, 121, -27, -119, -116, -29, 32, 48, -36, -73, 108, 74, -75, Utf8.REPLACEMENT_BYTE, -105, -44, 98, 45, 6, -92, -91, -125, 95, ExifInterface.START_CODE, -38, -55, 0, 126, -94, 85, -65, 17, -43, -100, -49, 14, 10, 61, 81, 125, -109, t3.f6381continue, -2, -60, 71, 9, -122, 11, -113, -99, 106, 7, -71, -80, -104, t3.f6397package, 50, 113, 75, -17, 59, 112, -96, -28, Cfinal.f15506do, -1, -61, -87, -26, 120, -7, -117, 70, Byte.MIN_VALUE, t3.f6394interface, 56, ExifInterface.MARKER_APP1, -72, -88, -32, 12, 35, 118, t3.f6412volatile, 37, 36, 5, -15, 110, -108, 40, -102, -124, -24, -93, 79, 119, -45, -123, -30, 82, -14, -126, 80, 122, 47, 116, 83, -77, 97, -81, 57, 53, -34, -51, t3.f6399protected, -103, -84, -83, 114, 44, -35, -48, -121, -66, 94, -90, -20, 4, -58, 3, 52, -5, -37, 89, -74, -62, 1, -16, 90, -19, -89, 102, 33, Byte.MAX_VALUE, -118, 39, -57, -64, 41, -41};

    /* renamed from: const, reason: not valid java name */
    private static final byte[] f29609const = {-109, ExifInterface.MARKER_EOI, -102, -75, -104, 34, 69, -4, -70, 106, -33, 2, -97, -36, 81, 89, 74, t3.f6387finally, 43, -62, -108, -12, -69, -93, 98, -28, 113, -44, -51, 112, t3.f6385extends, ExifInterface.MARKER_APP1, 73, 60, -64, -40, 92, -101, -83, -123, 83, -95, 122, -56, 45, -32, -47, 114, -90, 44, -60, -29, 118, 120, -73, -76, 9, 59, 14, 65, 76, -34, -78, -112, 37, -91, -41, 3, 17, 0, -61, 46, -110, -17, 78, 18, -99, 125, -53, 53, 16, -43, 79, -98, 77, -87, 85, -58, -48, 123, t3.f6397package, -105, -45, 54, -26, 72, 86, -127, -113, 119, -52, -100, -71, -30, -84, -72, 47, t3.f6382default, -92, 124, -38, 56, t3.f6394interface, 11, 5, -42, t3.f6409throws, 110, 108, 126, 102, -3, -79, -27, 96, -81, 94, 51, -121, -55, -16, 93, 109, Utf8.REPLACEMENT_BYTE, -120, -115, -57, -9, t3.f6412volatile, -23, -20, -19, Byte.MIN_VALUE, 41, 39, -49, -103, -88, 80, 15, 55, 36, 40, 48, -107, -46, 62, 91, Cfinal.f15506do, -125, -77, 105, 87, t3.f6399protected, 7, t3.f6403strictfp, -118, Celse.f30385final, 32, -21, -50, -114, -85, -18, 49, -94, 115, -7, -54, 58, 26, -5, 13, -63, -2, -6, -14, 111, -67, -106, -35, 67, 82, -74, 8, -13, -82, -66, t3.f6398private, -119, 50, 38, -80, -22, 75, 100, -124, -126, 107, -11, 121, -65, 1, 95, 117, NativeJavaObject.CONVERSION_NONE, t3.f6381continue, 35, 61, 104, ExifInterface.START_CODE, 101, -24, -111, -10, -1, 19, 88, -15, 71, 10, Byte.MAX_VALUE, -59, -89, -25, 97, 90, 6, 70, 68, 66, 4, -96, -37, 57, -122, 84, -86, -116, 52, 33, -117, -8, 12, 116, 103};

    /* renamed from: final, reason: not valid java name */
    private static final byte[] f29610final = {104, -115, -54, 77, 115, 75, 78, ExifInterface.START_CODE, -44, 82, 38, -77, 84, t3.f6394interface, t3.f6398private, t3.f6399protected, 34, 3, 70, 61, 45, 74, 83, -125, 19, -118, -73, -43, 37, 121, -11, -67, 88, 47, 13, 2, -19, 81, -98, 17, -14, 62, 85, 94, -47, t3.f6385extends, 60, 102, 112, 93, -13, 69, Cfinal.f15506do, -52, -24, -108, 86, 8, -50, 26, 58, -46, ExifInterface.MARKER_APP1, -33, -75, 56, 110, 14, -27, -12, -7, -122, -23, 79, -42, -123, 35, -49, 50, -103, 49, t3.f6409throws, -82, -18, -56, 72, -45, 48, -95, -110, 65, -79, t3.f6397package, -60, 44, 113, 114, 68, t3.f6382default, -3, 55, -66, 95, -86, -101, -120, -40, -85, -119, -100, -6, 96, -22, Celse.f30385final, 98, 12, 36, -90, -88, -20, 103, 32, -37, 124, 40, -35, -84, 91, 52, 126, 16, -15, 123, -113, NativeJavaObject.CONVERSION_NONE, -96, 5, -102, 67, 119, 33, -65, 39, 9, -61, -97, -74, -41, 41, -62, -21, -64, -92, -117, -116, t3.f6412volatile, -5, -1, -63, -78, -105, 46, -8, 101, -10, 117, 7, 4, 73, 51, -28, ExifInterface.MARKER_EOI, -71, -48, 66, -57, 108, -112, 0, -114, 111, 80, 1, -59, -38, 71, Utf8.REPLACEMENT_BYTE, -51, 105, -94, -30, 122, -89, -58, -109, 15, 10, 6, -26, 43, -106, -93, t3.f6403strictfp, -81, 106, 18, -124, 57, -25, -80, -126, -9, -2, -99, -121, 92, -127, 53, -34, -76, -91, -4, Byte.MIN_VALUE, -17, -53, -69, 107, 118, -70, 90, 125, 120, 11, -107, -29, -83, 116, -104, 59, 54, 100, 109, -36, -16, 89, -87, 76, t3.f6387finally, Byte.MAX_VALUE, -111, -72, -55, 87, t3.f6381continue, -32, 97};

    /* renamed from: super, reason: not valid java name */
    private static final byte[] f29613super = {-92, -94, -87, -59, 78, -55, 3, ExifInterface.MARKER_EOI, 126, 15, -46, -83, -25, -45, 39, 91, -29, -95, -24, -26, 124, ExifInterface.START_CODE, 85, 12, -122, 57, -41, -115, -72, 18, 111, 40, -51, -118, 112, 86, 114, -7, -65, 79, 115, -23, -9, 87, t3.f6385extends, -84, 80, -64, -99, -73, 71, 113, 96, -60, 116, 67, 108, t3.f6399protected, -109, 119, -36, -50, 32, -116, -103, 95, 68, 1, -11, t3.f6394interface, -121, 94, 97, 44, 75, t3.f6412volatile, -127, t3.f6382default, -12, 35, -42, -22, ExifInterface.MARKER_APP1, 103, -15, Byte.MAX_VALUE, -2, -38, 60, 7, 83, 106, -124, -100, -53, 2, -125, 51, -35, 53, -30, 89, 90, -104, -91, -110, 100, 4, 6, 16, 77, t3.f6403strictfp, -105, 8, 49, -18, -85, 5, -81, 121, -96, t3.f6397package, 70, 109, -4, -119, -44, -57, -1, -16, -49, 66, -111, -8, 104, 10, 101, -114, -74, -3, -61, -17, 120, 76, -52, -98, 48, 46, Celse.f30385final, 11, 84, 26, -90, -69, 38, Byte.MIN_VALUE, 72, -108, 50, 125, -89, Utf8.REPLACEMENT_BYTE, -82, 34, 61, 102, -86, -10, 0, 93, -67, 74, -32, 59, -76, t3.f6387finally, -117, -97, 118, -80, 36, -102, 37, NativeJavaObject.CONVERSION_NONE, -37, -21, 122, 62, 92, -77, -79, 41, -14, -54, 88, 110, -40, -88, 47, 117, -33, t3.f6409throws, -5, 19, 73, -120, -78, -20, -28, 52, 45, -106, -58, 58, -19, -107, 14, -27, -123, 107, Cfinal.f15506do, 33, -101, 9, t3.f6398private, 43, 82, -34, 69, -93, -6, 81, -62, -75, -47, -112, -71, -13, 55, -63, 13, -70, 65, 17, 56, 123, -66, -48, -43, 105, 54, -56, 98, t3.f6381continue, -126, -113};

    /* renamed from: throw, reason: not valid java name */
    private static final byte[] f29615throw = {-125, -14, ExifInterface.START_CODE, -21, -23, -65, 123, -100, 52, -106, -115, -104, -71, 105, -116, 41, 61, -120, 104, 6, 57, 17, 76, 14, -96, 86, Cfinal.f15506do, -110, t3.f6382default, Celse.f30385final, -77, -36, 111, -8, 38, -70, -66, -67, 49, -5, -61, -2, Byte.MIN_VALUE, 97, ExifInterface.MARKER_APP1, 122, 50, -46, 112, 32, -95, 69, -20, ExifInterface.MARKER_EOI, 26, 93, -76, -40, 9, -91, 85, -114, 55, 118, -87, 103, 16, t3.f6387finally, 54, 101, -79, -107, 98, 89, 116, -93, 80, 47, 75, -56, -48, -113, -51, -44, 60, -122, 18, t3.f6412volatile, 35, -17, -12, 83, t3.f6398private, 53, -26, Byte.MAX_VALUE, 94, -42, 121, 81, 34, t3.f6409throws, -9, t3.f6394interface, 74, 66, -101, 65, 115, 45, -63, 92, -90, -94, -32, 46, -45, 40, -69, -55, -82, 106, -47, 90, 48, -112, -124, -7, -78, 88, -49, 126, -59, -53, -105, -28, t3.f6385extends, 108, -6, -80, 109, t3.f6399protected, 82, -103, 13, 78, 3, -111, -62, 77, 100, 119, -97, -35, -60, 73, -118, -102, 36, 56, -89, 87, -123, -57, 124, 125, -25, -10, -73, -84, 39, 70, -34, -33, 59, -41, -98, 43, 11, -43, 19, 117, -16, 114, -74, -99, t3.f6381continue, 1, Utf8.REPLACEMENT_BYTE, 68, -27, -121, -3, 7, -15, -85, -108, t3.f6397package, -22, -4, 58, -126, 95, 5, 84, -37, 0, -117, -29, 72, 12, -54, 120, -119, 10, -1, 62, 91, -127, -18, 113, -30, -38, 44, -72, -75, -52, 110, -88, 107, -83, 96, -58, 8, 4, 2, -24, -11, 79, -92, -13, -64, -50, 67, 37, t3.f6403strictfp, 33, 51, 15, -81, 71, -19, 102, NativeJavaObject.CONVERSION_NONE, -109, -86};

    /* renamed from: while, reason: not valid java name */
    private static final byte[] f29616while = {69, -44, 11, 67, -15, 114, -19, -92, -62, 56, -26, 113, -3, -74, 58, -107, 80, 68, 75, -30, 116, 107, t3.f6394interface, 17, 90, -58, -76, -40, -91, -118, 112, -93, -88, -6, 5, ExifInterface.MARKER_EOI, -105, Cfinal.f15506do, -55, -112, -104, -113, -36, 18, 49, 44, 71, 106, -103, -82, -56, Byte.MAX_VALUE, -7, 79, 93, -106, 111, -12, -77, 57, 33, -38, -100, -123, -98, 59, -16, -65, -17, 6, -18, -27, 95, 32, 16, -52, 60, 84, 74, 82, -108, 14, -64, 40, -10, 86, 96, -94, -29, 15, -20, -99, 36, -125, 126, -43, 124, -21, t3.f6397package, -41, -51, -35, 120, -1, -37, -95, 9, -48, 118, -124, 117, -69, t3.f6412volatile, 26, 47, -80, -2, -42, 52, NativeJavaObject.CONVERSION_NONE, 53, -46, ExifInterface.START_CODE, 89, 109, 77, 119, -25, -114, 97, -49, -97, -50, 39, -11, Byte.MIN_VALUE, -122, -57, -90, -5, -8, -121, -85, 98, Utf8.REPLACEMENT_BYTE, -33, 72, 0, t3.f6409throws, -102, -67, 91, 4, -110, 2, 37, 101, 76, 83, 12, -14, 41, -81, t3.f6387finally, 108, 65, 48, -23, -109, 85, -9, -84, 104, 38, -60, 125, -54, 122, 62, -96, 55, 3, -63, 54, 105, 102, 8, t3.f6385extends, -89, Celse.f30385final, -59, -45, 34, -73, 19, 70, 50, -24, 87, -120, 43, -127, -78, 78, 100, t3.f6403strictfp, -86, -111, 88, 46, -101, 92, t3.f6381continue, 81, 115, 66, 35, 1, 110, -13, 13, -66, 61, 10, 45, t3.f6399protected, 103, 51, t3.f6398private, 123, 94, -22, -34, -117, -53, -87, -116, -115, -83, 73, -126, -28, -70, -61, t3.f6382default, -47, -32, -119, -4, -79, -71, -75, 7, 121, -72, ExifInterface.MARKER_APP1};

    /* renamed from: import, reason: not valid java name */
    private static final byte[] f29612import = {-78, -74, 35, 17, -89, -120, -59, -90, 57, -113, -60, -24, 115, 34, 67, -61, -126, 39, -51, t3.f6397package, 81, 98, 45, -9, 92, 14, 59, -3, -54, -101, 13, 15, 121, -116, 16, 76, 116, t3.f6403strictfp, 10, -114, 124, -108, 7, -57, 94, t3.f6409throws, -95, 33, 87, 80, 78, -87, Byte.MIN_VALUE, ExifInterface.MARKER_EOI, -17, 100, 65, -49, 60, -18, 46, 19, 41, -70, 52, 90, -82, -118, 97, 51, 18, -71, 85, -88, t3.f6382default, 5, -10, 3, 6, 73, -75, 37, 9, t3.f6385extends, 12, ExifInterface.START_CODE, 56, -4, 32, -12, -27, Byte.MAX_VALUE, -41, 49, 43, 102, 111, -1, 114, -122, -16, -93, 47, 120, 0, Celse.f30385final, -52, -30, -80, -15, 66, -76, 48, 95, 96, 4, -20, -91, -29, -117, -25, t3.f6412volatile, -65, -124, 123, -26, -127, -8, -34, -40, -46, t3.f6387finally, -50, 75, 71, -42, 105, 108, t3.f6398private, -103, -102, 1, -77, -123, -79, -7, 89, -62, 55, -23, -56, -96, -19, 79, -119, 104, 109, -43, 38, -111, -121, 88, -67, -55, -104, -36, 117, -64, 118, -11, 103, 107, 126, -21, 82, -53, -47, 91, -97, 11, -37, Cfinal.f15506do, -110, 26, -6, -84, -28, ExifInterface.MARKER_APP1, 113, t3.f6399protected, 101, -115, -105, -98, -107, -112, 93, -73, -63, -81, 84, -5, 2, -32, 53, -69, 58, 77, -83, 44, 61, 86, 8, t3.f6381continue, 74, -109, 106, -85, -72, 122, -14, 125, -38, Utf8.REPLACEMENT_BYTE, -2, 62, -66, -22, -86, 68, -58, -48, 54, 72, 112, -106, 119, 36, 83, -33, -13, -125, 40, 50, 69, t3.f6394interface, -92, -45, -94, 70, 110, -100, -35, NativeJavaObject.CONVERSION_NONE, -44, -99};

    public Ccase(int i) throws IllegalArgumentException {
        if (i != 128 && i != 256 && i != 512) {
            throw new IllegalArgumentException("unsupported block length: only 128/256/512 are allowed");
        }
        int i2 = i >>> 6;
        this.f29622new = i2;
        this.f29618do = new long[i2];
    }

    /* renamed from: break, reason: not valid java name */
    private static long m33412break(long j) {
        return (((j & (-9187201950435737472L)) >>> 7) * 29) ^ ((9187201950435737471L & j) << 1);
    }

    /* renamed from: case, reason: not valid java name */
    private static long m33413case(long j) {
        long jM33412break = m33412break(j);
        long jM33415class = m33415class(8, j) ^ j;
        long jM33415class2 = (jM33415class ^ m33415class(16, jM33415class)) ^ m33415class(48, j);
        return ((m33415class(32, m33414catch((j ^ jM33415class2) ^ jM33412break)) ^ jM33415class2) ^ m33415class(40, jM33412break)) ^ m33415class(48, jM33412break);
    }

    /* renamed from: catch, reason: not valid java name */
    private static long m33414catch(long j) {
        return (((j & 4629771061636907072L) >>> 6) * 29) ^ (((4557430888798830399L & j) << 2) ^ ((((-9187201950435737472L) & j) >>> 6) * 29));
    }

    /* renamed from: class, reason: not valid java name */
    private static long m33415class(int i, long j) {
        return (j << (-i)) | (j >>> i);
    }

    /* renamed from: const, reason: not valid java name */
    private void m33416const(long[] jArr, long[] jArr2) {
        int i = this.f29622new;
        if (i == 2) {
            long j = jArr[0];
            long j2 = jArr[1];
            jArr2[0] = (j >>> 56) | (j2 << 8);
            jArr2[1] = (j << 8) | (j2 >>> 56);
            return;
        }
        if (i == 4) {
            long j3 = jArr[0];
            long j4 = jArr[1];
            long j5 = jArr[2];
            long j6 = jArr[3];
            jArr2[0] = (j4 >>> 24) | (j5 << 40);
            jArr2[1] = (j5 >>> 24) | (j6 << 40);
            jArr2[2] = (j6 >>> 24) | (j3 << 40);
            jArr2[3] = (j3 >>> 24) | (j4 << 40);
            return;
        }
        if (i != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        }
        long j7 = jArr[0];
        long j8 = jArr[1];
        long j9 = jArr[2];
        long j10 = jArr[3];
        long j11 = jArr[4];
        long j12 = jArr[5];
        long j13 = jArr[6];
        long j14 = jArr[7];
        jArr2[0] = (j9 >>> 24) | (j10 << 40);
        jArr2[1] = (j10 >>> 24) | (j11 << 40);
        jArr2[2] = (j11 >>> 24) | (j12 << 40);
        jArr2[3] = (j12 >>> 24) | (j13 << 40);
        jArr2[4] = (j13 >>> 24) | (j14 << 40);
        jArr2[5] = (j14 >>> 24) | (j7 << 40);
        jArr2[6] = (j7 >>> 24) | (j8 << 40);
        jArr2[7] = (j8 >>> 24) | (j9 << 40);
    }

    /* renamed from: do, reason: not valid java name */
    private void m33417do(int i) {
        long[] jArr = this.f29620for[i];
        for (int i2 = 0; i2 < this.f29622new; i2++) {
            long[] jArr2 = this.f29618do;
            jArr2[i2] = jArr2[i2] + jArr[i2];
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static long m33418else(long j) {
        long jM33415class = m33415class(8, j) ^ j;
        long jM33415class2 = (jM33415class ^ m33415class(32, jM33415class)) ^ m33415class(48, j);
        long j2 = jM33415class2 ^ j;
        long jM33415class3 = m33415class(48, j);
        long jM33415class4 = m33415class(56, j);
        long jM33412break = m33412break(j2 ^ jM33415class4) ^ m33415class(56, j2);
        long jM33412break2 = m33412break(m33415class(40, m33412break(jM33412break) ^ j) ^ (m33415class(16, j2) ^ j)) ^ (j2 ^ jM33415class3);
        return m33412break(m33415class(40, ((j ^ m33415class(32, j2)) ^ jM33415class4) ^ m33412break(((jM33415class3 ^ (m33415class(24, j) ^ j2)) ^ jM33415class4) ^ m33412break(m33412break(jM33412break2) ^ m33415class(16, jM33415class2))))) ^ jM33415class2;
    }

    /* renamed from: final, reason: not valid java name */
    private void m33419final() {
        int i = this.f29622new;
        if (i == 2) {
            long[] jArr = this.f29618do;
            long j = jArr[0];
            long j2 = jArr[1];
            long j3 = (-4294967296L) & (j ^ j2);
            jArr[0] = j ^ j3;
            jArr[1] = j3 ^ j2;
            return;
        }
        if (i == 4) {
            long[] jArr2 = this.f29618do;
            long j4 = jArr2[0];
            long j5 = jArr2[1];
            long j6 = jArr2[2];
            long j7 = jArr2[3];
            long j8 = (j4 ^ j6) & (-4294967296L);
            long j9 = j4 ^ j8;
            long j10 = j6 ^ j8;
            long j11 = (j5 ^ j7) & 281474976645120L;
            long j12 = j5 ^ j11;
            long j13 = j7 ^ j11;
            long j14 = (j9 ^ j12) & (-281470681808896L);
            long j15 = (j10 ^ j13) & (-281470681808896L);
            jArr2[0] = j9 ^ j14;
            jArr2[1] = j12 ^ j14;
            jArr2[2] = j10 ^ j15;
            jArr2[3] = j13 ^ j15;
            return;
        }
        if (i != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        }
        long[] jArr3 = this.f29618do;
        long j16 = jArr3[0];
        long j17 = jArr3[1];
        long j18 = jArr3[2];
        long j19 = jArr3[3];
        long j20 = jArr3[4];
        long j21 = jArr3[5];
        long j22 = jArr3[6];
        long j23 = jArr3[7];
        long j24 = (j16 ^ j20) & (-4294967296L);
        long j25 = j16 ^ j24;
        long j26 = j20 ^ j24;
        long j27 = (j17 ^ j21) & 72057594021150720L;
        long j28 = j17 ^ j27;
        long j29 = j21 ^ j27;
        long j30 = (j18 ^ j22) & 281474976645120L;
        long j31 = j18 ^ j30;
        long j32 = j22 ^ j30;
        long j33 = (j19 ^ j23) & 1099511627520L;
        long j34 = j19 ^ j33;
        long j35 = j23 ^ j33;
        long j36 = (j25 ^ j31) & (-281470681808896L);
        long j37 = j25 ^ j36;
        long j38 = j31 ^ j36;
        long j39 = (j28 ^ j34) & 72056494543077120L;
        long j40 = j28 ^ j39;
        long j41 = j34 ^ j39;
        long j42 = (j26 ^ j32) & (-281470681808896L);
        long j43 = j26 ^ j42;
        long j44 = j32 ^ j42;
        long j45 = (j29 ^ j35) & 72056494543077120L;
        long j46 = j29 ^ j45;
        long j47 = j35 ^ j45;
        long j48 = (j37 ^ j40) & (-71777214294589696L);
        long j49 = j37 ^ j48;
        long j50 = j40 ^ j48;
        long j51 = (j38 ^ j41) & (-71777214294589696L);
        long j52 = j38 ^ j51;
        long j53 = j41 ^ j51;
        long j54 = (j43 ^ j46) & (-71777214294589696L);
        long j55 = j43 ^ j54;
        long j56 = j46 ^ j54;
        long j57 = (j44 ^ j47) & (-71777214294589696L);
        jArr3[0] = j49;
        jArr3[1] = j50;
        jArr3[2] = j52;
        jArr3[3] = j53;
        jArr3[4] = j55;
        jArr3[5] = j56;
        jArr3[6] = j44 ^ j57;
        jArr3[7] = j47 ^ j57;
    }

    /* renamed from: for, reason: not valid java name */
    private void m33420for(byte[] bArr, int i, byte[] bArr2, int i2) {
        long jM3362import = ib1.m3362import(bArr, i);
        long jM3362import2 = ib1.m3362import(bArr, i + 8);
        long[] jArr = this.f29620for[0];
        long j = jM3362import + jArr[0];
        long j2 = jM3362import2 + jArr[1];
        int i3 = 0;
        while (true) {
            int i4 = (int) j;
            int i5 = (int) (j >>> 32);
            int i6 = (int) j2;
            int i7 = (int) (j2 >>> 32);
            byte[] bArr3 = f29607catch;
            byte b = bArr3[i4 & 255];
            byte[] bArr4 = f29608class;
            byte b2 = bArr4[(i4 >>> 8) & 255];
            byte[] bArr5 = f29609const;
            byte b3 = bArr5[(i4 >>> 16) & 255];
            byte[] bArr6 = f29610final;
            int i8 = ((b3 & 255) << 16) | (b & 255) | ((b2 & 255) << 8) | (bArr6[i4 >>> 24] << t3.f6397package);
            byte b4 = bArr3[i7 & 255];
            byte b5 = bArr4[(i7 >>> 8) & 255];
            byte b6 = bArr5[(i7 >>> 16) & 255];
            long j3 = (((bArr6[i7 >>> 24] << t3.f6397package) | (((b4 & 255) | ((b5 & 255) << 8)) | ((b6 & 255) << 16))) << 32) | (i8 & 4294967295L);
            int i9 = (bArr6[i6 >>> 24] << t3.f6397package) | (bArr3[i6 & 255] & 255) | ((bArr4[(i6 >>> 8) & 255] & 255) << 8) | ((bArr5[(i6 >>> 16) & 255] & 255) << 16);
            int i10 = (bArr6[i5 >>> 24] << t3.f6397package) | (bArr3[i5 & 255] & 255) | ((bArr4[(i5 >>> 8) & 255] & 255) << 8) | ((bArr5[(i5 >>> 16) & 255] & 255) << 16);
            long jM33413case = m33413case(j3);
            long jM33413case2 = m33413case((i10 << 32) | (i9 & 4294967295L));
            i3++;
            int i11 = this.f29617case;
            if (i3 == i11) {
                long[] jArr2 = this.f29620for[i11];
                long j4 = jM33413case + jArr2[0];
                long j5 = jM33413case2 + jArr2[1];
                ib1.m3356extends(j4, bArr2, i2);
                ib1.m3356extends(j5, bArr2, i2 + 8);
                return;
            }
            long[] jArr3 = this.f29620for[i3];
            long j6 = jM33413case ^ jArr3[0];
            j2 = jM33413case2 ^ jArr3[1];
            j = j6;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m33421goto() {
        for (int i = 0; i < this.f29622new; i++) {
            long[] jArr = this.f29618do;
            jArr[i] = m33413case(jArr[i]);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m33422if(byte[] bArr, int i, byte[] bArr2, int i2) {
        long jM3362import = ib1.m3362import(bArr, i);
        long jM3362import2 = ib1.m3362import(bArr, i + 8);
        long[][] jArr = this.f29620for;
        int i3 = this.f29617case;
        long[] jArr2 = jArr[i3];
        long j = jM3362import - jArr2[0];
        long j2 = jM3362import2 - jArr2[1];
        while (true) {
            long jM33418else = m33418else(j);
            long jM33418else2 = m33418else(j2);
            int i4 = (int) jM33418else;
            int i5 = (int) (jM33418else >>> 32);
            int i6 = (int) jM33418else2;
            int i7 = (int) (jM33418else2 >>> 32);
            byte[] bArr3 = f29613super;
            byte b = bArr3[i4 & 255];
            byte[] bArr4 = f29615throw;
            byte b2 = bArr4[(i4 >>> 8) & 255];
            byte[] bArr5 = f29616while;
            byte b3 = bArr5[(i4 >>> 16) & 255];
            byte[] bArr6 = f29612import;
            int i8 = (bArr6[i4 >>> 24] << t3.f6397package) | ((b3 & 255) << 16) | (b & 255) | ((b2 & 255) << 8);
            byte b4 = bArr3[i7 & 255];
            byte b5 = bArr4[(i7 >>> 8) & 255];
            byte b6 = bArr5[(i7 >>> 16) & 255];
            long j3 = (((bArr6[i7 >>> 24] << t3.f6397package) | (((b4 & 255) | ((b5 & 255) << 8)) | ((b6 & 255) << 16))) << 32) | (i8 & 4294967295L);
            int i9 = (bArr6[i6 >>> 24] << t3.f6397package) | (bArr3[i6 & 255] & 255) | ((bArr4[(i6 >>> 8) & 255] & 255) << 8) | ((bArr5[(i6 >>> 16) & 255] & 255) << 16);
            long j4 = (((bArr6[i5 >>> 24] << t3.f6397package) | (((bArr3[i5 & 255] & 255) | ((bArr4[(i5 >>> 8) & 255] & 255) << 8)) | ((bArr5[(i5 >>> 16) & 255] & 255) << 16))) << 32) | (i9 & 4294967295L);
            i3--;
            if (i3 == 0) {
                long[] jArr3 = this.f29620for[0];
                long j5 = j3 - jArr3[0];
                long j6 = j4 - jArr3[1];
                ib1.m3356extends(j5, bArr2, i2);
                ib1.m3356extends(j6, bArr2, i2 + 8);
                return;
            }
            long[] jArr4 = this.f29620for[i3];
            long j7 = j3 ^ jArr4[0];
            long j8 = j4 ^ jArr4[1];
            j = j7;
            j2 = j8;
        }
    }

    /* renamed from: import, reason: not valid java name */
    private void m33423import(long[] jArr, long[] jArr2) {
        int i = this.f29622new;
        long[] jArr3 = new long[i];
        long[] jArr4 = new long[i];
        long[] jArr5 = new long[i];
        this.f29618do = jArr5;
        long j = jArr5[0];
        int i2 = this.f29623try;
        jArr5[0] = j + i + i2 + 1;
        System.arraycopy(jArr, 0, jArr3, 0, i);
        if (i == i2) {
            System.arraycopy(jArr, 0, jArr4, 0, i);
        } else {
            int i3 = this.f29622new;
            System.arraycopy(jArr, i3, jArr4, 0, i3);
        }
        int i4 = 0;
        while (true) {
            long[] jArr6 = this.f29618do;
            if (i4 >= jArr6.length) {
                break;
            }
            jArr6[i4] = jArr6[i4] + jArr3[i4];
            i4++;
        }
        m33427super();
        m33419final();
        m33421goto();
        int i5 = 0;
        while (true) {
            long[] jArr7 = this.f29618do;
            if (i5 >= jArr7.length) {
                break;
            }
            jArr7[i5] = jArr7[i5] ^ jArr4[i5];
            i5++;
        }
        m33427super();
        m33419final();
        m33421goto();
        int i6 = 0;
        while (true) {
            long[] jArr8 = this.f29618do;
            if (i6 >= jArr8.length) {
                m33427super();
                m33419final();
                m33421goto();
                System.arraycopy(this.f29618do, 0, jArr2, 0, this.f29622new);
                return;
            }
            jArr8[i6] = jArr8[i6] + jArr3[i6];
            i6++;
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m33424native() {
        for (int i = 1; i < this.f29617case; i += 2) {
            long[][] jArr = this.f29620for;
            m33416const(jArr[i - 1], jArr[i]);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m33425new() {
        int i = this.f29622new;
        if (i == 2) {
            long[] jArr = this.f29618do;
            long j = jArr[0];
            long j2 = jArr[1];
            long j3 = (-4294967296L) & (j ^ j2);
            jArr[0] = j ^ j3;
            jArr[1] = j3 ^ j2;
            return;
        }
        if (i == 4) {
            long[] jArr2 = this.f29618do;
            long j4 = jArr2[0];
            long j5 = jArr2[1];
            long j6 = jArr2[2];
            long j7 = jArr2[3];
            long j8 = (j4 ^ j5) & (-281470681808896L);
            long j9 = j4 ^ j8;
            long j10 = j5 ^ j8;
            long j11 = (j6 ^ j7) & (-281470681808896L);
            long j12 = j6 ^ j11;
            long j13 = j7 ^ j11;
            long j14 = (j9 ^ j12) & (-4294967296L);
            long j15 = j9 ^ j14;
            long j16 = (j10 ^ j13) & 281474976645120L;
            jArr2[0] = j15;
            jArr2[1] = j10 ^ j16;
            jArr2[2] = j12 ^ j14;
            jArr2[3] = j16 ^ j13;
            return;
        }
        if (i != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        }
        long[] jArr3 = this.f29618do;
        long j17 = jArr3[0];
        long j18 = jArr3[1];
        long j19 = jArr3[2];
        long j20 = jArr3[3];
        long j21 = jArr3[4];
        long j22 = jArr3[5];
        long j23 = jArr3[6];
        long j24 = jArr3[7];
        long j25 = (j17 ^ j18) & (-71777214294589696L);
        long j26 = j17 ^ j25;
        long j27 = j18 ^ j25;
        long j28 = (j19 ^ j20) & (-71777214294589696L);
        long j29 = j19 ^ j28;
        long j30 = j20 ^ j28;
        long j31 = (j21 ^ j22) & (-71777214294589696L);
        long j32 = j21 ^ j31;
        long j33 = j22 ^ j31;
        long j34 = (j23 ^ j24) & (-71777214294589696L);
        long j35 = j23 ^ j34;
        long j36 = j24 ^ j34;
        long j37 = (j26 ^ j29) & (-281470681808896L);
        long j38 = j26 ^ j37;
        long j39 = j29 ^ j37;
        long j40 = (j27 ^ j30) & 72056494543077120L;
        long j41 = j27 ^ j40;
        long j42 = j30 ^ j40;
        long j43 = (j32 ^ j35) & (-281470681808896L);
        long j44 = j32 ^ j43;
        long j45 = j35 ^ j43;
        long j46 = (j33 ^ j36) & 72056494543077120L;
        long j47 = j33 ^ j46;
        long j48 = j36 ^ j46;
        long j49 = (j38 ^ j44) & (-4294967296L);
        long j50 = j38 ^ j49;
        long j51 = j44 ^ j49;
        long j52 = (j41 ^ j47) & 72057594021150720L;
        long j53 = j41 ^ j52;
        long j54 = (j39 ^ j45) & 281474976645120L;
        long j55 = j39 ^ j54;
        long j56 = j54 ^ j45;
        long j57 = (j42 ^ j48) & 1099511627520L;
        jArr3[0] = j50;
        jArr3[1] = j53;
        jArr3[2] = j55;
        jArr3[3] = j42 ^ j57;
        jArr3[4] = j51;
        jArr3[5] = j47 ^ j52;
        jArr3[6] = j56;
        jArr3[7] = j48 ^ j57;
    }

    /* renamed from: public, reason: not valid java name */
    private void m33426public(int i) {
        long[] jArr = this.f29620for[i];
        for (int i2 = 0; i2 < this.f29622new; i2++) {
            long[] jArr2 = this.f29618do;
            jArr2[i2] = jArr2[i2] ^ jArr[i2];
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m33427super() {
        for (int i = 0; i < this.f29622new; i++) {
            long[] jArr = this.f29618do;
            long j = jArr[i];
            int i2 = (int) j;
            int i3 = (int) (j >>> 32);
            byte b = f29607catch[i2 & 255];
            byte b2 = f29608class[(i2 >>> 8) & 255];
            byte b3 = f29609const[(i2 >>> 16) & 255];
            byte[] bArr = f29610final;
            jArr[i] = (((bArr[i2 >>> 24] << t3.f6397package) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16)) & 4294967295L) | (((((r2[i3 & 255] & 255) | ((r7[(i3 >>> 8) & 255] & 255) << 8)) | ((r9[(i3 >>> 16) & 255] & 255) << 16)) | (bArr[i3 >>> 24] << t3.f6397package)) << 32);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m33428this() {
        for (int i = 0; i < this.f29622new; i++) {
            long[] jArr = this.f29618do;
            jArr[i] = m33418else(jArr[i]);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m33429throw(int i) {
        long[] jArr = this.f29620for[i];
        for (int i2 = 0; i2 < this.f29622new; i2++) {
            long[] jArr2 = this.f29618do;
            jArr2[i2] = jArr2[i2] - jArr[i2];
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m33430try() {
        for (int i = 0; i < this.f29622new; i++) {
            long[] jArr = this.f29618do;
            long j = jArr[i];
            int i2 = (int) j;
            int i3 = (int) (j >>> 32);
            byte b = f29613super[i2 & 255];
            byte b2 = f29615throw[(i2 >>> 8) & 255];
            byte b3 = f29616while[(i2 >>> 16) & 255];
            byte[] bArr = f29612import;
            jArr[i] = (((bArr[i2 >>> 24] << t3.f6397package) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16)) & 4294967295L) | (((((r2[i3 & 255] & 255) | ((r7[(i3 >>> 8) & 255] & 255) << 8)) | ((r9[(i3 >>> 16) & 255] & 255) << 16)) | (bArr[i3 >>> 24] << t3.f6397package)) << 32);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m33431while(long[] jArr, long[] jArr2) {
        int i;
        int i2;
        int i3 = this.f29623try;
        long[] jArr3 = new long[i3];
        long[] jArr4 = new long[this.f29622new];
        System.arraycopy(jArr, 0, jArr3, 0, i3);
        long j = 281479271743489L;
        int i4 = 0;
        while (true) {
            for (int i5 = 0; i5 < this.f29622new; i5++) {
                jArr4[i5] = jArr2[i5] + j;
            }
            for (int i6 = 0; i6 < this.f29622new; i6++) {
                this.f29618do[i6] = jArr3[i6] + jArr4[i6];
            }
            m33427super();
            m33419final();
            m33421goto();
            for (int i7 = 0; i7 < this.f29622new; i7++) {
                long[] jArr5 = this.f29618do;
                jArr5[i7] = jArr5[i7] ^ jArr4[i7];
            }
            m33427super();
            m33419final();
            m33421goto();
            int i8 = 0;
            while (true) {
                i = this.f29622new;
                if (i8 >= i) {
                    break;
                }
                long[] jArr6 = this.f29618do;
                jArr6[i8] = jArr6[i8] + jArr4[i8];
                i8++;
            }
            System.arraycopy(this.f29618do, 0, this.f29620for[i4], 0, i);
            if (this.f29617case == i4) {
                return;
            }
            if (this.f29622new != this.f29623try) {
                i4 += 2;
                j <<= 1;
                for (int i9 = 0; i9 < this.f29622new; i9++) {
                    jArr4[i9] = jArr2[i9] + j;
                }
                int i10 = 0;
                while (true) {
                    int i11 = this.f29622new;
                    if (i10 >= i11) {
                        break;
                    }
                    this.f29618do[i10] = jArr3[i11 + i10] + jArr4[i10];
                    i10++;
                }
                m33427super();
                m33419final();
                m33421goto();
                for (int i12 = 0; i12 < this.f29622new; i12++) {
                    long[] jArr7 = this.f29618do;
                    jArr7[i12] = jArr7[i12] ^ jArr4[i12];
                }
                m33427super();
                m33419final();
                m33421goto();
                int i13 = 0;
                while (true) {
                    i2 = this.f29622new;
                    if (i13 >= i2) {
                        break;
                    }
                    long[] jArr8 = this.f29618do;
                    jArr8[i13] = jArr8[i13] + jArr4[i13];
                    i13++;
                }
                System.arraycopy(this.f29618do, 0, this.f29620for[i4], 0, i2);
                if (this.f29617case == i4) {
                    return;
                }
            }
            i4 += 2;
            j <<= 1;
            long j2 = jArr3[0];
            for (int i14 = 1; i14 < i3; i14++) {
                jArr3[i14 - 1] = jArr3[i14];
            }
            jArr3[i3 - 1] = j2;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "DSTU7624";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f29622new << 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005b A[LOOP:0: B:26:0x0056->B:28:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0064 A[EDGE_INSN: B:38:0x0064->B:29:0x0064 BREAK  A[LOOP:0: B:26:0x0056->B:28:0x005b], SYNTHETIC] */
    @Override // org.bouncycastle.crypto.BlockCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        int i;
        int i2;
        long[][] jArr;
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("Invalid parameter passed to DSTU7624Engine init");
        }
        this.f29619else = z;
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        int length = bArrM2770do.length << 3;
        int i3 = this.f29622new << 6;
        if (length != 128 && length != 256 && length != 512) {
            throw new IllegalArgumentException("unsupported key length: only 128/256/512 are allowed");
        }
        if (length != i3 && length != i3 * 2) {
            throw new IllegalArgumentException("Unsupported key length");
        }
        if (length == 128) {
            i = 10;
        } else {
            if (length != 256) {
                if (length == 512) {
                    i = 18;
                }
                this.f29623try = length >>> 6;
                this.f29620for = new long[this.f29617case + 1][];
                i2 = 0;
                while (true) {
                    jArr = this.f29620for;
                    if (i2 < jArr.length) {
                        break;
                    }
                    jArr[i2] = new long[this.f29622new];
                    i2++;
                }
                long[] jArr2 = new long[this.f29623try];
                this.f29621if = jArr2;
                if (bArrM2770do.length == (length >>> 3)) {
                    throw new IllegalArgumentException("Invalid key parameter passed to DSTU7624Engine init");
                }
                ib1.m3363native(bArrM2770do, 0, jArr2);
                long[] jArr3 = new long[this.f29622new];
                m33423import(this.f29621if, jArr3);
                m33431while(this.f29621if, jArr3);
                m33424native();
                return;
            }
            i = 14;
        }
        this.f29617case = i;
        this.f29623try = length >>> 6;
        this.f29620for = new long[this.f29617case + 1][];
        i2 = 0;
        while (true) {
            jArr = this.f29620for;
            if (i2 < jArr.length) {
            }
            jArr[i2] = new long[this.f29622new];
            i2++;
        }
        long[] jArr22 = new long[this.f29623try];
        this.f29621if = jArr22;
        if (bArrM2770do.length == (length >>> 3)) {
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3;
        if (this.f29621if == null) {
            throw new IllegalStateException("DSTU7624Engine not initialised");
        }
        if (getBlockSize() + i > bArr.length) {
            throw new tw("Input buffer too short");
        }
        if (getBlockSize() + i2 > bArr2.length) {
            throw new f91("Output buffer too short");
        }
        int i4 = 0;
        if (this.f29619else) {
            if (this.f29622new != 2) {
                ib1.m3363native(bArr, i, this.f29618do);
                m33417do(0);
                while (true) {
                    m33427super();
                    m33419final();
                    m33421goto();
                    i4++;
                    i3 = this.f29617case;
                    if (i4 == i3) {
                        break;
                    }
                    m33426public(i4);
                }
                m33417do(i3);
                ib1.m3365package(this.f29618do, bArr2, i2);
            } else {
                m33420for(bArr, i, bArr2, i2);
            }
        } else if (this.f29622new != 2) {
            ib1.m3363native(bArr, i, this.f29618do);
            m33429throw(this.f29617case);
            int i5 = this.f29617case;
            while (true) {
                m33428this();
                m33425new();
                m33430try();
                i5--;
                if (i5 == 0) {
                    break;
                }
                m33426public(i5);
            }
            m33429throw(0);
            ib1.m3365package(this.f29618do, bArr2, i2);
        } else {
            m33422if(bArr, i, bArr2, i2);
        }
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        q3.j(this.f29618do, 0L);
    }
}
