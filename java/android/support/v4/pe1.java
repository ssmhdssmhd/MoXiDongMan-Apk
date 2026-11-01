package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class pe1 {

    /* renamed from: new, reason: not valid java name */
    public static final char f4945new = 'I';

    /* renamed from: do, reason: not valid java name */
    private se0 f4946do;

    /* renamed from: for, reason: not valid java name */
    private int[] f4947for;

    /* renamed from: if, reason: not valid java name */
    private int f4948if;

    public pe1(pe1 pe1Var) {
        this.f4946do = pe1Var.f4946do;
        this.f4948if = pe1Var.f4948if;
        this.f4947for = fn0.m2358do(pe1Var.f4947for);
    }

    public pe1(se0 se0Var) {
        this.f4946do = se0Var;
        this.f4948if = -1;
        this.f4947for = new int[1];
    }

    public pe1(se0 se0Var, int i) {
        this.f4946do = se0Var;
        this.f4948if = i;
        int[] iArr = new int[i + 1];
        this.f4947for = iArr;
        iArr[i] = 1;
    }

    public pe1(se0 se0Var, int i, char c, SecureRandom secureRandom) {
        this.f4946do = se0Var;
        if (c == 'I') {
            this.f4947for = m5962else(i, secureRandom);
            m5960case();
        } else {
            throw new IllegalArgumentException(" Error: type " + c + " is not defined for GF2smallmPolynomial");
        }
    }

    public pe1(se0 se0Var, byte[] bArr) {
        this.f4946do = se0Var;
        int i = 8;
        int i2 = 1;
        while (se0Var.m7388new() > i) {
            i2++;
            i += 8;
        }
        if (bArr.length % i2 != 0) {
            throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
        }
        this.f4947for = new int[bArr.length / i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.f4947for;
            if (i3 >= iArr.length) {
                if (iArr.length != 1 && iArr[iArr.length - 1] == 0) {
                    throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                }
                m5960case();
                return;
            }
            int i5 = 0;
            while (i5 < i) {
                int[] iArr2 = this.f4947for;
                iArr2[i3] = ((bArr[i4] & 255) << i5) ^ iArr2[i3];
                i5 += 8;
                i4++;
            }
            if (!this.f4946do.m7380catch(this.f4947for[i3])) {
                throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
            }
            i3++;
        }
    }

    public pe1(se0 se0Var, int[] iArr) {
        this.f4946do = se0Var;
        this.f4947for = m5967instanceof(iArr);
        m5960case();
    }

    public pe1(ue0 ue0Var) {
        this(ue0Var.m8400case(), ue0Var.m8401else());
    }

    /* renamed from: case, reason: not valid java name */
    private void m5960case() {
        int length = this.f4947for.length;
        do {
            this.f4948if = length - 1;
            length = this.f4948if;
            if (length < 0) {
                return;
            }
        } while (this.f4947for[length] == 0);
    }

    /* renamed from: class, reason: not valid java name */
    private int[] m5961class(int[] iArr, int[] iArr2) {
        if (m5973try(iArr) == -1) {
            return iArr2;
        }
        while (m5973try(iArr2) != -1) {
            int[] iArrM5970return = m5970return(iArr, iArr2);
            int length = iArr2.length;
            int[] iArr3 = new int[length];
            System.arraycopy(iArr2, 0, iArr3, 0, length);
            int length2 = iArrM5970return.length;
            int[] iArr4 = new int[length2];
            System.arraycopy(iArrM5970return, 0, iArr4, 0, length2);
            iArr2 = iArr4;
            iArr = iArr3;
        }
        return m5974volatile(iArr, this.f4946do.m7378break(m5975while(iArr)));
    }

    /* renamed from: else, reason: not valid java name */
    private int[] m5962else(int i, SecureRandom secureRandom) {
        int[] iArr = new int[i + 1];
        iArr[i] = 1;
        iArr[0] = this.f4946do.m7389this(secureRandom);
        for (int i2 = 1; i2 < i; i2++) {
            iArr[i2] = this.f4946do.m7383else(secureRandom);
        }
        while (!m5968native(iArr)) {
            int iM1406do = dl1.m1406do(secureRandom, i);
            if (iM1406do == 0) {
                iArr[0] = this.f4946do.m7389this(secureRandom);
            } else {
                iArr[iM1406do] = this.f4946do.m7383else(secureRandom);
            }
        }
        return iArr;
    }

    /* renamed from: extends, reason: not valid java name */
    private int[] m5963extends(int[] iArr, int[] iArr2, int[] iArr3) {
        return m5970return(m5965implements(iArr, iArr2), iArr3);
    }

    /* renamed from: if, reason: not valid java name */
    private int[] m5964if(int[] iArr, int[] iArr2) {
        int[] iArr3;
        if (iArr.length < iArr2.length) {
            iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
        } else {
            iArr3 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            iArr = iArr2;
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr3[length] = this.f4946do.m7382do(iArr3[length], iArr[length]);
        }
        return iArr3;
    }

    /* renamed from: implements, reason: not valid java name */
    private int[] m5965implements(int[] iArr, int[] iArr2) {
        if (m5973try(iArr) < m5973try(iArr2)) {
            iArr2 = iArr;
            iArr = iArr2;
        }
        int[] iArrM5967instanceof = m5967instanceof(iArr);
        int[] iArrM5967instanceof2 = m5967instanceof(iArr2);
        if (iArrM5967instanceof2.length == 1) {
            return m5974volatile(iArrM5967instanceof, iArrM5967instanceof2[0]);
        }
        int length = iArrM5967instanceof.length;
        int length2 = iArrM5967instanceof2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        if (length2 != length) {
            int[] iArr4 = new int[length2];
            int i = length - length2;
            int[] iArr5 = new int[i];
            System.arraycopy(iArrM5967instanceof, 0, iArr4, 0, length2);
            System.arraycopy(iArrM5967instanceof, length2, iArr5, 0, i);
            return m5964if(m5965implements(iArr4, iArrM5967instanceof2), m5969protected(m5965implements(iArr5, iArrM5967instanceof2), length2));
        }
        int i2 = (length + 1) >>> 1;
        int i3 = length - i2;
        int[] iArr6 = new int[i2];
        int[] iArr7 = new int[i2];
        int[] iArr8 = new int[i3];
        int[] iArr9 = new int[i3];
        System.arraycopy(iArrM5967instanceof, 0, iArr6, 0, i2);
        System.arraycopy(iArrM5967instanceof, i2, iArr8, 0, i3);
        System.arraycopy(iArrM5967instanceof2, 0, iArr7, 0, i2);
        System.arraycopy(iArrM5967instanceof2, i2, iArr9, 0, i3);
        int[] iArrM5964if = m5964if(iArr6, iArr8);
        int[] iArrM5964if2 = m5964if(iArr7, iArr9);
        int[] iArrM5965implements = m5965implements(iArr6, iArr7);
        int[] iArrM5965implements2 = m5965implements(iArrM5964if, iArrM5964if2);
        int[] iArrM5965implements3 = m5965implements(iArr8, iArr9);
        return m5964if(m5969protected(m5964if(m5964if(m5964if(iArrM5965implements2, iArrM5965implements), iArrM5965implements3), m5969protected(iArrM5965implements3, i2)), i2), iArrM5965implements);
    }

    /* renamed from: import, reason: not valid java name */
    private static boolean m5966import(int[] iArr, int[] iArr2) {
        int iM5973try = m5973try(iArr);
        if (iM5973try != m5973try(iArr2)) {
            return false;
        }
        for (int i = 0; i <= iM5973try; i++) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: instanceof, reason: not valid java name */
    private static int[] m5967instanceof(int[] iArr) {
        int iM5973try = m5973try(iArr);
        if (iM5973try == -1) {
            return new int[1];
        }
        int i = iM5973try + 1;
        if (iArr.length == i) {
            return fn0.m2358do(iArr);
        }
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, i);
        return iArr2;
    }

    /* renamed from: native, reason: not valid java name */
    private boolean m5968native(int[] iArr) {
        if (iArr[0] == 0) {
            return false;
        }
        int iM5973try = m5973try(iArr) >> 1;
        int[] iArrM5967instanceof = {0, 1};
        int[] iArr2 = {0, 1};
        int iM7388new = this.f4946do.m7388new();
        for (int i = 0; i < iM5973try; i++) {
            for (int i2 = iM7388new - 1; i2 >= 0; i2--) {
                iArrM5967instanceof = m5963extends(iArrM5967instanceof, iArrM5967instanceof, iArr);
            }
            iArrM5967instanceof = m5967instanceof(iArrM5967instanceof);
            if (m5973try(m5961class(m5964if(iArrM5967instanceof, iArr2), iArr)) != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: protected, reason: not valid java name */
    private static int[] m5969protected(int[] iArr, int i) {
        int iM5973try = m5973try(iArr);
        if (iM5973try == -1) {
            return new int[1];
        }
        int[] iArr2 = new int[iM5973try + i + 1];
        System.arraycopy(iArr, 0, iArr2, i, iM5973try + 1);
        return iArr2;
    }

    /* renamed from: return, reason: not valid java name */
    private int[] m5970return(int[] iArr, int[] iArr2) {
        int iM5973try = m5973try(iArr2);
        if (iM5973try == -1) {
            throw new ArithmeticException("Division by zero");
        }
        int length = iArr.length;
        int[] iArrM5964if = new int[length];
        int iM7378break = this.f4946do.m7378break(m5975while(iArr2));
        System.arraycopy(iArr, 0, iArrM5964if, 0, length);
        while (iM5973try <= m5973try(iArrM5964if)) {
            iArrM5964if = m5964if(m5974volatile(m5969protected(iArr2, m5973try(iArrM5964if) - iM5973try), this.f4946do.m7381class(m5975while(iArrM5964if), iM7378break)), iArrM5964if);
        }
        return iArrM5964if;
    }

    /* renamed from: switch, reason: not valid java name */
    private int[] m5971switch(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM5967instanceof = m5967instanceof(iArr3);
        int[] iArrM5970return = m5970return(iArr2, iArr3);
        int[] iArrM5967instanceof2 = {0};
        int[] iArrM5970return2 = m5970return(iArr, iArr3);
        while (m5973try(iArrM5970return) != -1) {
            int[][] iArrM5972this = m5972this(iArrM5967instanceof, iArrM5970return);
            int[] iArrM5967instanceof3 = m5967instanceof(iArrM5970return);
            int[] iArrM5967instanceof4 = m5967instanceof(iArrM5972this[1]);
            int[] iArrM5964if = m5964if(iArrM5967instanceof2, m5963extends(iArrM5972this[0], iArrM5970return2, iArr3));
            iArrM5967instanceof2 = m5967instanceof(iArrM5970return2);
            iArrM5970return2 = m5967instanceof(iArrM5964if);
            iArrM5967instanceof = iArrM5967instanceof3;
            iArrM5970return = iArrM5967instanceof4;
        }
        return m5974volatile(iArrM5967instanceof2, this.f4946do.m7378break(m5975while(iArrM5967instanceof)));
    }

    /* renamed from: this, reason: not valid java name */
    private int[][] m5972this(int[] iArr, int[] iArr2) {
        int iM5973try = m5973try(iArr2);
        int iM5973try2 = m5973try(iArr) + 1;
        if (iM5973try == -1) {
            throw new ArithmeticException("Division by zero.");
        }
        int[][] iArr3 = {new int[1], new int[iM5973try2]};
        int iM7378break = this.f4946do.m7378break(m5975while(iArr2));
        iArr3[0][0] = 0;
        System.arraycopy(iArr, 0, iArr3[1], 0, iArr3[1].length);
        while (iM5973try <= m5973try(iArr3[1])) {
            int[] iArr4 = {this.f4946do.m7381class(m5975while(iArr3[1]), iM7378break)};
            int[] iArrM5974volatile = m5974volatile(iArr2, iArr4[0]);
            int iM5973try3 = m5973try(iArr3[1]) - iM5973try;
            int[] iArrM5969protected = m5969protected(iArrM5974volatile, iM5973try3);
            iArr3[0] = m5964if(m5969protected(iArr4, iM5973try3), iArr3[0]);
            iArr3[1] = m5964if(iArrM5969protected, iArr3[1]);
        }
        return iArr3;
    }

    /* renamed from: try, reason: not valid java name */
    private static int m5973try(int[] iArr) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        return length;
    }

    /* renamed from: volatile, reason: not valid java name */
    private int[] m5974volatile(int[] iArr, int i) {
        int iM5973try = m5973try(iArr);
        if (iM5973try == -1 || i == 0) {
            return new int[1];
        }
        if (i == 1) {
            return fn0.m2358do(iArr);
        }
        int[] iArr2 = new int[iM5973try + 1];
        while (iM5973try >= 0) {
            iArr2[iM5973try] = this.f4946do.m7381class(iArr[iM5973try], i);
            iM5973try--;
        }
        return iArr2;
    }

    /* renamed from: while, reason: not valid java name */
    private static int m5975while(int[] iArr) {
        int iM5973try = m5973try(iArr);
        if (iM5973try == -1) {
            return 0;
        }
        return iArr[iM5973try];
    }

    /* renamed from: abstract, reason: not valid java name */
    public pe1 m5976abstract(pe1[] pe1VarArr) {
        int length = pe1VarArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                if (i < pe1VarArr[i2].f4947for.length) {
                    int[] iArr2 = this.f4947for;
                    if (i2 < iArr2.length) {
                        iArr[i] = this.f4946do.m7382do(iArr[i], this.f4946do.m7381class(pe1VarArr[i2].f4947for[i], iArr2[i2]));
                    }
                }
            }
        }
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f4946do.m7384final(iArr[i3]);
        }
        return new pe1(this.f4946do, iArr);
    }

    /* renamed from: break, reason: not valid java name */
    public int m5977break(int i) {
        int[] iArr = this.f4947for;
        int i2 = this.f4948if;
        int iM7381class = iArr[i2];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            iM7381class = this.f4946do.m7381class(iM7381class, i) ^ this.f4947for[i3];
        }
        return iM7381class;
    }

    /* renamed from: catch, reason: not valid java name */
    public pe1 m5978catch(pe1 pe1Var) {
        return new pe1(this.f4946do, m5961class(this.f4947for, pe1Var.f4947for));
    }

    /* renamed from: const, reason: not valid java name */
    public int m5979const(int i) {
        if (i < 0 || i > this.f4948if) {
            return 0;
        }
        return this.f4947for[i];
    }

    /* renamed from: continue, reason: not valid java name */
    public void m5980continue(int i) {
        if (!this.f4946do.m7380catch(i)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        this.f4947for = m5974volatile(this.f4947for, i);
        m5960case();
    }

    /* renamed from: default, reason: not valid java name */
    public pe1 m5981default(pe1 pe1Var, pe1 pe1Var2) {
        return new pe1(this.f4946do, m5963extends(this.f4947for, pe1Var.f4947for, pe1Var2.f4947for));
    }

    /* renamed from: do, reason: not valid java name */
    public pe1 m5982do(pe1 pe1Var) {
        return new pe1(this.f4946do, m5964if(this.f4947for, pe1Var.f4947for));
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof pe1)) {
            pe1 pe1Var = (pe1) obj;
            if (this.f4946do.equals(pe1Var.f4946do) && this.f4948if == pe1Var.f4948if && m5966import(this.f4947for, pe1Var.f4947for)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    public int m5983final() {
        int[] iArr = this.f4947for;
        int length = iArr.length - 1;
        if (iArr[length] == 0) {
            return -1;
        }
        return length;
    }

    /* renamed from: finally, reason: not valid java name */
    public pe1[] m5984finally(pe1 pe1Var) {
        int i = pe1Var.f4948if >> 1;
        int[] iArrM5967instanceof = m5967instanceof(pe1Var.f4947for);
        int[] iArrM5970return = m5970return(this.f4947for, pe1Var.f4947for);
        int[] iArr = {0};
        int[] iArr2 = {1};
        while (m5973try(iArrM5970return) > i) {
            int[][] iArrM5972this = m5972this(iArrM5967instanceof, iArrM5970return);
            int[] iArr3 = iArrM5972this[1];
            int[] iArrM5964if = m5964if(iArr, m5963extends(iArrM5972this[0], iArr2, pe1Var.f4947for));
            iArr = iArr2;
            iArr2 = iArrM5964if;
            iArrM5967instanceof = iArrM5970return;
            iArrM5970return = iArr3;
        }
        return new pe1[]{new pe1(this.f4946do, iArrM5970return), new pe1(this.f4946do, iArr2)};
    }

    /* renamed from: for, reason: not valid java name */
    public pe1 m5985for(int i) {
        int[] iArr = new int[i + 1];
        iArr[i] = 1;
        return new pe1(this.f4946do, m5964if(this.f4947for, iArr));
    }

    /* renamed from: goto, reason: not valid java name */
    public pe1[] m5986goto(pe1 pe1Var) {
        int[][] iArrM5972this = m5972this(this.f4947for, pe1Var.f4947for);
        return new pe1[]{new pe1(this.f4946do, iArrM5972this[0]), new pe1(this.f4946do, iArrM5972this[1])};
    }

    public int hashCode() {
        int iHashCode = this.f4946do.hashCode();
        int i = 0;
        while (true) {
            int[] iArr = this.f4947for;
            if (i >= iArr.length) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 31) + iArr[i];
            i++;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public pe1 m5987interface(int i) {
        return new pe1(this.f4946do, m5969protected(this.f4947for, i));
    }

    /* renamed from: new, reason: not valid java name */
    public void m5988new(pe1 pe1Var) {
        this.f4947for = m5964if(this.f4947for, pe1Var.f4947for);
        m5960case();
    }

    /* renamed from: package, reason: not valid java name */
    public pe1 m5989package(pe1[] pe1VarArr) {
        int length = pe1VarArr.length;
        int[] iArr = new int[length];
        int[] iArr2 = new int[length];
        int i = 0;
        while (true) {
            int[] iArr3 = this.f4947for;
            if (i >= iArr3.length) {
                break;
            }
            iArr2[i] = this.f4946do.m7381class(iArr3[i], iArr3[i]);
            i++;
        }
        for (int i2 = 0; i2 < length; i2++) {
            for (int i3 = 0; i3 < length; i3++) {
                if (i2 < pe1VarArr[i3].f4947for.length) {
                    iArr[i2] = this.f4946do.m7382do(iArr[i2], this.f4946do.m7381class(pe1VarArr[i3].f4947for[i2], iArr2[i3]));
                }
            }
        }
        return new pe1(this.f4946do, iArr);
    }

    /* renamed from: private, reason: not valid java name */
    public pe1 m5990private(pe1 pe1Var) {
        int[] iArrM2358do = fn0.m2358do(this.f4947for);
        int[] iArrM5963extends = m5963extends(iArrM2358do, iArrM2358do, pe1Var.f4947for);
        while (!m5966import(iArrM5963extends, this.f4947for)) {
            iArrM2358do = m5967instanceof(iArrM5963extends);
            iArrM5963extends = m5963extends(iArrM2358do, iArrM2358do, pe1Var.f4947for);
        }
        return new pe1(this.f4946do, iArrM2358do);
    }

    /* renamed from: public, reason: not valid java name */
    public pe1 m5991public(pe1 pe1Var) {
        return new pe1(this.f4946do, m5970return(this.f4947for, pe1Var.f4947for));
    }

    /* renamed from: static, reason: not valid java name */
    public pe1 m5992static(pe1 pe1Var, pe1 pe1Var2) {
        return new pe1(this.f4946do, m5971switch(this.f4947for, pe1Var.f4947for, pe1Var2.f4947for));
    }

    /* renamed from: strictfp, reason: not valid java name */
    public pe1 m5993strictfp(int i) {
        if (!this.f4946do.m7380catch(i)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        return new pe1(this.f4946do, m5974volatile(this.f4947for, i));
    }

    /* renamed from: super, reason: not valid java name */
    public byte[] m5994super() {
        int i = 8;
        int i2 = 1;
        while (this.f4946do.m7388new() > i) {
            i2++;
            i += 8;
        }
        byte[] bArr = new byte[this.f4947for.length * i2];
        int i3 = 0;
        for (int i4 = 0; i4 < this.f4947for.length; i4++) {
            int i5 = 0;
            while (i5 < i) {
                bArr[i3] = (byte) (this.f4947for[i4] >>> i5);
                i5 += 8;
                i3++;
            }
        }
        return bArr;
    }

    /* renamed from: throw, reason: not valid java name */
    public int m5995throw() {
        int i = this.f4948if;
        if (i == -1) {
            return 0;
        }
        return this.f4947for[i];
    }

    /* renamed from: throws, reason: not valid java name */
    public pe1 m5996throws(pe1 pe1Var) {
        return new pe1(this.f4946do, m5971switch(new int[]{1}, this.f4947for, pe1Var.f4947for));
    }

    public String toString() {
        String str = " Polynomial over " + this.f4946do.toString() + ": \n";
        for (int i = 0; i < this.f4947for.length; i++) {
            str = str + this.f4946do.m7387if(this.f4947for[i]) + "Y^" + i + "+";
        }
        return str + ";";
    }

    /* renamed from: transient, reason: not valid java name */
    public pe1 m5997transient(pe1 pe1Var) {
        return new pe1(this.f4946do, m5965implements(this.f4947for, pe1Var.f4947for));
    }
}
