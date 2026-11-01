package android.support.v4;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public class jq {

    /* renamed from: do, reason: not valid java name */
    private short[][] f3194do;

    /* renamed from: if, reason: not valid java name */
    public short[] f3195if;

    /* renamed from: class, reason: not valid java name */
    private void m4051class() throws IllegalStateException {
        short sM5958new = pe0.m5958new(this.f3194do[r0.length - 1][r0.length - 1]);
        if (sM5958new == 0) {
            throw new IllegalStateException("The equation system is not solvable");
        }
        short[] sArr = this.f3195if;
        short[][] sArr2 = this.f3194do;
        sArr[sArr2.length - 1] = pe0.m5959try(sArr2[sArr2.length - 1][sArr2.length], sM5958new);
        for (int length = this.f3194do.length - 2; length >= 0; length--) {
            short[][] sArr3 = this.f3194do;
            short sM5955do = sArr3[length][sArr3.length];
            for (int length2 = sArr3.length - 1; length2 > length; length2--) {
                sM5955do = pe0.m5955do(sM5955do, pe0.m5959try(this.f3194do[length][length2], this.f3195if[length2]));
            }
            short sM5958new2 = pe0.m5958new(this.f3194do[length][length]);
            if (sM5958new2 == 0) {
                throw new IllegalStateException("Not solvable equation system");
            }
            this.f3195if[length] = pe0.m5959try(sM5955do, sM5958new2);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m4052for() throws RuntimeException {
        for (int length = this.f3194do.length - 1; length > 0; length--) {
            for (int i = length - 1; i >= 0; i--) {
                short[][] sArr = this.f3194do;
                short s = sArr[i][length];
                short sM5958new = pe0.m5958new(sArr[length][length]);
                if (sM5958new == 0) {
                    throw new RuntimeException("The matrix is not invertible");
                }
                int i2 = length;
                while (true) {
                    short[][] sArr2 = this.f3194do;
                    if (i2 < sArr2.length * 2) {
                        short sM5959try = pe0.m5959try(s, pe0.m5959try(sArr2[length][i2], sM5958new));
                        short[][] sArr3 = this.f3194do;
                        sArr3[i][i2] = pe0.m5955do(sArr3[i][i2], sM5959try);
                        i2++;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
    
        r0 = r1;
     */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m4053new(boolean z) throws RuntimeException {
        int length = z ? this.f3194do.length * 2 : this.f3194do.length + 1;
        int i = 0;
        while (i < this.f3194do.length - 1) {
            int i2 = i + 1;
            int i3 = i2;
            while (true) {
                short[][] sArr = this.f3194do;
                if (i3 < sArr.length) {
                    short s = sArr[i3][i];
                    short sM5958new = pe0.m5958new(sArr[i][i]);
                    if (sM5958new == 0) {
                        throw new IllegalStateException("Matrix not invertible! We have to choose another one!");
                    }
                    for (int i4 = i; i4 < length; i4++) {
                        short sM5959try = pe0.m5959try(s, pe0.m5959try(this.f3194do[i][i4], sM5958new));
                        short[][] sArr2 = this.f3194do;
                        sArr2[i3][i4] = pe0.m5955do(sArr2[i3][i4], sM5959try);
                    }
                    i3++;
                }
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public short[][] m4054break(short[][] sArr, short[][] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        this.f3194do = (short[][]) Array.newInstance((Class<?>) short.class, sArr.length, sArr2[0].length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr2.length; i2++) {
                for (int i3 = 0; i3 < sArr2[0].length; i3++) {
                    short sM5959try = pe0.m5959try(sArr[i][i2], sArr2[i2][i3]);
                    short[][] sArr3 = this.f3194do;
                    sArr3[i][i3] = pe0.m5955do(sArr3[i][i3], sM5959try);
                }
            }
        }
        return this.f3194do;
    }

    /* renamed from: case, reason: not valid java name */
    public short[][] m4055case(short s, short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) short.class, sArr.length, sArr[0].length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr[0].length; i2++) {
                sArr2[i][i2] = pe0.m5959try(s, sArr[i][i2]);
            }
        }
        return sArr2;
    }

    /* renamed from: catch, reason: not valid java name */
    public short[] m4056catch(short[][] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return null;
        }
        try {
            this.f3194do = (short[][]) Array.newInstance((Class<?>) short.class, sArr.length, sArr.length + 1);
            this.f3195if = new short[sArr.length];
            for (int i = 0; i < sArr.length; i++) {
                for (int i2 = 0; i2 < sArr[0].length; i2++) {
                    this.f3194do[i][i2] = sArr[i][i2];
                }
            }
            for (int i3 = 0; i3 < sArr2.length; i3++) {
                short[][] sArr3 = this.f3194do;
                sArr3[i3][sArr2.length] = pe0.m5955do(sArr2[i3], sArr3[i3][sArr2.length]);
            }
            m4053new(false);
            m4051class();
            return this.f3195if;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public short[][] m4057do(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length || sArr[0].length != sArr2[0].length) {
            throw new RuntimeException("Addition is not possible!");
        }
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) short.class, sArr.length, sArr.length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr2.length; i2++) {
                sArr3[i][i2] = pe0.m5955do(sArr[i][i2], sArr2[i][i2]);
            }
        }
        return sArr3;
    }

    /* renamed from: else, reason: not valid java name */
    public short[] m4058else(short s, short[] sArr) {
        int length = sArr.length;
        short[] sArr2 = new short[length];
        for (int i = 0; i < length; i++) {
            sArr2[i] = pe0.m5959try(s, sArr[i]);
        }
        return sArr2;
    }

    /* renamed from: goto, reason: not valid java name */
    public short[][] m4059goto(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) short.class, sArr.length, sArr2.length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr2.length; i2++) {
                sArr3[i][i2] = pe0.m5959try(sArr[i], sArr2[i2]);
            }
        }
        return sArr3;
    }

    /* renamed from: if, reason: not valid java name */
    public short[] m4060if(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        int length = sArr.length;
        short[] sArr3 = new short[length];
        for (int i = 0; i < length; i++) {
            sArr3[i] = pe0.m5955do(sArr[i], sArr2[i]);
        }
        return sArr3;
    }

    /* renamed from: this, reason: not valid java name */
    public short[] m4061this(short[][] sArr, short[] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[] sArr3 = new short[sArr.length];
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr2.length; i2++) {
                sArr3[i] = pe0.m5955do(sArr3[i], pe0.m5959try(sArr[i][i2], sArr2[i2]));
            }
        }
        return sArr3;
    }

    /* renamed from: try, reason: not valid java name */
    public short[][] m4062try(short[][] sArr) {
        try {
            int i = 0;
            this.f3194do = (short[][]) Array.newInstance((Class<?>) short.class, sArr.length, sArr.length * 2);
            if (sArr.length != sArr[0].length) {
                throw new RuntimeException("The matrix is not invertible. Please choose another one!");
            }
            for (int i2 = 0; i2 < sArr.length; i2++) {
                for (int i3 = 0; i3 < sArr.length; i3++) {
                    this.f3194do[i2][i3] = sArr[i2][i3];
                }
                for (int length = sArr.length; length < sArr.length * 2; length++) {
                    this.f3194do[i2][length] = 0;
                }
                short[][] sArr2 = this.f3194do;
                sArr2[i2][sArr2.length + i2] = 1;
            }
            m4053new(true);
            int i4 = 0;
            while (true) {
                short[][] sArr3 = this.f3194do;
                if (i4 >= sArr3.length) {
                    break;
                }
                short sM5958new = pe0.m5958new(sArr3[i4][i4]);
                int i5 = i4;
                while (true) {
                    short[][] sArr4 = this.f3194do;
                    if (i5 < sArr4.length * 2) {
                        sArr4[i4][i5] = pe0.m5959try(sArr4[i4][i5], sM5958new);
                        i5++;
                    }
                }
                i4++;
            }
            m4052for();
            short[][] sArr5 = this.f3194do;
            short[][] sArr6 = (short[][]) Array.newInstance((Class<?>) short.class, sArr5.length, sArr5.length);
            while (true) {
                short[][] sArr7 = this.f3194do;
                if (i >= sArr7.length) {
                    return sArr6;
                }
                int length2 = sArr7.length;
                while (true) {
                    short[][] sArr8 = this.f3194do;
                    if (length2 < sArr8.length * 2) {
                        sArr6[i][length2 - sArr8.length] = sArr8[i][length2];
                        length2++;
                    }
                }
                i++;
            }
        } catch (RuntimeException unused) {
            return null;
        }
    }
}
