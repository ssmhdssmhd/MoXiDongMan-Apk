package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import okio.Utf8;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.signers.Celse;
import org.bouncycastle.util.Memoable;
import org.mozilla.javascript.NativeJavaObject;

/* loaded from: classes3.dex */
public class mw0 implements ExtendedDigest, Memoable {

    /* renamed from: else, reason: not valid java name */
    private static final int f4040else = 16;

    /* renamed from: goto, reason: not valid java name */
    private static final byte[] f4041goto = {41, 46, 67, -55, -94, -40, 124, 1, 61, 54, 84, -95, -20, -16, 6, 19, 98, -89, 5, -13, -64, -57, 115, -116, -104, -109, 43, ExifInterface.MARKER_EOI, Celse.f30385final, 76, -126, -54, t3.f6394interface, -101, 87, 60, -3, -44, -32, t3.f6385extends, 103, 66, 111, t3.f6397package, -118, t3.f6387finally, -27, 18, -66, 78, -60, -42, -38, -98, -34, 73, -96, -5, -11, -114, -69, 47, -18, 122, -87, 104, 121, -111, t3.f6382default, -78, 7, Utf8.REPLACEMENT_BYTE, -108, -62, 16, -119, 11, 34, 95, 33, Byte.MIN_VALUE, Byte.MAX_VALUE, 93, -102, 90, -112, 50, 39, 53, 62, -52, -25, -65, -9, -105, 3, -1, t3.f6398private, 48, -77, 72, -91, -75, -47, -41, 94, -110, ExifInterface.START_CODE, -84, 86, -86, -58, 79, -72, 56, -46, -106, -92, 125, -74, 118, -4, 107, -30, -100, 116, 4, -15, 69, -99, 112, 89, 100, 113, -121, 32, -122, 91, -49, 101, -26, 45, -88, 2, t3.f6381continue, 96, 37, -83, -82, -80, -71, -10, t3.f6403strictfp, 70, 97, 105, 52, Cfinal.f15506do, 126, 15, 85, 71, -93, 35, -35, 81, -81, 58, -61, 92, -7, -50, -70, -59, -22, 38, 44, 83, 13, 110, -123, 40, -124, 9, -45, -33, -51, -12, 65, -127, 77, 82, 106, -36, 55, -56, 108, -63, -85, -6, 36, ExifInterface.MARKER_APP1, 123, 8, 12, -67, -79, 74, 120, -120, -107, -117, -29, NativeJavaObject.CONVERSION_NONE, -24, 109, -23, -53, -43, -2, 59, 0, t3.f6412volatile, 57, -14, -17, -73, 14, 102, 88, -48, -28, -90, 119, 114, -8, -21, 117, 75, 10, 49, 68, 80, -76, -113, -19, t3.f6399protected, 26, -37, -103, -115, 51, -97, 17, -125, t3.f6409throws};

    /* renamed from: case, reason: not valid java name */
    private int f4042case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f4043do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f4044for;

    /* renamed from: if, reason: not valid java name */
    private int f4045if;

    /* renamed from: new, reason: not valid java name */
    private int f4046new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f4047try;

    public mw0() {
        this.f4043do = new byte[48];
        this.f4044for = new byte[16];
        this.f4047try = new byte[16];
        reset();
    }

    public mw0(mw0 mw0Var) {
        this.f4043do = new byte[48];
        this.f4044for = new byte[16];
        this.f4047try = new byte[16];
        m5012do(mw0Var);
    }

    /* renamed from: do, reason: not valid java name */
    private void m5012do(mw0 mw0Var) {
        byte[] bArr = mw0Var.f4043do;
        System.arraycopy(bArr, 0, this.f4043do, 0, bArr.length);
        this.f4045if = mw0Var.f4045if;
        byte[] bArr2 = mw0Var.f4044for;
        System.arraycopy(bArr2, 0, this.f4044for, 0, bArr2.length);
        this.f4046new = mw0Var.f4046new;
        byte[] bArr3 = mw0Var.f4047try;
        System.arraycopy(bArr3, 0, this.f4047try, 0, bArr3.length);
        this.f4042case = mw0Var.f4042case;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new mw0(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        int length = this.f4044for.length;
        int i2 = this.f4046new;
        byte b = (byte) (length - i2);
        while (true) {
            byte[] bArr2 = this.f4044for;
            if (i2 >= bArr2.length) {
                m5013for(bArr2);
                m5014if(this.f4044for);
                m5014if(this.f4047try);
                System.arraycopy(this.f4043do, this.f4045if, bArr, i, 16);
                reset();
                return 16;
            }
            bArr2[i2] = b;
            i2++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m5013for(byte[] bArr) {
        byte b = this.f4047try[15];
        for (int i = 0; i < 16; i++) {
            byte[] bArr2 = this.f4047try;
            bArr2[i] = (byte) (f4041goto[(b ^ bArr[i]) & 255] ^ bArr2[i]);
            b = bArr2[i];
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "MD2";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    /* renamed from: if, reason: not valid java name */
    public void m5014if(byte[] bArr) {
        for (int i = 0; i < 16; i++) {
            byte[] bArr2 = this.f4043do;
            bArr2[i + 16] = bArr[i];
            bArr2[i + 32] = (byte) (bArr[i] ^ bArr2[i]);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 18; i3++) {
            for (int i4 = 0; i4 < 48; i4++) {
                byte[] bArr3 = this.f4043do;
                byte b = (byte) (f4041goto[i2] ^ bArr3[i4]);
                bArr3[i4] = b;
                i2 = b & 255;
            }
            i2 = (i2 + i3) % 256;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f4045if = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.f4043do;
            if (i == bArr.length) {
                break;
            }
            bArr[i] = 0;
            i++;
        }
        this.f4046new = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.f4044for;
            if (i2 == bArr2.length) {
                break;
            }
            bArr2[i2] = 0;
            i2++;
        }
        this.f4042case = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr3 = this.f4047try;
            if (i3 == bArr3.length) {
                return;
            }
            bArr3[i3] = 0;
            i3++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m5012do((mw0) memoable);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.f4044for;
        int i = this.f4046new;
        int i2 = i + 1;
        this.f4046new = i2;
        bArr[i] = b;
        if (i2 == 16) {
            m5013for(bArr);
            m5014if(this.f4044for);
            this.f4046new = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        while (this.f4046new != 0 && i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
        while (i2 > 16) {
            System.arraycopy(bArr, i, this.f4044for, 0, 16);
            m5013for(this.f4044for);
            m5014if(this.f4044for);
            i2 -= 16;
            i += 16;
        }
        while (i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
    }
}
