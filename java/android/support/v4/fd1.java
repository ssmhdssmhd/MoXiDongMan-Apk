package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.pqc.math.linearalgebra.Ccatch;

/* loaded from: classes3.dex */
public class fd1 {

    /* renamed from: do, reason: not valid java name */
    private int[] f1772do;

    public fd1(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.f1772do = new int[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            this.f1772do[i2] = i2;
        }
    }

    public fd1(int i, SecureRandom secureRandom) {
        if (i <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.f1772do = new int[i];
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        int i3 = i;
        for (int i4 = 0; i4 < i; i4++) {
            int iM1406do = dl1.m1406do(secureRandom, i3);
            i3--;
            this.f1772do[i4] = iArr[iM1406do];
            iArr[iM1406do] = iArr[i3];
        }
    }

    public fd1(byte[] bArr) {
        if (bArr.length <= 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        int iM4764else = lt0.m4764else(bArr, 0);
        int iM36186try = Ccatch.m36186try(iM4764else - 1);
        if (bArr.length != (iM4764else * iM36186try) + 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        this.f1772do = new int[iM4764else];
        for (int i = 0; i < iM4764else; i++) {
            this.f1772do[i] = lt0.m4766goto(bArr, (i * iM36186try) + 4, iM36186try);
        }
        if (!m2247new(this.f1772do)) {
            throw new IllegalArgumentException("invalid encoding");
        }
    }

    public fd1(int[] iArr) {
        if (!m2247new(iArr)) {
            throw new IllegalArgumentException("array is not a permutation vector");
        }
        this.f1772do = fn0.m2358do(iArr);
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m2247new(int[] iArr) {
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            if (iArr[i] < 0 || iArr[i] >= length || zArr[iArr[i]]) {
                return false;
            }
            zArr[iArr[i]] = true;
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public fd1 m2248do() {
        fd1 fd1Var = new fd1(this.f1772do.length);
        for (int length = this.f1772do.length - 1; length >= 0; length--) {
            fd1Var.f1772do[this.f1772do[length]] = length;
        }
        return fd1Var;
    }

    public boolean equals(Object obj) {
        if (obj instanceof fd1) {
            return fn0.m2362if(this.f1772do, ((fd1) obj).f1772do);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public int[] m2249for() {
        return fn0.m2358do(this.f1772do);
    }

    public int hashCode() {
        return q3.q(this.f1772do);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m2250if() {
        int length = this.f1772do.length;
        int iM36186try = Ccatch.m36186try(length - 1);
        byte[] bArr = new byte[(length * iM36186try) + 4];
        lt0.m4763do(length, bArr, 0);
        for (int i = 0; i < length; i++) {
            lt0.m4767if(this.f1772do[i], bArr, (i * iM36186try) + 4, iM36186try);
        }
        return bArr;
    }

    public String toString() {
        String str = "[" + this.f1772do[0];
        for (int i = 1; i < this.f1772do.length; i++) {
            str = str + ", " + this.f1772do[i];
        }
        return str + "]";
    }

    /* renamed from: try, reason: not valid java name */
    public fd1 m2251try(fd1 fd1Var) {
        int length = fd1Var.f1772do.length;
        int[] iArr = this.f1772do;
        if (length != iArr.length) {
            throw new IllegalArgumentException("length mismatch");
        }
        fd1 fd1Var2 = new fd1(iArr.length);
        for (int length2 = this.f1772do.length - 1; length2 >= 0; length2--) {
            fd1Var2.f1772do[length2] = this.f1772do[fd1Var.f1772do[length2]];
        }
        return fd1Var2;
    }
}
