package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;

/* loaded from: classes3.dex */
public class se0 {

    /* renamed from: do, reason: not valid java name */
    private int f6133do;

    /* renamed from: if, reason: not valid java name */
    private int f6134if;

    public se0(int i) {
        this.f6133do = 0;
        if (i >= 32) {
            throw new IllegalArgumentException(" Error: the degree of field is too large ");
        }
        if (i < 1) {
            throw new IllegalArgumentException(" Error: the degree of field is non-positive ");
        }
        this.f6133do = i;
        this.f6134if = qe1.m6544try(i);
    }

    public se0(int i, int i2) {
        this.f6133do = 0;
        if (i != qe1.m6541if(i2)) {
            throw new IllegalArgumentException(" Error: the degree is not correct");
        }
        if (!qe1.m6536case(i2)) {
            throw new IllegalArgumentException(" Error: given polynomial is reducible");
        }
        this.f6133do = i;
        this.f6134if = i2;
    }

    public se0(se0 se0Var) {
        this.f6133do = 0;
        this.f6133do = se0Var.f6133do;
        this.f6134if = se0Var.f6134if;
    }

    public se0(byte[] bArr) {
        this.f6133do = 0;
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        int iM4761case = lt0.m4761case(bArr);
        this.f6134if = iM4761case;
        if (!qe1.m6536case(iM4761case)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.f6133do = qe1.m6541if(this.f6134if);
    }

    /* renamed from: const, reason: not valid java name */
    private static String m7377const(int i) {
        if (i == 0) {
            return "0";
        }
        String str = ((byte) (i & 1)) == 1 ? "1" : "";
        int i2 = i >>> 1;
        int i3 = 1;
        while (i2 != 0) {
            if (((byte) (i2 & 1)) == 1) {
                str = str + "+x^" + i3;
            }
            i2 >>>= 1;
            i3++;
        }
        return str;
    }

    /* renamed from: break, reason: not valid java name */
    public int m7378break(int i) {
        return m7385for(i, (1 << this.f6133do) - 2);
    }

    /* renamed from: case, reason: not valid java name */
    public int m7379case() {
        return this.f6134if;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m7380catch(int i) {
        int i2 = this.f6133do;
        return i2 == 31 ? i >= 0 : i >= 0 && i < (1 << i2);
    }

    /* renamed from: class, reason: not valid java name */
    public int m7381class(int i, int i2) {
        return qe1.m6538else(i, i2, this.f6134if);
    }

    /* renamed from: do, reason: not valid java name */
    public int m7382do(int i, int i2) {
        return i ^ i2;
    }

    /* renamed from: else, reason: not valid java name */
    public int m7383else(SecureRandom secureRandom) {
        return dl1.m1406do(secureRandom, 1 << this.f6133do);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof se0)) {
            se0 se0Var = (se0) obj;
            if (this.f6133do == se0Var.f6133do && this.f6134if == se0Var.f6134if) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    public int m7384final(int i) {
        for (int i2 = 1; i2 < this.f6133do; i2++) {
            i = m7381class(i, i);
        }
        return i;
    }

    /* renamed from: for, reason: not valid java name */
    public int m7385for(int i, int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i2 < 0) {
            i = m7378break(i);
            i2 = -i2;
        }
        int iM7381class = 1;
        while (i2 != 0) {
            if ((i2 & 1) == 1) {
                iM7381class = m7381class(iM7381class, i);
            }
            i = m7381class(i, i);
            i2 >>>= 1;
        }
        return iM7381class;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m7386goto() {
        return m7389this(Cfor.m33599case());
    }

    public int hashCode() {
        return this.f6134if;
    }

    /* renamed from: if, reason: not valid java name */
    public String m7387if(int i) {
        StringBuilder sb;
        String str;
        String string = "";
        for (int i2 = 0; i2 < this.f6133do; i2++) {
            if ((((byte) i) & 1) == 0) {
                sb = new StringBuilder();
                str = "0";
            } else {
                sb = new StringBuilder();
                str = "1";
            }
            sb.append(str);
            sb.append(string);
            string = sb.toString();
            i >>>= 1;
        }
        return string;
    }

    /* renamed from: new, reason: not valid java name */
    public int m7388new() {
        return this.f6133do;
    }

    /* renamed from: this, reason: not valid java name */
    public int m7389this(SecureRandom secureRandom) {
        int iM1406do = dl1.m1406do(secureRandom, 1 << this.f6133do);
        int i = 0;
        while (iM1406do == 0 && i < 1048576) {
            iM1406do = dl1.m1406do(secureRandom, 1 << this.f6133do);
            i++;
        }
        if (i == 1048576) {
            return 1;
        }
        return iM1406do;
    }

    public String toString() {
        return "Finite Field GF(2^" + this.f6133do + ") = GF(2)[X]/<" + m7377const(this.f6134if) + "> ";
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m7390try() {
        return lt0.m4768new(this.f6134if);
    }
}
