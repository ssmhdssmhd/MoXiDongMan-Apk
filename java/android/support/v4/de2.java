package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import okio.Utf8;
import org.bouncycastle.crypto.prng.RandomGenerator;
import org.bouncycastle.crypto.signers.Celse;
import org.mozilla.javascript.NativeJavaObject;

/* loaded from: classes3.dex */
public class de2 implements RandomGenerator {

    /* renamed from: do, reason: not valid java name */
    private byte f1022do = 0;

    /* renamed from: if, reason: not valid java name */
    private byte[] f1024if = {-69, 44, 98, Byte.MAX_VALUE, -75, -86, -44, 13, -127, -2, -78, -126, -53, -96, -95, 8, t3.f6397package, 113, 86, -24, 73, 2, 16, -60, -34, 53, -91, -20, Byte.MIN_VALUE, 18, -72, 105, -38, 47, 117, -52, -94, 9, 54, 3, 97, 45, -3, -32, -35, 5, 67, -112, -83, -56, ExifInterface.MARKER_APP1, -81, 87, -101, 76, -40, 81, -82, 80, -123, 60, 10, -28, -13, -100, 38, 35, 83, -55, -125, -105, 70, -79, -103, 100, 49, 119, -43, t3.f6412volatile, -42, 120, -67, 94, -80, -118, 34, 56, -8, 104, 43, ExifInterface.START_CODE, -59, -45, -9, Celse.f30385final, 111, -33, 4, -27, -107, 62, 37, -122, -90, 11, -113, -15, 36, 14, -41, Cfinal.f15506do, -77, -49, 126, 6, t3.f6382default, -102, 77, t3.f6403strictfp, -93, -37, 50, -110, 88, 17, 39, -12, 89, -48, 78, 106, t3.f6387finally, 91, -84, -1, 7, -64, 101, 121, -4, -57, -51, 118, 66, 93, -25, 58, 52, 122, 48, 40, 15, 115, 1, -7, -47, -46, t3.f6398private, -23, -111, -71, 90, -19, 65, 109, -76, -61, -98, -65, NativeJavaObject.CONVERSION_NONE, -6, t3.f6399protected, 51, 96, 71, -119, -16, -106, 26, 95, -109, 61, 55, 75, ExifInterface.MARKER_EOI, -88, -63, t3.f6381continue, -10, 57, -117, -73, 12, 32, -50, -120, 110, -74, 116, -114, -115, t3.f6385extends, 41, -14, -121, -11, -21, 112, -29, -5, 85, -97, -58, 68, 74, 69, 125, -30, 107, 92, 108, 102, -87, -116, -18, -124, 19, -89, t3.f6394interface, -99, -36, 103, 72, -70, 46, -26, -92, -85, 124, -108, 0, 33, -17, -22, -66, -54, 114, 79, 82, -104, Utf8.REPLACEMENT_BYTE, -62, t3.f6409throws, 123, 59, 84};

    /* renamed from: for, reason: not valid java name */
    private byte f1023for = -66;

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j) {
        addSeedMaterial(ib1.m3375throws(j));
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        for (byte b : bArr) {
            byte[] bArr2 = this.f1024if;
            byte b2 = this.f1023for;
            byte b3 = this.f1022do;
            byte b4 = bArr2[(b2 + bArr2[b3 & 255] + b) & 255];
            this.f1023for = b4;
            byte b5 = bArr2[b3 & 255];
            bArr2[b3 & 255] = bArr2[b4 & 255];
            bArr2[b4 & 255] = b5;
            this.f1022do = (byte) ((b3 + 1) & 255);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        nextBytes(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i, int i2) {
        synchronized (this.f1024if) {
            int i3 = i2 + i;
            while (i != i3) {
                byte[] bArr2 = this.f1024if;
                byte b = this.f1023for;
                byte b2 = this.f1022do;
                byte b3 = bArr2[(b + bArr2[b2 & 255]) & 255];
                this.f1023for = b3;
                bArr[i] = bArr2[(bArr2[bArr2[b3 & 255] & 255] + 1) & 255];
                byte b4 = bArr2[b2 & 255];
                bArr2[b2 & 255] = bArr2[b3 & 255];
                bArr2[b3 & 255] = b4;
                this.f1022do = (byte) ((b2 + 1) & 255);
                i++;
            }
        }
    }
}
