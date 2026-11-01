package android.support.v4;

import androidx.recyclerview.widget.ItemTouchHelper;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class mf0 implements BlockCipher {

    /* renamed from: new, reason: not valid java name */
    public static final int f3903new = 8;

    /* renamed from: do, reason: not valid java name */
    private int[] f3906do = null;

    /* renamed from: for, reason: not valid java name */
    private byte[] f3907for = f3905try;

    /* renamed from: if, reason: not valid java name */
    private boolean f3908if;

    /* renamed from: try, reason: not valid java name */
    private static byte[] f3905try = {4, 10, 9, 2, 13, 8, 0, 14, 6, 11, 1, 12, 7, 15, 5, 3, 14, 11, 4, 12, 6, 13, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, 13, 10, 3, 4, 2, 14, 15, 12, 7, 6, 0, 9, 11, 7, 13, 10, 1, 0, 8, 9, 15, 14, 4, 6, 12, 11, 2, 5, 3, 6, 12, 7, 1, 5, 15, 13, 8, 4, 10, 9, 14, 0, 3, 11, 2, 4, 11, 10, 0, 7, 2, 1, 13, 3, 6, 8, 5, 9, 12, 15, 14, 13, 11, 4, 1, 3, 15, 5, 9, 0, 10, 14, 7, 6, 8, 2, 12, 1, 15, 13, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, 11, 8, 12};

    /* renamed from: case, reason: not valid java name */
    private static byte[] f3896case = {4, 2, 15, 5, 9, 1, 0, 8, 14, 3, 11, 12, 13, 7, 10, 6, 12, 9, 15, 14, 8, 1, 3, 10, 2, 7, 4, 13, 6, 0, 11, 5, 13, 8, 14, 12, 7, 3, 9, 10, 1, 5, 2, 4, 6, 15, 0, 11, 14, 9, 11, 2, 5, 15, 7, 1, 0, 13, 12, 6, 10, 4, 3, 8, 3, 14, 5, 9, 6, 8, 0, 13, 10, 11, 7, 12, 2, 1, 15, 4, 8, 15, 6, 11, 1, 9, 12, 5, 13, 3, 7, 10, 0, 14, 2, 4, 9, 11, 12, 0, 3, 6, 7, 5, 4, 8, 14, 15, 1, 10, 2, 13, 12, 6, 5, 2, 11, 0, 9, 13, 3, 14, 7, 10, 15, 4, 1, 8};

    /* renamed from: else, reason: not valid java name */
    private static byte[] f3900else = {9, 6, 3, 2, 8, 11, 1, 7, 10, 4, 14, 15, 12, 0, 13, 5, 3, 7, 14, 9, 8, 10, 15, 0, 5, 2, 6, 12, 11, 4, 13, 1, 14, 4, 6, 2, 11, 3, 13, 8, 12, 15, 5, 10, 0, 7, 1, 9, 14, 7, 10, 12, 13, 1, 3, 9, 0, 2, 11, 4, 15, 8, 5, 6, 11, 5, 1, 9, 8, 13, 15, 0, 14, 4, 2, 3, 12, 7, 10, 6, 3, 10, 13, 12, 1, 2, 0, 11, 7, 5, 9, 4, 8, 15, 14, 6, 1, 13, 2, 9, 7, 10, 6, 0, 8, 12, 4, 5, 15, 3, 11, 14, 11, 10, 15, 5, 0, 12, 14, 8, 6, 2, 3, 9, 1, 7, 13, 4};

    /* renamed from: goto, reason: not valid java name */
    private static byte[] f3902goto = {8, 4, 11, 1, 3, 5, 0, 9, 2, 14, 10, 12, 13, 6, 7, 15, 0, 1, 2, 10, 4, 13, 5, 12, 9, 7, 3, 15, 11, 8, 6, 14, 14, 12, 0, 10, 9, 2, 13, 11, 7, 5, 8, 15, 3, 6, 1, 4, 7, 5, 0, 13, 11, 6, 1, 2, 3, 10, 12, 15, 4, 14, 9, 8, 2, 7, 12, 15, 9, 5, 10, 11, 1, 4, 0, 13, 6, 8, 14, 3, 8, 3, 2, 6, 4, 13, 14, 11, 12, 1, 7, 15, 10, 0, 9, 5, 5, 2, 10, 11, 9, 1, 12, 3, 7, 4, 13, 0, 6, 15, 8, 14, 0, 4, 11, 14, 8, 3, 7, 1, 10, 2, 9, 6, 15, 13, 5, 12};

    /* renamed from: this, reason: not valid java name */
    private static byte[] f3904this = {1, 11, 12, 2, 9, 13, 0, 15, 4, 5, 8, 14, 10, 7, 6, 3, 0, 1, 7, 13, 11, 4, 5, 2, 8, 14, 15, 12, 9, 10, 6, 3, 8, 2, 5, 0, 4, 9, 15, 10, 3, 7, 12, 13, 6, 14, 1, 11, 3, 6, 0, 1, 5, 13, 10, 8, 11, 2, 9, 7, 14, 15, 12, 4, 8, 13, 11, 0, 4, 5, 1, 2, 9, 3, 12, 14, 6, 15, 10, 7, 12, 9, 11, 1, 8, 14, 2, 4, 7, 3, 6, 5, 10, 0, 15, 13, 10, 9, 6, 8, 13, 14, 2, 0, 15, 3, 5, 11, 4, 1, 12, 7, 7, 4, 0, 5, 10, 2, 15, 14, 12, 6, 1, 11, 13, 9, 3, 8};

    /* renamed from: break, reason: not valid java name */
    private static byte[] f3895break = {15, 12, 2, 10, 6, 4, 5, 0, 7, 9, 14, 13, 1, 11, 8, 3, 11, 6, 3, 4, 12, 15, 14, 2, 7, 13, 8, 0, 5, 10, 9, 1, 1, 12, 11, 0, 15, 14, 6, 5, 10, 13, 4, 8, 9, 3, 7, 2, 1, 5, 14, 12, 10, 7, 0, 13, 6, 2, 11, 4, 9, 3, 15, 8, 0, 12, 8, 9, 13, 2, 10, 11, 7, 3, 6, 5, 4, 14, 15, 1, 8, 0, 15, 3, 2, 5, 14, 11, 1, 10, 4, 7, 12, 9, 13, 6, 3, 0, 6, 15, 1, 14, 9, 2, 13, 8, 12, 4, 11, 10, 5, 7, 1, 10, 6, 8, 15, 11, 0, 4, 12, 3, 5, 9, 7, 13, 2, 14};

    /* renamed from: catch, reason: not valid java name */
    private static byte[] f3897catch = {12, 4, 6, 2, 10, 5, 11, 9, 14, 8, 13, 7, 0, 3, 15, 1, 6, 8, 2, 3, 9, 10, 5, 12, 1, 14, 4, 7, 11, 13, 0, 15, 11, 3, 5, 8, 2, 15, 10, 13, 14, 1, 7, 4, 12, 9, 6, 0, 12, 8, 2, 1, 13, 4, 15, 6, 7, 0, 10, 5, 3, 14, 9, 11, 7, 15, 5, 10, 8, 1, 6, 13, 0, 9, 3, 14, 11, 4, 2, 12, 5, 13, 15, 6, 9, 2, 12, 10, 11, 7, 8, 1, 4, 3, 14, 0, 8, 14, 2, 5, 6, 9, 1, 12, 15, 4, 11, 0, 13, 10, 3, 7, 1, 7, 14, 13, 0, 5, 8, 3, 4, 15, 10, 6, 9, 12, 11, 2};

    /* renamed from: class, reason: not valid java name */
    private static byte[] f3898class = {4, 10, 9, 2, 13, 8, 0, 14, 6, 11, 1, 12, 7, 15, 5, 3, 14, 11, 4, 12, 6, 13, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, 13, 10, 3, 4, 2, 14, 15, 12, 7, 6, 0, 9, 11, 7, 13, 10, 1, 0, 8, 9, 15, 14, 4, 6, 12, 11, 2, 5, 3, 6, 12, 7, 1, 5, 15, 13, 8, 4, 10, 9, 14, 0, 3, 11, 2, 4, 11, 10, 0, 7, 2, 1, 13, 3, 6, 8, 5, 9, 12, 15, 14, 13, 11, 4, 1, 3, 15, 5, 9, 0, 10, 14, 7, 6, 8, 2, 12, 1, 15, 13, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, 11, 8, 12};

    /* renamed from: const, reason: not valid java name */
    private static byte[] f3899const = {10, 4, 5, 6, 8, 1, 3, 7, 13, 12, 14, 0, 9, 2, 11, 15, 5, 15, 4, 0, 2, 13, 11, 9, 1, 7, 6, 3, 12, 14, 10, 8, 7, 15, 12, 14, 9, 4, 1, 0, 3, 11, 5, 2, 6, 10, 8, 13, 4, 10, 7, 12, 0, 15, 2, 8, 14, 1, 6, 5, 13, 11, 9, 3, 7, 6, 4, 11, 9, 12, 2, 10, 1, 8, 0, 14, 15, 13, 3, 5, 7, 6, 2, 4, 13, 9, 15, 0, 10, 1, 5, 11, 8, 14, 12, 3, 13, 14, 4, 1, 7, 0, 5, 10, 3, 12, 8, 15, 6, 2, 9, 11, 1, 3, 10, 9, 5, 11, 4, 15, 8, 6, 7, 14, 13, 0, 2, 12};

    /* renamed from: final, reason: not valid java name */
    private static Hashtable f3901final = new Hashtable();

    static {
        m4919for("Default", f3905try);
        m4919for("E-TEST", f3896case);
        m4919for("E-A", f3900else);
        m4919for("E-B", f3902goto);
        m4919for("E-C", f3904this);
        m4919for("E-D", f3895break);
        m4919for("Param-Z", f3897catch);
        m4919for("D-TEST", f3898class);
        m4919for("D-A", f3899const);
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m4916case(String str) {
        byte[] bArr = (byte[]) f3901final.get(Cfor.m36356final(str));
        if (bArr != null) {
            return q3.m6371final(bArr);
        }
        throw new IllegalArgumentException("Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"Param-Z\", \"D-Test\", \"D-A\".");
    }

    /* renamed from: do, reason: not valid java name */
    private void m4917do(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4;
        int iM4922new = m4922new(bArr, i);
        int iM4922new2 = m4922new(bArr, i + 4);
        int i5 = 7;
        if (this.f3908if) {
            for (int i6 = 0; i6 < 3; i6++) {
                int i7 = 0;
                while (i7 < 8) {
                    int iM4921if = iM4922new2 ^ m4921if(iM4922new, iArr[i7]);
                    i7++;
                    int i8 = iM4922new;
                    iM4922new = iM4921if;
                    iM4922new2 = i8;
                }
            }
            i3 = iM4922new2;
            i4 = iM4922new;
            while (i5 > 0) {
                int iM4921if2 = i3 ^ m4921if(i4, iArr[i5]);
                i5--;
                i3 = i4;
                i4 = iM4921if2;
            }
        } else {
            int i9 = 0;
            while (i9 < 8) {
                int iM4921if3 = iM4922new2 ^ m4921if(iM4922new, iArr[i9]);
                i9++;
                int i10 = iM4922new;
                iM4922new = iM4921if3;
                iM4922new2 = i10;
            }
            i3 = iM4922new2;
            i4 = iM4922new;
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = 7;
                while (i12 >= 0 && (i11 != 2 || i12 != 0)) {
                    int iM4921if4 = i3 ^ m4921if(i4, iArr[i12]);
                    i12--;
                    i3 = i4;
                    i4 = iM4921if4;
                }
            }
        }
        int iM4921if5 = m4921if(i4, iArr[0]) ^ i3;
        m4920goto(i4, bArr2, i2);
        m4920goto(iM4921if5, bArr2, i2 + 4);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m4918else(byte[] bArr) {
        Enumeration enumerationKeys = f3901final.keys();
        while (enumerationKeys.hasMoreElements()) {
            String str = (String) enumerationKeys.nextElement();
            if (q3.m6362case((byte[]) f3901final.get(str), bArr)) {
                return str;
            }
        }
        throw new IllegalArgumentException("SBOX provided did not map to a known one");
    }

    /* renamed from: for, reason: not valid java name */
    private static void m4919for(String str, byte[] bArr) {
        f3901final.put(Cfor.m36356final(str), bArr);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m4920goto(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    /* renamed from: if, reason: not valid java name */
    private int m4921if(int i, int i2) {
        int i3 = i2 + i;
        byte[] bArr = this.f3907for;
        int i4 = (bArr[((i3 >> 0) & 15) + 0] << 0) + (bArr[((i3 >> 4) & 15) + 16] << 4) + (bArr[((i3 >> 8) & 15) + 32] << 8) + (bArr[((i3 >> 12) & 15) + 48] << 12) + (bArr[((i3 >> 16) & 15) + 64] << 16) + (bArr[((i3 >> 20) & 15) + 80] << t3.f6409throws) + (bArr[((i3 >> 24) & 15) + 96] << t3.f6397package) + (bArr[((i3 >> 28) & 15) + 112] << t3.f6403strictfp);
        return (i4 << 11) | (i4 >>> 21);
    }

    /* renamed from: new, reason: not valid java name */
    private int m4922new(byte[] bArr, int i) {
        return ((bArr[i + 3] << t3.f6397package) & (-16777216)) + ((bArr[i + 2] << 16) & ItemTouchHelper.ACTION_MODE_DRAG_MASK) + ((bArr[i + 1] << 8) & 65280) + (bArr[i] & 255);
    }

    /* renamed from: try, reason: not valid java name */
    private int[] m4923try(boolean z, byte[] bArr) {
        this.f3908if = z;
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] iArr = new int[8];
        for (int i = 0; i != 8; i++) {
            iArr[i] = m4922new(bArr, i * 4);
        }
        return iArr;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "GOST28147";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof dc1) {
            dc1 dc1Var = (dc1) cipherParameters;
            byte[] bArrM1263if = dc1Var.m1263if();
            if (bArrM1263if.length != f3905try.length) {
                throw new IllegalArgumentException("invalid S-box passed to GOST28147 init");
            }
            this.f3907for = q3.m6371final(bArrM1263if);
            if (dc1Var.m1262do() != null) {
                this.f3906do = m4923try(z, ((gr0) dc1Var.m1262do()).m2770do());
                return;
            }
            return;
        }
        if (cipherParameters instanceof gr0) {
            this.f3906do = m4923try(z, ((gr0) cipherParameters).m2770do());
        } else {
            if (cipherParameters == null) {
                return;
            }
            throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = this.f3906do;
        if (iArr == null) {
            throw new IllegalStateException("GOST28147 engine not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 8 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        m4917do(iArr, bArr, i, bArr2, i2);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
