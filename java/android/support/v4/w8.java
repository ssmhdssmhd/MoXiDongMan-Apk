package android.support.v4;

import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.lang3.Ctry;

/* loaded from: classes2.dex */
public final class w8 implements Cloneable {

    /* renamed from: do, reason: not valid java name */
    private int[] f7412do;

    /* renamed from: if, reason: not valid java name */
    private int f7413if;

    public w8() {
        this.f7413if = 0;
        this.f7412do = new int[1];
    }

    /* renamed from: case, reason: not valid java name */
    private void m9074case(int i) {
        if (i > (this.f7412do.length << 5)) {
            int[] iArrM9075super = m9075super(i);
            int[] iArr = this.f7412do;
            System.arraycopy(iArr, 0, iArrM9075super, 0, iArr.length);
            this.f7412do = iArrM9075super;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static int[] m9075super(int i) {
        return new int[(i + 31) / 32];
    }

    /* renamed from: break, reason: not valid java name */
    public int m9076break(int i) {
        int i2 = this.f7413if;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (((1 << (i & 31)) - 1) ^ (-1)) & this.f7412do[i3];
        while (i4 == 0) {
            i3++;
            int[] iArr = this.f7412do;
            if (i3 == iArr.length) {
                return this.f7413if;
            }
            i4 = iArr[i3];
        }
        int iNumberOfTrailingZeros = (i3 << 5) + Integer.numberOfTrailingZeros(i4);
        int i5 = this.f7413if;
        return iNumberOfTrailingZeros > i5 ? i5 : iNumberOfTrailingZeros;
    }

    /* renamed from: catch, reason: not valid java name */
    public int m9077catch(int i) {
        int i2 = this.f7413if;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (((1 << (i & 31)) - 1) ^ (-1)) & (this.f7412do[i3] ^ (-1));
        while (i4 == 0) {
            i3++;
            int[] iArr = this.f7412do;
            if (i3 == iArr.length) {
                return this.f7413if;
            }
            i4 = iArr[i3] ^ (-1);
        }
        int iNumberOfTrailingZeros = (i3 << 5) + Integer.numberOfTrailingZeros(i4);
        int i5 = this.f7413if;
        return iNumberOfTrailingZeros > i5 ? i5 : iNumberOfTrailingZeros;
    }

    /* renamed from: class, reason: not valid java name */
    public int m9078class() {
        return this.f7413if;
    }

    /* renamed from: const, reason: not valid java name */
    public int m9079const() {
        return (this.f7413if + 7) / 8;
    }

    /* renamed from: do, reason: not valid java name */
    public void m9080do(boolean z) {
        m9074case(this.f7413if + 1);
        if (z) {
            int[] iArr = this.f7412do;
            int i = this.f7413if;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f7413if++;
    }

    /* renamed from: else, reason: not valid java name */
    public void m9081else(int i) {
        int[] iArr = this.f7412do;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof w8)) {
            return false;
        }
        w8 w8Var = (w8) obj;
        return this.f7413if == w8Var.f7413if && Arrays.equals(this.f7412do, w8Var.f7412do);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m9082final(int i, int i2, boolean z) {
        if (i2 < i || i < 0 || i2 > this.f7413if) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return true;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = (2 << (i6 >= i5 ? 31 & i3 : 31)) - (1 << (i6 > i4 ? 0 : i & 31));
            int i8 = this.f7412do[i6] & i7;
            if (!z) {
                i7 = 0;
            }
            if (i8 != i7) {
                return false;
            }
            i6++;
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public void m9083for(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        m9074case(this.f7413if + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            m9080do(z);
            i2--;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m9084goto(int i) {
        return ((1 << (i & 31)) & this.f7412do[i / 32]) != 0;
    }

    public int hashCode() {
        return (this.f7413if * 31) + Arrays.hashCode(this.f7412do);
    }

    /* renamed from: if, reason: not valid java name */
    public void m9085if(w8 w8Var) {
        int i = w8Var.f7413if;
        m9074case(this.f7413if + i);
        for (int i2 = 0; i2 < i; i2++) {
            m9080do(w8Var.m9084goto(i2));
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m9086import(int i, int i2) {
        this.f7412do[i / 32] = i2;
    }

    /* renamed from: native, reason: not valid java name */
    public void m9087native(int i, int i2) {
        if (i2 < i || i < 0 || i2 > this.f7413if) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = 31;
            int i8 = i6 > i4 ? 0 : i & 31;
            if (i6 >= i5) {
                i7 = 31 & i3;
            }
            int i9 = (2 << i7) - (1 << i8);
            int[] iArr = this.f7412do;
            iArr[i6] = i9 | iArr[i6];
            i6++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m9088new() {
        int length = this.f7412do.length;
        for (int i = 0; i < length; i++) {
            this.f7412do[i] = 0;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m9089public(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (m9084goto(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m9090return(w8 w8Var) {
        if (this.f7413if != w8Var.f7413if) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f7412do;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ w8Var.f7412do[i];
            i++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public int[] m9091this() {
        return this.f7412do;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m9092throw() {
        int[] iArr = new int[this.f7412do.length];
        int i = (this.f7413if - 1) / 32;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = this.f7412do[i3];
            long j2 = ((j & 1431655765) << 1) | ((j >> 1) & 1431655765);
            long j3 = ((j2 & 858993459) << 2) | ((j2 >> 2) & 858993459);
            long j4 = ((j3 & 252645135) << 4) | ((j3 >> 4) & 252645135);
            long j5 = ((j4 & 16711935) << 8) | ((j4 >> 8) & 16711935);
            iArr[i - i3] = (int) (((j5 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((j5 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
        }
        int i4 = this.f7413if;
        int i5 = i2 << 5;
        if (i4 != i5) {
            int i6 = i5 - i4;
            int i7 = iArr[0] >>> i6;
            for (int i8 = 1; i8 < i2; i8++) {
                int i9 = iArr[i8];
                iArr[i8 - 1] = i7 | (i9 << (32 - i6));
                i7 = i9 >>> i6;
            }
            iArr[i2 - 1] = i7;
        }
        this.f7412do = iArr;
    }

    public String toString() {
        int i = this.f7413if;
        StringBuilder sb = new StringBuilder(i + (i / 8) + 1);
        for (int i2 = 0; i2 < this.f7413if; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(m9084goto(i2) ? 'X' : Ctry.f28883do);
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public w8 clone() {
        return new w8((int[]) this.f7412do.clone(), this.f7413if);
    }

    /* renamed from: while, reason: not valid java name */
    public void m9094while(int i) {
        int[] iArr = this.f7412do;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public w8(int i) {
        this.f7413if = i;
        this.f7412do = m9075super(i);
    }

    public w8(int[] iArr, int i) {
        this.f7412do = iArr;
        this.f7413if = i;
    }
}
