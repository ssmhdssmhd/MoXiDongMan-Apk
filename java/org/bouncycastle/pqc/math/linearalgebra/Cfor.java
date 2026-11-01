package org.bouncycastle.pqc.math.linearalgebra;

import android.support.v4.fn0;
import android.support.v4.oa1;
import android.support.v4.q3;
import android.support.v4.t3;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.common.collect.Cprivate;
import com.google.common.primitives.Cconst;
import java.math.BigInteger;
import java.util.Random;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.pqc.crypto.newhope.Ccatch;
import org.bouncycastle.pqc.crypto.qtesla.Ctry;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private int f32629do;

    /* renamed from: for, reason: not valid java name */
    private int[] f32630for;

    /* renamed from: if, reason: not valid java name */
    private int f32631if;

    /* renamed from: new, reason: not valid java name */
    private static Random f32627new = new Random();

    /* renamed from: try, reason: not valid java name */
    private static final boolean[] f32628try = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: case, reason: not valid java name */
    private static final short[] f32624case = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, org.mozilla.classfile.Cfor.a, 257, 260, 261, 272, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, org.mozilla.classfile.Cfor.b, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, Cconst.f15498if, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845};

    /* renamed from: else, reason: not valid java name */
    private static final int[] f32625else = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, oa1.f4492abstract, 1073741824, Integer.MIN_VALUE, 0};

    /* renamed from: goto, reason: not valid java name */
    private static final int[] f32626goto = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535, 131071, Ccatch.f32239for, 524287, 1048575, 2097151, 4194303, Ctry.f32296abstract, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, Cprivate.f14515try, Integer.MAX_VALUE, -1};

    public Cfor(int i) {
        i = i < 1 ? 1 : i;
        int i2 = ((i - 1) >> 5) + 1;
        this.f32631if = i2;
        this.f32630for = new int[i2];
        this.f32629do = i;
    }

    public Cfor(int i, String str) {
        i = i < 1 ? 1 : i;
        int i2 = ((i - 1) >> 5) + 1;
        this.f32631if = i2;
        this.f32630for = new int[i2];
        this.f32629do = i;
        if (str.equalsIgnoreCase("ZERO")) {
            m36218case();
            return;
        }
        if (str.equalsIgnoreCase("ONE")) {
            m36234new();
            return;
        }
        if (str.equalsIgnoreCase("RANDOM")) {
            m36235package();
            return;
        }
        if (str.equalsIgnoreCase("X")) {
            m36244try();
            return;
        }
        if (str.equalsIgnoreCase("ALL")) {
            m36229for();
            return;
        }
        throw new IllegalArgumentException("Error: GF2Polynomial was called using " + str + " as value!");
    }

    public Cfor(int i, BigInteger bigInteger) {
        i = i < 1 ? 1 : i;
        int i2 = ((i - 1) >> 5) + 1;
        this.f32631if = i2;
        this.f32630for = new int[i2];
        this.f32629do = i;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            byteArray = bArr;
        }
        int length2 = byteArray.length & 3;
        int length3 = ((byteArray.length - 1) >> 2) + 1;
        for (int i3 = 0; i3 < length2; i3++) {
            int[] iArr = this.f32630for;
            int i4 = length3 - 1;
            iArr[i4] = iArr[i4] | ((byteArray[i3] & 255) << (((length2 - 1) - i3) << 3));
        }
        for (int i5 = 0; i5 <= ((byteArray.length - 4) >> 2); i5++) {
            int length4 = (byteArray.length - 1) - (i5 << 2);
            int[] iArr2 = this.f32630for;
            iArr2[i5] = byteArray[length4] & 255;
            iArr2[i5] = iArr2[i5] | ((byteArray[length4 - 1] << 8) & 65280);
            iArr2[i5] = iArr2[i5] | ((byteArray[length4 - 2] << 16) & ItemTouchHelper.ACTION_MODE_DRAG_MASK);
            iArr2[i5] = ((byteArray[length4 - 3] << t3.f6397package) & (-16777216)) | iArr2[i5];
        }
        int i6 = this.f32629do;
        if ((i6 & 31) != 0) {
            int[] iArr3 = this.f32630for;
            int i7 = this.f32631if - 1;
            iArr3[i7] = f32626goto[i6 & 31] & iArr3[i7];
        }
        m36216abstract();
    }

    public Cfor(int i, Random random) {
        i = i < 1 ? 1 : i;
        int i2 = ((i - 1) >> 5) + 1;
        this.f32631if = i2;
        this.f32630for = new int[i2];
        this.f32629do = i;
        m36236private(random);
    }

    public Cfor(int i, byte[] bArr) {
        int i2;
        i = i < 1 ? 1 : i;
        int i3 = ((i - 1) >> 5) + 1;
        this.f32631if = i3;
        this.f32630for = new int[i3];
        this.f32629do = i;
        int iMin = Math.min(((bArr.length - 1) >> 2) + 1, i3);
        int i4 = 0;
        while (true) {
            i2 = iMin - 1;
            if (i4 >= i2) {
                break;
            }
            int length = (bArr.length - (i4 << 2)) - 1;
            int[] iArr = this.f32630for;
            iArr[i4] = bArr[length] & 255;
            iArr[i4] = (65280 & (bArr[length - 1] << 8)) | iArr[i4];
            iArr[i4] = (16711680 & (bArr[length - 2] << 16)) | iArr[i4];
            iArr[i4] = ((bArr[length - 3] << t3.f6397package) & (-16777216)) | iArr[i4];
            i4++;
        }
        int length2 = (bArr.length - (i2 << 2)) - 1;
        int[] iArr2 = this.f32630for;
        iArr2[i2] = bArr[length2] & 255;
        if (length2 > 0) {
            iArr2[i2] = (65280 & (bArr[length2 - 1] << 8)) | iArr2[i2];
        }
        if (length2 > 1) {
            iArr2[i2] = iArr2[i2] | (16711680 & (bArr[length2 - 2] << 16));
        }
        if (length2 > 2) {
            iArr2[i2] = ((bArr[length2 - 3] << t3.f6397package) & (-16777216)) | iArr2[i2];
        }
        r();
        m36216abstract();
    }

    public Cfor(int i, int[] iArr) {
        i = i < 1 ? 1 : i;
        int i2 = ((i - 1) >> 5) + 1;
        this.f32631if = i2;
        this.f32630for = new int[i2];
        this.f32629do = i;
        System.arraycopy(iArr, 0, this.f32630for, 0, Math.min(i2, iArr.length));
        r();
    }

    public Cfor(Cfor cfor) {
        this.f32629do = cfor.f32629do;
        this.f32631if = cfor.f32631if;
        this.f32630for = fn0.m2358do(cfor.f32630for);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m36208goto(int i) {
        int i2 = this.f32631if;
        int[] iArr = this.f32630for;
        if (i2 > iArr.length) {
            int[] iArr2 = new int[i2];
            System.arraycopy(iArr, 0, iArr2, i, i2 - i);
            this.f32630for = null;
            this.f32630for = iArr2;
            return;
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            int[] iArr3 = this.f32630for;
            iArr3[i3] = iArr3[i3 - i];
        }
        for (int i4 = 0; i4 < i; i4++) {
            this.f32630for[i4] = 0;
        }
    }

    /* renamed from: import, reason: not valid java name */
    private Cfor m36209import(Cfor cfor) {
        Cfor cfor2 = new Cfor(this.f32629do << 1);
        int i = this.f32629do;
        if (i <= 32) {
            cfor2.f32630for = m36213static(this.f32630for[0], cfor.f32630for[0]);
            return cfor2;
        }
        if (i <= 64) {
            cfor2.f32630for = m36215throws(this.f32630for, cfor.f32630for);
            return cfor2;
        }
        if (i <= 128) {
            cfor2.f32630for = m36211public(this.f32630for, cfor.f32630for);
            return cfor2;
        }
        if (i <= 256) {
            cfor2.f32630for = m36212return(this.f32630for, cfor.f32630for);
            return cfor2;
        }
        if (i <= 512) {
            cfor2.f32630for = m36214switch(this.f32630for, cfor.f32630for);
            return cfor2;
        }
        int i2 = f32625else[Ccatch.m36154class(i - 1)];
        int i3 = ((i2 - 1) >> 5) + 1;
        Cfor cforM36210native = m36210native(i3);
        Cfor cforM = m(i3);
        Cfor cforM36210native2 = cfor.m36210native(i3);
        Cfor cforM2 = cfor.m(i3);
        Cfor cforM36209import = cforM.m36209import(cforM2);
        Cfor cforM36209import2 = cforM36210native.m36209import(cforM36210native2);
        cforM36210native.m36230if(cforM);
        cforM36210native2.m36230if(cforM2);
        Cfor cforM36209import3 = cforM36210native.m36209import(cforM36210native2);
        cfor2.m36240synchronized(cforM36209import, i2 << 1);
        cfor2.m36240synchronized(cforM36209import, i2);
        cfor2.m36240synchronized(cforM36209import3, i2);
        cfor2.m36240synchronized(cforM36209import2, i2);
        cfor2.m36230if(cforM36209import2);
        return cfor2;
    }

    private Cfor m(int i) {
        int iMin = Math.min(i, this.f32631if - i);
        Cfor cfor = new Cfor(iMin << 5);
        if (this.f32631if >= i) {
            System.arraycopy(this.f32630for, i, cfor.f32630for, 0, iMin);
        }
        return cfor;
    }

    /* renamed from: native, reason: not valid java name */
    private Cfor m36210native(int i) {
        Cfor cfor = new Cfor(i << 5);
        System.arraycopy(this.f32630for, 0, cfor.f32630for, 0, Math.min(i, this.f32631if));
        return cfor;
    }

    /* renamed from: public, reason: not valid java name */
    private static int[] m36211public(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[8];
        int[] iArr4 = new int[2];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(2, iArr.length));
        int[] iArr5 = new int[2];
        if (iArr.length > 2) {
            System.arraycopy(iArr, 2, iArr5, 0, Math.min(2, iArr.length - 2));
        }
        int[] iArr6 = new int[2];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(2, iArr2.length));
        int[] iArr7 = new int[2];
        if (iArr2.length > 2) {
            System.arraycopy(iArr2, 2, iArr7, 0, Math.min(2, iArr2.length - 2));
        }
        if (iArr5[1] != 0 || iArr7[1] != 0) {
            int[] iArrM36215throws = m36215throws(iArr5, iArr7);
            iArr3[7] = iArr3[7] ^ iArrM36215throws[3];
            iArr3[6] = iArr3[6] ^ iArrM36215throws[2];
            iArr3[5] = iArr3[5] ^ (iArrM36215throws[1] ^ iArrM36215throws[3]);
            iArr3[4] = iArr3[4] ^ (iArrM36215throws[0] ^ iArrM36215throws[2]);
            iArr3[3] = iArr3[3] ^ iArrM36215throws[1];
            iArr3[2] = iArrM36215throws[0] ^ iArr3[2];
        } else if (iArr5[0] != 0 || iArr7[0] != 0) {
            int[] iArrM36213static = m36213static(iArr5[0], iArr7[0]);
            iArr3[5] = iArr3[5] ^ iArrM36213static[1];
            iArr3[4] = iArr3[4] ^ iArrM36213static[0];
            iArr3[3] = iArr3[3] ^ iArrM36213static[1];
            iArr3[2] = iArrM36213static[0] ^ iArr3[2];
        }
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        if (iArr5[1] == 0 && iArr7[1] == 0) {
            int[] iArrM36213static2 = m36213static(iArr5[0], iArr7[0]);
            iArr3[3] = iArr3[3] ^ iArrM36213static2[1];
            iArr3[2] = iArrM36213static2[0] ^ iArr3[2];
        } else {
            int[] iArrM36215throws2 = m36215throws(iArr5, iArr7);
            iArr3[5] = iArr3[5] ^ iArrM36215throws2[3];
            iArr3[4] = iArr3[4] ^ iArrM36215throws2[2];
            iArr3[3] = iArr3[3] ^ iArrM36215throws2[1];
            iArr3[2] = iArrM36215throws2[0] ^ iArr3[2];
        }
        if (iArr4[1] == 0 && iArr6[1] == 0) {
            int[] iArrM36213static3 = m36213static(iArr4[0], iArr6[0]);
            iArr3[3] = iArr3[3] ^ iArrM36213static3[1];
            iArr3[2] = iArr3[2] ^ iArrM36213static3[0];
            iArr3[1] = iArr3[1] ^ iArrM36213static3[1];
            iArr3[0] = iArrM36213static3[0] ^ iArr3[0];
        } else {
            int[] iArrM36215throws3 = m36215throws(iArr4, iArr6);
            iArr3[5] = iArr3[5] ^ iArrM36215throws3[3];
            iArr3[4] = iArr3[4] ^ iArrM36215throws3[2];
            iArr3[3] = iArr3[3] ^ (iArrM36215throws3[1] ^ iArrM36215throws3[3]);
            iArr3[2] = iArr3[2] ^ (iArrM36215throws3[0] ^ iArrM36215throws3[2]);
            iArr3[1] = iArr3[1] ^ iArrM36215throws3[1];
            iArr3[0] = iArrM36215throws3[0] ^ iArr3[0];
        }
        return iArr3;
    }

    private void r() {
        int i = this.f32629do;
        if ((i & 31) != 0) {
            int[] iArr = this.f32630for;
            int i2 = this.f32631if - 1;
            iArr[i2] = f32626goto[i & 31] & iArr[i2];
        }
    }

    /* renamed from: return, reason: not valid java name */
    private static int[] m36212return(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[4];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(4, iArr.length));
        int[] iArr5 = new int[4];
        if (iArr.length > 4) {
            System.arraycopy(iArr, 4, iArr5, 0, Math.min(4, iArr.length - 4));
        }
        int[] iArr6 = new int[4];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(4, iArr2.length));
        int[] iArr7 = new int[4];
        if (iArr2.length > 4) {
            System.arraycopy(iArr2, 4, iArr7, 0, Math.min(4, iArr2.length - 4));
        }
        if (iArr5[3] != 0 || iArr5[2] != 0 || iArr7[3] != 0 || iArr7[2] != 0) {
            int[] iArrM36211public = m36211public(iArr5, iArr7);
            iArr3[15] = iArr3[15] ^ iArrM36211public[7];
            iArr3[14] = iArr3[14] ^ iArrM36211public[6];
            iArr3[13] = iArr3[13] ^ iArrM36211public[5];
            iArr3[12] = iArr3[12] ^ iArrM36211public[4];
            iArr3[11] = iArr3[11] ^ (iArrM36211public[3] ^ iArrM36211public[7]);
            iArr3[10] = iArr3[10] ^ (iArrM36211public[2] ^ iArrM36211public[6]);
            iArr3[9] = iArr3[9] ^ (iArrM36211public[1] ^ iArrM36211public[5]);
            iArr3[8] = iArr3[8] ^ (iArrM36211public[0] ^ iArrM36211public[4]);
            iArr3[7] = iArr3[7] ^ iArrM36211public[3];
            iArr3[6] = iArr3[6] ^ iArrM36211public[2];
            iArr3[5] = iArr3[5] ^ iArrM36211public[1];
            iArr3[4] = iArrM36211public[0] ^ iArr3[4];
        } else if (iArr5[1] != 0 || iArr7[1] != 0) {
            int[] iArrM36215throws = m36215throws(iArr5, iArr7);
            iArr3[11] = iArr3[11] ^ iArrM36215throws[3];
            iArr3[10] = iArr3[10] ^ iArrM36215throws[2];
            iArr3[9] = iArr3[9] ^ iArrM36215throws[1];
            iArr3[8] = iArr3[8] ^ iArrM36215throws[0];
            iArr3[7] = iArr3[7] ^ iArrM36215throws[3];
            iArr3[6] = iArr3[6] ^ iArrM36215throws[2];
            iArr3[5] = iArr3[5] ^ iArrM36215throws[1];
            iArr3[4] = iArrM36215throws[0] ^ iArr3[4];
        } else if (iArr5[0] != 0 || iArr7[0] != 0) {
            int[] iArrM36213static = m36213static(iArr5[0], iArr7[0]);
            iArr3[9] = iArr3[9] ^ iArrM36213static[1];
            iArr3[8] = iArr3[8] ^ iArrM36213static[0];
            iArr3[5] = iArr3[5] ^ iArrM36213static[1];
            iArr3[4] = iArrM36213static[0] ^ iArr3[4];
        }
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr5[2] = iArr5[2] ^ iArr4[2];
        iArr5[3] = iArr5[3] ^ iArr4[3];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        iArr7[2] = iArr7[2] ^ iArr6[2];
        iArr7[3] = iArr7[3] ^ iArr6[3];
        int[] iArrM36211public2 = m36211public(iArr5, iArr7);
        iArr3[11] = iArr3[11] ^ iArrM36211public2[7];
        iArr3[10] = iArr3[10] ^ iArrM36211public2[6];
        iArr3[9] = iArr3[9] ^ iArrM36211public2[5];
        iArr3[8] = iArr3[8] ^ iArrM36211public2[4];
        iArr3[7] = iArr3[7] ^ iArrM36211public2[3];
        iArr3[6] = iArr3[6] ^ iArrM36211public2[2];
        iArr3[5] = iArr3[5] ^ iArrM36211public2[1];
        iArr3[4] = iArrM36211public2[0] ^ iArr3[4];
        int[] iArrM36211public3 = m36211public(iArr4, iArr6);
        iArr3[11] = iArr3[11] ^ iArrM36211public3[7];
        iArr3[10] = iArr3[10] ^ iArrM36211public3[6];
        iArr3[9] = iArr3[9] ^ iArrM36211public3[5];
        iArr3[8] = iArr3[8] ^ iArrM36211public3[4];
        iArr3[7] = iArr3[7] ^ (iArrM36211public3[3] ^ iArrM36211public3[7]);
        iArr3[6] = iArr3[6] ^ (iArrM36211public3[2] ^ iArrM36211public3[6]);
        iArr3[5] = iArr3[5] ^ (iArrM36211public3[1] ^ iArrM36211public3[5]);
        iArr3[4] = iArr3[4] ^ (iArrM36211public3[0] ^ iArrM36211public3[4]);
        iArr3[3] = iArr3[3] ^ iArrM36211public3[3];
        iArr3[2] = iArr3[2] ^ iArrM36211public3[2];
        iArr3[1] = iArr3[1] ^ iArrM36211public3[1];
        iArr3[0] = iArrM36211public3[0] ^ iArr3[0];
        return iArr3;
    }

    /* renamed from: static, reason: not valid java name */
    private static int[] m36213static(int i, int i2) {
        int[] iArr = new int[2];
        if (i != 0 && i2 != 0) {
            long j = i2 & 4294967295L;
            long j2 = 0;
            for (int i3 = 1; i3 <= 32; i3++) {
                if ((f32625else[i3 - 1] & i) != 0) {
                    j2 ^= j;
                }
                j <<= 1;
            }
            iArr[1] = (int) (j2 >>> 32);
            iArr[0] = (int) (j2 & 4294967295L);
        }
        return iArr;
    }

    /* renamed from: switch, reason: not valid java name */
    private static int[] m36214switch(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[32];
        int[] iArr4 = new int[8];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(8, iArr.length));
        int[] iArr5 = new int[8];
        if (iArr.length > 8) {
            System.arraycopy(iArr, 8, iArr5, 0, Math.min(8, iArr.length - 8));
        }
        int[] iArr6 = new int[8];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(8, iArr2.length));
        int[] iArr7 = new int[8];
        if (iArr2.length > 8) {
            System.arraycopy(iArr2, 8, iArr7, 0, Math.min(8, iArr2.length - 8));
        }
        int[] iArrM36212return = m36212return(iArr5, iArr7);
        iArr3[31] = iArr3[31] ^ iArrM36212return[15];
        iArr3[30] = iArr3[30] ^ iArrM36212return[14];
        iArr3[29] = iArr3[29] ^ iArrM36212return[13];
        iArr3[28] = iArr3[28] ^ iArrM36212return[12];
        iArr3[27] = iArr3[27] ^ iArrM36212return[11];
        iArr3[26] = iArr3[26] ^ iArrM36212return[10];
        iArr3[25] = iArr3[25] ^ iArrM36212return[9];
        iArr3[24] = iArr3[24] ^ iArrM36212return[8];
        iArr3[23] = iArr3[23] ^ (iArrM36212return[7] ^ iArrM36212return[15]);
        iArr3[22] = iArr3[22] ^ (iArrM36212return[6] ^ iArrM36212return[14]);
        iArr3[21] = iArr3[21] ^ (iArrM36212return[5] ^ iArrM36212return[13]);
        iArr3[20] = iArr3[20] ^ (iArrM36212return[4] ^ iArrM36212return[12]);
        iArr3[19] = iArr3[19] ^ (iArrM36212return[3] ^ iArrM36212return[11]);
        iArr3[18] = iArr3[18] ^ (iArrM36212return[2] ^ iArrM36212return[10]);
        iArr3[17] = iArr3[17] ^ (iArrM36212return[1] ^ iArrM36212return[9]);
        iArr3[16] = iArr3[16] ^ (iArrM36212return[0] ^ iArrM36212return[8]);
        iArr3[15] = iArr3[15] ^ iArrM36212return[7];
        iArr3[14] = iArr3[14] ^ iArrM36212return[6];
        iArr3[13] = iArr3[13] ^ iArrM36212return[5];
        iArr3[12] = iArr3[12] ^ iArrM36212return[4];
        iArr3[11] = iArr3[11] ^ iArrM36212return[3];
        iArr3[10] = iArr3[10] ^ iArrM36212return[2];
        iArr3[9] = iArr3[9] ^ iArrM36212return[1];
        iArr3[8] = iArr3[8] ^ iArrM36212return[0];
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr5[2] = iArr5[2] ^ iArr4[2];
        iArr5[3] = iArr5[3] ^ iArr4[3];
        iArr5[4] = iArr5[4] ^ iArr4[4];
        iArr5[5] = iArr5[5] ^ iArr4[5];
        iArr5[6] = iArr5[6] ^ iArr4[6];
        iArr5[7] = iArr5[7] ^ iArr4[7];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        iArr7[2] = iArr7[2] ^ iArr6[2];
        iArr7[3] = iArr7[3] ^ iArr6[3];
        iArr7[4] = iArr7[4] ^ iArr6[4];
        iArr7[5] = iArr7[5] ^ iArr6[5];
        iArr7[6] = iArr7[6] ^ iArr6[6];
        iArr7[7] = iArr7[7] ^ iArr6[7];
        int[] iArrM36212return2 = m36212return(iArr5, iArr7);
        iArr3[23] = iArr3[23] ^ iArrM36212return2[15];
        iArr3[22] = iArr3[22] ^ iArrM36212return2[14];
        iArr3[21] = iArr3[21] ^ iArrM36212return2[13];
        iArr3[20] = iArr3[20] ^ iArrM36212return2[12];
        iArr3[19] = iArr3[19] ^ iArrM36212return2[11];
        iArr3[18] = iArr3[18] ^ iArrM36212return2[10];
        iArr3[17] = iArr3[17] ^ iArrM36212return2[9];
        iArr3[16] = iArr3[16] ^ iArrM36212return2[8];
        iArr3[15] = iArr3[15] ^ iArrM36212return2[7];
        iArr3[14] = iArr3[14] ^ iArrM36212return2[6];
        iArr3[13] = iArr3[13] ^ iArrM36212return2[5];
        iArr3[12] = iArr3[12] ^ iArrM36212return2[4];
        iArr3[11] = iArr3[11] ^ iArrM36212return2[3];
        iArr3[10] = iArr3[10] ^ iArrM36212return2[2];
        iArr3[9] = iArr3[9] ^ iArrM36212return2[1];
        iArr3[8] = iArrM36212return2[0] ^ iArr3[8];
        int[] iArrM36212return3 = m36212return(iArr4, iArr6);
        iArr3[23] = iArr3[23] ^ iArrM36212return3[15];
        iArr3[22] = iArr3[22] ^ iArrM36212return3[14];
        iArr3[21] = iArr3[21] ^ iArrM36212return3[13];
        iArr3[20] = iArr3[20] ^ iArrM36212return3[12];
        iArr3[19] = iArr3[19] ^ iArrM36212return3[11];
        iArr3[18] = iArr3[18] ^ iArrM36212return3[10];
        iArr3[17] = iArr3[17] ^ iArrM36212return3[9];
        iArr3[16] = iArr3[16] ^ iArrM36212return3[8];
        iArr3[15] = iArr3[15] ^ (iArrM36212return3[7] ^ iArrM36212return3[15]);
        iArr3[14] = iArr3[14] ^ (iArrM36212return3[6] ^ iArrM36212return3[14]);
        iArr3[13] = iArr3[13] ^ (iArrM36212return3[5] ^ iArrM36212return3[13]);
        iArr3[12] = iArr3[12] ^ (iArrM36212return3[4] ^ iArrM36212return3[12]);
        iArr3[11] = iArr3[11] ^ (iArrM36212return3[3] ^ iArrM36212return3[11]);
        iArr3[10] = iArr3[10] ^ (iArrM36212return3[2] ^ iArrM36212return3[10]);
        iArr3[9] = iArr3[9] ^ (iArrM36212return3[1] ^ iArrM36212return3[9]);
        iArr3[8] = iArr3[8] ^ (iArrM36212return3[0] ^ iArrM36212return3[8]);
        iArr3[7] = iArr3[7] ^ iArrM36212return3[7];
        iArr3[6] = iArr3[6] ^ iArrM36212return3[6];
        iArr3[5] = iArr3[5] ^ iArrM36212return3[5];
        iArr3[4] = iArr3[4] ^ iArrM36212return3[4];
        iArr3[3] = iArr3[3] ^ iArrM36212return3[3];
        iArr3[2] = iArr3[2] ^ iArrM36212return3[2];
        iArr3[1] = iArr3[1] ^ iArrM36212return3[1];
        iArr3[0] = iArrM36212return3[0] ^ iArr3[0];
        return iArr3;
    }

    /* renamed from: throws, reason: not valid java name */
    private static int[] m36215throws(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[4];
        int i = iArr[0];
        int i2 = iArr.length > 1 ? iArr[1] : 0;
        int i3 = iArr2[0];
        int i4 = iArr2.length > 1 ? iArr2[1] : 0;
        if (i2 != 0 || i4 != 0) {
            int[] iArrM36213static = m36213static(i2, i4);
            iArr3[3] = iArr3[3] ^ iArrM36213static[1];
            iArr3[2] = iArr3[2] ^ (iArrM36213static[0] ^ iArrM36213static[1]);
            iArr3[1] = iArrM36213static[0] ^ iArr3[1];
        }
        int[] iArrM36213static2 = m36213static(i2 ^ i, i4 ^ i3);
        iArr3[2] = iArr3[2] ^ iArrM36213static2[1];
        iArr3[1] = iArrM36213static2[0] ^ iArr3[1];
        int[] iArrM36213static3 = m36213static(i, i3);
        iArr3[2] = iArr3[2] ^ iArrM36213static3[1];
        iArr3[1] = iArr3[1] ^ (iArrM36213static3[0] ^ iArrM36213static3[1]);
        iArr3[0] = iArrM36213static3[0] ^ iArr3[0];
        return iArr3;
    }

    public void a() {
        int i = this.f32629do;
        int i2 = i & 31;
        this.f32629do = i + 1;
        int i3 = this.f32631if;
        if (i2 != 0) {
            for (int i4 = i3 - 1; i4 >= 1; i4--) {
                int[] iArr = this.f32630for;
                iArr[i4] = iArr[i4] << 1;
                iArr[i4] = iArr[i4] | (iArr[i4 - 1] >>> 31);
            }
            int[] iArr2 = this.f32630for;
            iArr2[0] = iArr2[0] << 1;
            return;
        }
        int i5 = i3 + 1;
        this.f32631if = i5;
        int[] iArr3 = this.f32630for;
        if (i5 > iArr3.length) {
            int[] iArr4 = new int[i5];
            System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            this.f32630for = null;
            this.f32630for = iArr4;
        }
        for (int i6 = this.f32631if - 1; i6 >= 1; i6--) {
            int[] iArr5 = this.f32630for;
            int i7 = i6 - 1;
            iArr5[i6] = iArr5[i6] | (iArr5[i7] >>> 31);
            iArr5[i7] = iArr5[i7] << 1;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m36216abstract() {
        int[] iArr;
        int i = this.f32631if;
        do {
            i--;
            iArr = this.f32630for;
            if (iArr[i] != 0) {
                break;
            }
        } while (i > 0);
        int i2 = iArr[i];
        int i3 = 0;
        while (i2 != 0) {
            i2 >>>= 1;
            i3++;
        }
        this.f32629do = (i << 5) + i3;
        this.f32631if = i + 1;
    }

    public Cfor b() {
        int i;
        Cfor cfor = new Cfor(this.f32629do - 1);
        int i2 = 0;
        System.arraycopy(this.f32630for, 0, cfor.f32630for, 0, cfor.f32631if);
        while (true) {
            i = cfor.f32631if;
            if (i2 > i - 2) {
                break;
            }
            int[] iArr = cfor.f32630for;
            iArr[i2] = iArr[i2] >>> 1;
            int i3 = i2 + 1;
            iArr[i2] = iArr[i2] | (iArr[i3] << 31);
            i2 = i3;
        }
        int[] iArr2 = cfor.f32630for;
        int i4 = i - 1;
        iArr2[i4] = iArr2[i4] >>> 1;
        if (i < this.f32631if) {
            int i5 = i - 1;
            iArr2[i5] = (this.f32630for[i] << 31) | iArr2[i5];
        }
        return cfor;
    }

    /* renamed from: break, reason: not valid java name */
    public Cfor m36217break(Cfor cfor) throws RuntimeException {
        if (m36246while() && cfor.m36246while()) {
            throw new ArithmeticException("Both operands of gcd equal zero.");
        }
        if (m36246while()) {
            return new Cfor(cfor);
        }
        if (cfor.m36246while()) {
            return new Cfor(this);
        }
        Cfor cfor2 = new Cfor(this);
        Cfor cfor3 = new Cfor(cfor);
        Cfor cfor4 = cfor2;
        Cfor cforM36245volatile = cfor3;
        while (!cforM36245volatile.m36246while()) {
            Cfor cfor5 = cforM36245volatile;
            cforM36245volatile = cfor4.m36245volatile(cforM36245volatile);
            cfor4 = cfor5;
        }
        return cfor4;
    }

    public void c() {
        int i;
        int i2 = this.f32629do - 1;
        this.f32629do = i2;
        this.f32631if = ((i2 - 1) >>> 5) + 1;
        int i3 = 0;
        while (true) {
            i = this.f32631if;
            if (i3 > i - 2) {
                break;
            }
            int[] iArr = this.f32630for;
            iArr[i3] = iArr[i3] >>> 1;
            int i4 = i3 + 1;
            iArr[i3] = iArr[i3] | (iArr[i4] << 31);
            i3 = i4;
        }
        int[] iArr2 = this.f32630for;
        int i5 = i - 1;
        iArr2[i5] = iArr2[i5] >>> 1;
        if ((this.f32629do & 31) == 0) {
            int i6 = i - 1;
            iArr2[i6] = (iArr2[i] << 31) | iArr2[i6];
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m36218case() {
        for (int i = 0; i < this.f32631if; i++) {
            this.f32630for[i] = 0;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public int m36219catch(int i) {
        if (i < 0) {
            throw new RuntimeException();
        }
        if (i > this.f32629do - 1) {
            return 0;
        }
        return (f32625else[i & 31] & this.f32630for[i >>> 5]) != 0 ? 1 : 0;
    }

    /* renamed from: class, reason: not valid java name */
    public int m36220class() {
        return this.f32629do;
    }

    public Object clone() {
        return new Cfor(this);
    }

    /* renamed from: const, reason: not valid java name */
    public Cfor m36221const() throws RuntimeException {
        Cfor cfor = new Cfor(this);
        cfor.m36227final();
        return cfor;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m36222continue(int i, int[] iArr) {
        Cfor cfor = this;
        int i2 = i >>> 5;
        int i3 = i & 31;
        int i4 = 32 - i3;
        int i5 = (i - iArr[0]) >>> 5;
        int i6 = 32 - ((i - iArr[0]) & 31);
        int i7 = (i - iArr[1]) >>> 5;
        int i8 = 32 - ((i - iArr[1]) & 31);
        int i9 = (i - iArr[2]) >>> 5;
        int i10 = 32 - ((i - iArr[2]) & 31);
        int i11 = ((i << 1) - 2) >>> 5;
        while (i11 > i2) {
            int[] iArr2 = cfor.f32630for;
            long j = iArr2[i11] & 4294967295L;
            int i12 = i11 - i2;
            int i13 = i12 - 1;
            int i14 = i2;
            int i15 = i3;
            iArr2[i13] = iArr2[i13] ^ ((int) (j << i4));
            iArr2[i12] = (int) (iArr2[i12] ^ (j >>> (32 - i4)));
            int i16 = i11 - i5;
            int i17 = i16 - 1;
            iArr2[i17] = iArr2[i17] ^ ((int) (j << i6));
            iArr2[i16] = (int) (iArr2[i16] ^ (j >>> (32 - i6)));
            int i18 = i11 - i7;
            int i19 = i18 - 1;
            iArr2[i19] = iArr2[i19] ^ ((int) (j << i8));
            iArr2[i18] = (int) (iArr2[i18] ^ (j >>> (32 - i8)));
            int i20 = i11 - i9;
            int i21 = i20 - 1;
            iArr2[i21] = iArr2[i21] ^ ((int) (j << i10));
            iArr2[i20] = (int) ((j >>> (32 - i10)) ^ iArr2[i20]);
            iArr2[i11] = 0;
            i11--;
            cfor = this;
            i2 = i14;
            i3 = i15;
        }
        int i22 = i2;
        int i23 = i3;
        int[] iArr3 = cfor.f32630for;
        long j2 = iArr3[i22] & 4294967295L & (4294967295 << i23);
        iArr3[0] = (int) ((j2 >>> (32 - i4)) ^ iArr3[0]);
        int i24 = i22 - i5;
        int i25 = i24 - 1;
        if (i25 >= 0) {
            iArr3[i25] = iArr3[i25] ^ ((int) (j2 << i6));
        }
        iArr3[i24] = (int) (iArr3[i24] ^ (j2 >>> (32 - i6)));
        int i26 = i22 - i7;
        int i27 = i26 - 1;
        if (i27 >= 0) {
            iArr3[i27] = iArr3[i27] ^ ((int) (j2 << i8));
        }
        iArr3[i26] = (int) (iArr3[i26] ^ (j2 >>> (32 - i8)));
        int i28 = i22 - i9;
        int i29 = i28 - 1;
        if (i29 >= 0) {
            iArr3[i29] = iArr3[i29] ^ ((int) (j2 << i10));
        }
        iArr3[i28] = (int) ((j2 >>> (32 - i10)) ^ iArr3[i28]);
        iArr3[i22] = iArr3[i22] & f32626goto[i23];
        this.f32631if = ((i - 1) >>> 5) + 1;
        this.f32629do = i;
    }

    public void d() {
        if (m36246while()) {
            return;
        }
        int i = this.f32631if;
        int i2 = i << 1;
        int[] iArr = new int[i2];
        for (int i3 = i - 1; i3 >= 0; i3--) {
            int i4 = this.f32630for[i3];
            int i5 = 1;
            for (int i6 = 0; i6 < 16; i6++) {
                if ((i4 & 1) != 0) {
                    int i7 = i3 << 1;
                    iArr[i7] = iArr[i7] | i5;
                }
                if ((65536 & i4) != 0) {
                    int i8 = (i3 << 1) + 1;
                    iArr[i8] = iArr[i8] | i5;
                }
                i5 <<= 2;
                i4 >>>= 1;
            }
        }
        this.f32630for = null;
        this.f32630for = iArr;
        this.f32631if = i2;
        this.f32629do = (this.f32629do << 1) - 1;
    }

    /* renamed from: default, reason: not valid java name */
    public Cfor m36223default(Cfor cfor) {
        int iMax = Math.max(this.f32629do, cfor.f32629do);
        m36241this(iMax);
        cfor.m36241this(iMax);
        return m36209import(cfor);
    }

    /* renamed from: do, reason: not valid java name */
    public Cfor m36224do(Cfor cfor) {
        return o(cfor);
    }

    public void e() {
        int i;
        int i2;
        if (m36246while()) {
            return;
        }
        int length = this.f32630for.length;
        int i3 = this.f32631if;
        if (length >= (i3 << 1)) {
            for (int i4 = i3 - 1; i4 >= 0; i4--) {
                int[] iArr = this.f32630for;
                int i5 = i4 << 1;
                short[] sArr = f32624case;
                iArr[i5 + 1] = sArr[(iArr[i4] & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >>> 16] | (sArr[(iArr[i4] & (-16777216)) >>> 24] << 16);
                iArr[i5] = sArr[iArr[i4] & 255] | (sArr[(iArr[i4] & 65280) >>> 8] << 16);
            }
            i2 = this.f32631if << 1;
        } else {
            int[] iArr2 = new int[i3 << 1];
            int i6 = 0;
            while (true) {
                i = this.f32631if;
                if (i6 >= i) {
                    break;
                }
                int i7 = i6 << 1;
                short[] sArr2 = f32624case;
                int[] iArr3 = this.f32630for;
                iArr2[i7] = sArr2[iArr3[i6] & 255] | (sArr2[(iArr3[i6] & 65280) >>> 8] << 16);
                iArr2[i7 + 1] = (sArr2[(iArr3[i6] & (-16777216)) >>> 24] << 16) | sArr2[(iArr3[i6] & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >>> 16];
                i6++;
            }
            this.f32630for = null;
            this.f32630for = iArr2;
            i2 = i << 1;
        }
        this.f32631if = i2;
        this.f32629do = (this.f32629do << 1) - 1;
    }

    /* renamed from: else, reason: not valid java name */
    public Cfor[] m36225else(Cfor cfor) throws RuntimeException {
        Cfor[] cforArr = new Cfor[2];
        Cfor cfor2 = new Cfor(this.f32629do);
        Cfor cfor3 = new Cfor(this);
        Cfor cfor4 = new Cfor(cfor);
        if (cfor4.m36246while()) {
            throw new RuntimeException();
        }
        cfor3.m36216abstract();
        cfor4.m36216abstract();
        int i = cfor3.f32629do;
        int i2 = cfor4.f32629do;
        if (i < i2) {
            cforArr[0] = new Cfor(0);
            cforArr[1] = cfor3;
            return cforArr;
        }
        int i3 = i - i2;
        cfor2.m36241this(i3 + 1);
        while (i3 >= 0) {
            cfor3.g(cfor4.m36232instanceof(i3));
            cfor3.m36216abstract();
            cfor2.p(i3);
            i3 = cfor3.f32629do - cfor4.f32629do;
        }
        cforArr[0] = cfor2;
        cforArr[1] = cfor3;
        return cforArr;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        if (this.f32629do != cfor.f32629do) {
            return false;
        }
        for (int i = 0; i < this.f32631if; i++) {
            if (this.f32630for[i] != cfor.f32630for[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: extends, reason: not valid java name */
    public Cfor m36226extends(Cfor cfor) {
        Cfor cfor2 = new Cfor(Math.max(this.f32629do, cfor.f32629do) << 1);
        Cfor[] cforArr = new Cfor[32];
        cforArr[0] = new Cfor(this);
        for (int i = 1; i <= 31; i++) {
            cforArr[i] = cforArr[i - 1].m36231implements();
        }
        for (int i2 = 0; i2 < cfor.f32631if; i2++) {
            for (int i3 = 0; i3 <= 31; i3++) {
                if ((cfor.f32630for[i2] & f32625else[i3]) != 0) {
                    cfor2.q(cforArr[i3]);
                }
            }
            for (int i4 = 0; i4 <= 31; i4++) {
                cforArr[i4].m36243transient();
            }
        }
        return cfor2;
    }

    public Cfor f(Cfor cfor) {
        return o(cfor);
    }

    /* renamed from: final, reason: not valid java name */
    public void m36227final() throws RuntimeException {
        p(0);
    }

    /* renamed from: finally, reason: not valid java name */
    public Cfor m36228finally(Cfor cfor) throws RuntimeException {
        Cfor cfor2 = new Cfor(this.f32629do);
        Cfor cfor3 = new Cfor(this);
        Cfor cfor4 = new Cfor(cfor);
        if (cfor4.m36246while()) {
            throw new RuntimeException();
        }
        cfor3.m36216abstract();
        cfor4.m36216abstract();
        int i = cfor3.f32629do;
        int i2 = cfor4.f32629do;
        if (i < i2) {
            return new Cfor(0);
        }
        int i3 = i - i2;
        cfor2.m36241this(i3 + 1);
        while (i3 >= 0) {
            cfor3.g(cfor4.m36232instanceof(i3));
            cfor3.m36216abstract();
            cfor2.p(i3);
            i3 = cfor3.f32629do - cfor4.f32629do;
        }
        return cfor2;
    }

    /* renamed from: for, reason: not valid java name */
    public void m36229for() {
        for (int i = 0; i < this.f32631if; i++) {
            this.f32630for[i] = -1;
        }
        r();
    }

    public void g(Cfor cfor) {
        m36241this(cfor.f32629do);
        q(cfor);
    }

    public boolean h(int i) {
        if (i < 0) {
            throw new RuntimeException();
        }
        if (i > this.f32629do - 1) {
            return false;
        }
        return (f32625else[i & 31] & this.f32630for[i >>> 5]) != 0;
    }

    public int hashCode() {
        return this.f32629do + q3.q(this.f32630for);
    }

    public byte[] i() {
        int i = ((this.f32629do - 1) >> 3) + 1;
        int i2 = i & 3;
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < (i >> 2); i3++) {
            int i4 = (i - (i3 << 2)) - 1;
            int[] iArr = this.f32630for;
            bArr[i4] = (byte) (255 & iArr[i3]);
            bArr[i4 - 1] = (byte) ((iArr[i3] & 65280) >>> 8);
            bArr[i4 - 2] = (byte) ((iArr[i3] & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >>> 16);
            bArr[i4 - 3] = (byte) ((iArr[i3] & (-16777216)) >>> 24);
        }
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = ((i2 - i5) - 1) << 3;
            bArr[i5] = (byte) ((this.f32630for[this.f32631if - 1] & (255 << i6)) >>> i6);
        }
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public void m36230if(Cfor cfor) {
        m36241this(cfor.f32629do);
        q(cfor);
    }

    /* renamed from: implements, reason: not valid java name */
    public Cfor m36231implements() {
        Cfor cfor = new Cfor(this.f32629do + 1, this.f32630for);
        for (int i = cfor.f32631if - 1; i >= 1; i--) {
            int[] iArr = cfor.f32630for;
            iArr[i] = iArr[i] << 1;
            iArr[i] = iArr[i] | (iArr[i - 1] >>> 31);
        }
        int[] iArr2 = cfor.f32630for;
        iArr2[0] = iArr2[0] << 1;
        return cfor;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public Cfor m36232instanceof(int i) {
        Cfor cfor = new Cfor(this.f32629do + i, this.f32630for);
        if (i >= 32) {
            cfor.m36208goto(i >>> 5);
        }
        int i2 = i & 31;
        if (i2 != 0) {
            for (int i3 = cfor.f32631if - 1; i3 >= 1; i3--) {
                int[] iArr = cfor.f32630for;
                iArr[i3] = iArr[i3] << i2;
                iArr[i3] = iArr[i3] | (iArr[i3 - 1] >>> (32 - i2));
            }
            int[] iArr2 = cfor.f32630for;
            iArr2[0] = iArr2[0] << i2;
        }
        return cfor;
    }

    /* renamed from: interface, reason: not valid java name */
    public void m36233interface(int i) throws RuntimeException {
        if (i < 0) {
            throw new RuntimeException();
        }
        if (i > this.f32629do - 1) {
            return;
        }
        int[] iArr = this.f32630for;
        int i2 = i >>> 5;
        iArr[i2] = (f32625else[i & 31] ^ (-1)) & iArr[i2];
    }

    public BigInteger j() {
        return (this.f32629do == 0 || m36246while()) ? new BigInteger(0, new byte[0]) : new BigInteger(1, i());
    }

    public int[] k() {
        int i = this.f32631if;
        int[] iArr = new int[i];
        System.arraycopy(this.f32630for, 0, iArr, 0, i);
        return iArr;
    }

    public String l(int i) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        String[] strArr = {"0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"};
        String str = new String();
        if (i == 16) {
            for (int i2 = this.f32631if - 1; i2 >= 0; i2--) {
                str = ((((((((str + cArr[(this.f32630for[i2] >>> 28) & 15]) + cArr[(this.f32630for[i2] >>> 24) & 15]) + cArr[(this.f32630for[i2] >>> 20) & 15]) + cArr[(this.f32630for[i2] >>> 16) & 15]) + cArr[(this.f32630for[i2] >>> 12) & 15]) + cArr[(this.f32630for[i2] >>> 8) & 15]) + cArr[(this.f32630for[i2] >>> 4) & 15]) + cArr[this.f32630for[i2] & 15]) + Cclass.f28652do;
            }
        } else {
            for (int i3 = this.f32631if - 1; i3 >= 0; i3--) {
                str = ((((((((str + strArr[(this.f32630for[i3] >>> 28) & 15]) + strArr[(this.f32630for[i3] >>> 24) & 15]) + strArr[(this.f32630for[i3] >>> 20) & 15]) + strArr[(this.f32630for[i3] >>> 16) & 15]) + strArr[(this.f32630for[i3] >>> 12) & 15]) + strArr[(this.f32630for[i3] >>> 8) & 15]) + strArr[(this.f32630for[i3] >>> 4) & 15]) + strArr[this.f32630for[i3] & 15]) + Cclass.f28652do;
            }
        }
        return str;
    }

    public boolean n(Cfor cfor) throws RuntimeException {
        if (this.f32629do != cfor.f32629do) {
            throw new RuntimeException();
        }
        boolean z = false;
        for (int i = 0; i < this.f32631if; i++) {
            int i2 = this.f32630for[i] & cfor.f32630for[i];
            boolean[] zArr = f32628try;
            z = (((z ^ zArr[i2 & 255]) ^ zArr[(i2 >>> 8) & 255]) ^ zArr[(i2 >>> 16) & 255]) ^ zArr[(i2 >>> 24) & 255];
        }
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    public void m36234new() {
        for (int i = 1; i < this.f32631if; i++) {
            this.f32630for[i] = 0;
        }
        this.f32630for[0] = 1;
    }

    public Cfor o(Cfor cfor) {
        Cfor cfor2;
        int iMin = Math.min(this.f32631if, cfor.f32631if);
        int i = 0;
        if (this.f32629do >= cfor.f32629do) {
            cfor2 = new Cfor(this);
            while (i < iMin) {
                int[] iArr = cfor2.f32630for;
                iArr[i] = iArr[i] ^ cfor.f32630for[i];
                i++;
            }
        } else {
            cfor2 = new Cfor(cfor);
            while (i < iMin) {
                int[] iArr2 = cfor2.f32630for;
                iArr2[i] = iArr2[i] ^ this.f32630for[i];
                i++;
            }
        }
        cfor2.r();
        return cfor2;
    }

    public void p(int i) throws RuntimeException {
        if (i < 0 || i > this.f32629do - 1) {
            throw new RuntimeException();
        }
        int[] iArr = this.f32630for;
        int i2 = i >>> 5;
        iArr[i2] = f32625else[i & 31] ^ iArr[i2];
    }

    /* renamed from: package, reason: not valid java name */
    public void m36235package() {
        for (int i = 0; i < this.f32631if; i++) {
            this.f32630for[i] = f32627new.nextInt();
        }
        r();
    }

    /* renamed from: private, reason: not valid java name */
    public void m36236private(Random random) {
        for (int i = 0; i < this.f32631if; i++) {
            this.f32630for[i] = random.nextInt();
        }
        r();
    }

    /* renamed from: protected, reason: not valid java name */
    public void m36237protected(int i) throws RuntimeException {
        if (i < 0 || i > this.f32629do - 1) {
            throw new RuntimeException();
        }
        int[] iArr = this.f32630for;
        int i2 = i >>> 5;
        iArr[i2] = f32625else[i & 31] | iArr[i2];
    }

    public void q(Cfor cfor) {
        for (int i = 0; i < Math.min(this.f32631if, cfor.f32631if); i++) {
            int[] iArr = this.f32630for;
            iArr[i] = iArr[i] ^ cfor.f32630for[i];
        }
        r();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m36238strictfp(int i, int i2) {
        int i3 = i >>> 5;
        int i4 = i & 31;
        int i5 = 32 - i4;
        int i6 = i - i2;
        int i7 = i6 >>> 5;
        int i8 = 32 - (i6 & 31);
        int i9 = ((i << 1) - 2) >>> 5;
        while (i9 > i3) {
            int[] iArr = this.f32630for;
            long j = 4294967295L & iArr[i9];
            int i10 = i9 - i3;
            int i11 = i10 - 1;
            int i12 = i3;
            iArr[i11] = iArr[i11] ^ ((int) (j << i5));
            iArr[i10] = (int) (iArr[i10] ^ (j >>> (32 - i5)));
            int i13 = i9 - i7;
            int i14 = i13 - 1;
            iArr[i14] = iArr[i14] ^ ((int) (j << i8));
            iArr[i13] = (int) ((j >>> (32 - i8)) ^ iArr[i13]);
            iArr[i9] = 0;
            i9--;
            i3 = i12;
        }
        int i15 = i3;
        int[] iArr2 = this.f32630for;
        long j2 = (4294967295 << i4) & iArr2[i15] & 4294967295L;
        iArr2[0] = (int) (iArr2[0] ^ (j2 >>> (32 - i5)));
        int i16 = i15 - i7;
        int i17 = i16 - 1;
        if (i17 >= 0) {
            iArr2[i17] = iArr2[i17] ^ ((int) (j2 << i8));
        }
        iArr2[i16] = (int) ((j2 >>> (32 - i8)) ^ iArr2[i16]);
        iArr2[i15] = iArr2[i15] & f32626goto[i4];
        this.f32631if = ((i - 1) >>> 5) + 1;
        this.f32629do = i;
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m36239super() throws RuntimeException {
        if (m36246while()) {
            return false;
        }
        Cfor cfor = new Cfor(this);
        cfor.m36216abstract();
        int i = cfor.f32629do;
        int i2 = i - 1;
        Cfor cfor2 = new Cfor(i, "X");
        for (int i3 = 1; i3 <= (i2 >> 1); i3++) {
            cfor2.e();
            cfor2 = cfor2.m36245volatile(cfor);
            Cfor cforM36224do = cfor2.m36224do(new Cfor(32, "X"));
            if (cforM36224do.m36246while() || !cfor.m36217break(cforM36224do).m36242throw()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m36240synchronized(Cfor cfor, int i) {
        int i2;
        if (i == 0) {
            m36230if(cfor);
            return;
        }
        m36241this(cfor.f32629do + i);
        int i3 = i >>> 5;
        for (int i4 = cfor.f32631if - 1; i4 >= 0; i4--) {
            int i5 = i4 + i3;
            int i6 = i5 + 1;
            if (i6 < this.f32631if && (i2 = i & 31) != 0) {
                int[] iArr = this.f32630for;
                iArr[i6] = (cfor.f32630for[i4] >>> (32 - i2)) ^ iArr[i6];
            }
            int[] iArr2 = this.f32630for;
            iArr2[i5] = iArr2[i5] ^ (cfor.f32630for[i4] << (i & 31));
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m36241this(int i) {
        if (this.f32629do >= i) {
            return;
        }
        this.f32629do = i;
        int i2 = ((i - 1) >>> 5) + 1;
        int i3 = this.f32631if;
        if (i3 >= i2) {
            return;
        }
        int[] iArr = this.f32630for;
        if (iArr.length >= i2) {
            while (i3 < i2) {
                this.f32630for[i3] = 0;
                i3++;
            }
            this.f32631if = i2;
            return;
        }
        int[] iArr2 = new int[i2];
        System.arraycopy(iArr, 0, iArr2, 0, i3);
        this.f32631if = i2;
        this.f32630for = null;
        this.f32630for = iArr2;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m36242throw() {
        for (int i = 1; i < this.f32631if; i++) {
            if (this.f32630for[i] != 0) {
                return false;
            }
        }
        return this.f32630for[0] == 1;
    }

    /* renamed from: transient, reason: not valid java name */
    public void m36243transient() {
        int i = this.f32631if + 1;
        this.f32631if = i;
        this.f32629do += 32;
        int[] iArr = this.f32630for;
        if (i > iArr.length) {
            int[] iArr2 = new int[i];
            System.arraycopy(iArr, 0, iArr2, 1, i - 1);
            this.f32630for = null;
            this.f32630for = iArr2;
            return;
        }
        for (int i2 = i - 1; i2 >= 1; i2--) {
            int[] iArr3 = this.f32630for;
            iArr3[i2] = iArr3[i2 - 1];
        }
        this.f32630for[0] = 0;
    }

    /* renamed from: try, reason: not valid java name */
    public void m36244try() {
        for (int i = 1; i < this.f32631if; i++) {
            this.f32630for[i] = 0;
        }
        this.f32630for[0] = 2;
    }

    /* renamed from: volatile, reason: not valid java name */
    public Cfor m36245volatile(Cfor cfor) throws RuntimeException {
        Cfor cfor2 = new Cfor(this);
        Cfor cfor3 = new Cfor(cfor);
        if (cfor3.m36246while()) {
            throw new RuntimeException();
        }
        cfor2.m36216abstract();
        cfor3.m36216abstract();
        int i = cfor2.f32629do;
        int i2 = cfor3.f32629do;
        if (i < i2) {
            return cfor2;
        }
        while (true) {
            int i3 = i - i2;
            if (i3 < 0) {
                return cfor2;
            }
            cfor2.g(cfor3.m36232instanceof(i3));
            cfor2.m36216abstract();
            i = cfor2.f32629do;
            i2 = cfor3.f32629do;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m36246while() {
        if (this.f32629do == 0) {
            return true;
        }
        for (int i = 0; i < this.f32631if; i++) {
            if (this.f32630for[i] != 0) {
                return false;
            }
        }
        return true;
    }
}
