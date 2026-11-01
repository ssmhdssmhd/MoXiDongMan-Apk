package android.support.v4;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class z8 implements Cloneable {

    /* renamed from: do, reason: not valid java name */
    private final int f8462do;

    /* renamed from: for, reason: not valid java name */
    private final int f8463for;

    /* renamed from: if, reason: not valid java name */
    private final int f8464if;

    /* renamed from: new, reason: not valid java name */
    private final int[] f8465new;

    public z8(int i) {
        this(i, i);
    }

    /* renamed from: const, reason: not valid java name */
    public static z8 m10085const(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        boolean[] zArr = new boolean[str.length()];
        int length = 0;
        int i = 0;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (length < str.length()) {
            if (str.charAt(length) == '\n' || str.charAt(length) == '\r') {
                if (i > i2) {
                    if (i3 == -1) {
                        i3 = i - i2;
                    } else if (i - i2 != i3) {
                        throw new IllegalArgumentException("row lengths do not match");
                    }
                    i4++;
                    i2 = i;
                }
                length++;
            } else {
                if (str.substring(length, str2.length() + length).equals(str2)) {
                    length += str2.length();
                    zArr[i] = true;
                } else {
                    if (!str.substring(length, str3.length() + length).equals(str3)) {
                        throw new IllegalArgumentException("illegal character encountered: " + str.substring(length));
                    }
                    length += str3.length();
                    zArr[i] = false;
                }
                i++;
            }
        }
        if (i > i2) {
            if (i3 == -1) {
                i3 = i - i2;
            } else if (i - i2 != i3) {
                throw new IllegalArgumentException("row lengths do not match");
            }
            i4++;
        }
        z8 z8Var = new z8(i3, i4);
        for (int i5 = 0; i5 < i; i5++) {
            if (zArr[i5]) {
                z8Var.m10104throw(i5 % i3, i5 / i3);
            }
        }
        return z8Var;
    }

    /* renamed from: do, reason: not valid java name */
    private String m10086do(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f8464if * (this.f8462do + 1));
        for (int i = 0; i < this.f8464if; i++) {
            for (int i2 = 0; i2 < this.f8462do; i2++) {
                sb.append(m10105try(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    /* renamed from: final, reason: not valid java name */
    public static z8 m10087final(boolean[][] zArr) {
        int length = zArr.length;
        int length2 = zArr[0].length;
        z8 z8Var = new z8(length2, length);
        for (int i = 0; i < length; i++) {
            boolean[] zArr2 = zArr[i];
            for (int i2 = 0; i2 < length2; i2++) {
                if (zArr2[i2]) {
                    z8Var.m10104throw(i2, i);
                }
            }
        }
        return z8Var;
    }

    /* renamed from: break, reason: not valid java name */
    public int m10088break() {
        return this.f8463for;
    }

    /* renamed from: case, reason: not valid java name */
    public int[] m10089case() {
        int length = this.f8465new.length - 1;
        while (length >= 0 && this.f8465new[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = this.f8463for;
        int i2 = length / i;
        int i3 = (length % i) << 5;
        int i4 = 31;
        while ((this.f8465new[length] >>> i4) == 0) {
            i4--;
        }
        return new int[]{i3 + i4, i2};
    }

    /* renamed from: catch, reason: not valid java name */
    public int[] m10090catch() {
        int[] iArr;
        int i = 0;
        while (true) {
            iArr = this.f8465new;
            if (i >= iArr.length || iArr[i] != 0) {
                break;
            }
            i++;
        }
        if (i == iArr.length) {
            return null;
        }
        int i2 = this.f8463for;
        int i3 = i / i2;
        int i4 = (i % i2) << 5;
        int i5 = iArr[i];
        int i6 = 0;
        while ((i5 << (31 - i6)) == 0) {
            i6++;
        }
        return new int[]{i4 + i6, i3};
    }

    /* renamed from: class, reason: not valid java name */
    public int m10091class() {
        return this.f8462do;
    }

    /* renamed from: else, reason: not valid java name */
    public int[] m10092else() {
        int i = this.f8462do;
        int i2 = this.f8464if;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < this.f8464if; i5++) {
            int i6 = 0;
            while (true) {
                int i7 = this.f8463for;
                if (i6 < i7) {
                    int i8 = this.f8465new[(i7 * i5) + i6];
                    if (i8 != 0) {
                        if (i5 < i2) {
                            i2 = i5;
                        }
                        if (i5 > i4) {
                            i4 = i5;
                        }
                        int i9 = i6 << 5;
                        if (i9 < i) {
                            int i10 = 0;
                            while ((i8 << (31 - i10)) == 0) {
                                i10++;
                            }
                            int i11 = i10 + i9;
                            if (i11 < i) {
                                i = i11;
                            }
                        }
                        if (i9 + 31 > i3) {
                            int i12 = 31;
                            while ((i8 >>> i12) == 0) {
                                i12--;
                            }
                            int i13 = i9 + i12;
                            if (i13 > i3) {
                                i3 = i13;
                            }
                        }
                    }
                    i6++;
                }
            }
        }
        if (i3 < i || i4 < i2) {
            return null;
        }
        return new int[]{i, i2, (i3 - i) + 1, (i4 - i2) + 1};
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof z8)) {
            return false;
        }
        z8 z8Var = (z8) obj;
        return this.f8462do == z8Var.f8462do && this.f8464if == z8Var.f8464if && this.f8463for == z8Var.f8463for && Arrays.equals(this.f8465new, z8Var.f8465new);
    }

    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public z8 clone() {
        return new z8(this.f8462do, this.f8464if, this.f8463for, (int[]) this.f8465new.clone());
    }

    /* renamed from: goto, reason: not valid java name */
    public int m10094goto() {
        return this.f8464if;
    }

    public int hashCode() {
        int i = this.f8462do;
        return (((((((i * 31) + i) * 31) + this.f8464if) * 31) + this.f8463for) * 31) + Arrays.hashCode(this.f8465new);
    }

    /* renamed from: if, reason: not valid java name */
    public void m10095if() {
        int length = this.f8465new.length;
        for (int i = 0; i < length; i++) {
            this.f8465new[i] = 0;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m10096import(int i, w8 w8Var) {
        int[] iArrM9091this = w8Var.m9091this();
        int[] iArr = this.f8465new;
        int i2 = this.f8463for;
        System.arraycopy(iArrM9091this, 0, iArr, i * i2, i2);
    }

    /* renamed from: native, reason: not valid java name */
    public String m10097native(String str, String str2) {
        return m10086do(str, str2, "\n");
    }

    /* renamed from: new, reason: not valid java name */
    public void m10098new(int i, int i2) {
        int i3 = (i2 * this.f8463for) + (i / 32);
        int[] iArr = this.f8465new;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    @Deprecated
    /* renamed from: public, reason: not valid java name */
    public String m10099public(String str, String str2, String str3) {
        return m10086do(str, str2, str3);
    }

    /* renamed from: return, reason: not valid java name */
    public void m10100return(int i, int i2) {
        int i3 = (i2 * this.f8463for) + (i / 32);
        int[] iArr = this.f8465new;
        iArr[i3] = ((1 << (i & 31)) ^ (-1)) & iArr[i3];
    }

    /* renamed from: static, reason: not valid java name */
    public void m10101static(z8 z8Var) {
        if (this.f8462do != z8Var.m10091class() || this.f8464if != z8Var.m10094goto() || this.f8463for != z8Var.m10088break()) {
            throw new IllegalArgumentException("input matrix dimensions do not match");
        }
        w8 w8Var = new w8(this.f8462do);
        for (int i = 0; i < this.f8464if; i++) {
            int i2 = this.f8463for * i;
            int[] iArrM9091this = z8Var.m10103this(i, w8Var).m9091this();
            for (int i3 = 0; i3 < this.f8463for; i3++) {
                int[] iArr = this.f8465new;
                int i4 = i2 + i3;
                iArr[i4] = iArr[i4] ^ iArrM9091this[i3];
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m10102super() {
        int iM10091class = m10091class();
        int iM10094goto = m10094goto();
        w8 w8Var = new w8(iM10091class);
        w8 w8Var2 = new w8(iM10091class);
        for (int i = 0; i < (iM10094goto + 1) / 2; i++) {
            w8Var = m10103this(i, w8Var);
            int i2 = (iM10094goto - 1) - i;
            w8Var2 = m10103this(i2, w8Var2);
            w8Var.m9092throw();
            w8Var2.m9092throw();
            m10096import(i, w8Var2);
            m10096import(i2, w8Var);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public w8 m10103this(int i, w8 w8Var) {
        if (w8Var == null || w8Var.m9078class() < this.f8462do) {
            w8Var = new w8(this.f8462do);
        } else {
            w8Var.m9088new();
        }
        int i2 = i * this.f8463for;
        for (int i3 = 0; i3 < this.f8463for; i3++) {
            w8Var.m9086import(i3 << 5, this.f8465new[i2 + i3]);
        }
        return w8Var;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m10104throw(int i, int i2) {
        int i3 = (i2 * this.f8463for) + (i / 32);
        int[] iArr = this.f8465new;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public String toString() {
        return m10097native("X ", "  ");
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m10105try(int i, int i2) {
        return ((this.f8465new[(i2 * this.f8463for) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    /* renamed from: while, reason: not valid java name */
    public void m10106while(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.f8464if || i5 > this.f8462do) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.f8463for * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f8465new;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public z8(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f8462do = i;
        this.f8464if = i2;
        int i3 = (i + 31) / 32;
        this.f8463for = i3;
        this.f8465new = new int[i3 * i2];
    }

    private z8(int i, int i2, int i3, int[] iArr) {
        this.f8462do = i;
        this.f8464if = i2;
        this.f8463for = i3;
        this.f8465new = iArr;
    }
}
