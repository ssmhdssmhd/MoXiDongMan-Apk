package org.apache.commons.lang3.text;

import android.support.v4.ca2;
import java.util.Arrays;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.apache.commons.lang3.text.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static final Cnew f28758do = new Cdo(',');

    /* renamed from: if, reason: not valid java name */
    private static final Cnew f28762if = new Cdo('\t');

    /* renamed from: for, reason: not valid java name */
    private static final Cnew f28760for = new Cdo(' ');

    /* renamed from: new, reason: not valid java name */
    private static final Cnew f28763new = new Cif(" \t\n\r\f".toCharArray());

    /* renamed from: try, reason: not valid java name */
    private static final Cnew f28765try = new Ctry();

    /* renamed from: case, reason: not valid java name */
    private static final Cnew f28757case = new Cdo('\'');

    /* renamed from: else, reason: not valid java name */
    private static final Cnew f28759else = new Cdo(ca2.f674do);

    /* renamed from: goto, reason: not valid java name */
    private static final Cnew f28761goto = new Cif("'\"".toCharArray());

    /* renamed from: this, reason: not valid java name */
    private static final Cnew f28764this = new Cfor();

    /* renamed from: org.apache.commons.lang3.text.new$do, reason: invalid class name */
    public static final class Cdo extends Cnew {

        /* renamed from: break, reason: not valid java name */
        private final char f28766break;

        public Cdo(char c) {
            this.f28766break = c;
        }

        @Override // org.apache.commons.lang3.text.Cnew
        /* renamed from: else */
        public int mo32569else(char[] cArr, int i, int i2, int i3) {
            return this.f28766break == cArr[i] ? 1 : 0;
        }
    }

    /* renamed from: org.apache.commons.lang3.text.new$for, reason: invalid class name */
    public static final class Cfor extends Cnew {
        @Override // org.apache.commons.lang3.text.Cnew
        /* renamed from: else */
        public int mo32569else(char[] cArr, int i, int i2, int i3) {
            return 0;
        }
    }

    /* renamed from: org.apache.commons.lang3.text.new$if, reason: invalid class name */
    public static final class Cif extends Cnew {

        /* renamed from: break, reason: not valid java name */
        private final char[] f28767break;

        public Cif(char[] cArr) {
            char[] cArr2 = (char[]) cArr.clone();
            this.f28767break = cArr2;
            Arrays.sort(cArr2);
        }

        @Override // org.apache.commons.lang3.text.Cnew
        /* renamed from: else */
        public int mo32569else(char[] cArr, int i, int i2, int i3) {
            return Arrays.binarySearch(this.f28767break, cArr[i]) >= 0 ? 1 : 0;
        }
    }

    /* renamed from: org.apache.commons.lang3.text.new$new, reason: invalid class name and collision with other inner class name */
    public static final class C0392new extends Cnew {

        /* renamed from: break, reason: not valid java name */
        private final char[] f28768break;

        public C0392new(String str) {
            this.f28768break = str.toCharArray();
        }

        @Override // org.apache.commons.lang3.text.Cnew
        /* renamed from: else */
        public int mo32569else(char[] cArr, int i, int i2, int i3) {
            int length = this.f28768break.length;
            if (i + length > i3) {
                return 0;
            }
            int i4 = 0;
            while (true) {
                char[] cArr2 = this.f28768break;
                if (i4 >= cArr2.length) {
                    return length;
                }
                if (cArr2[i4] != cArr[i]) {
                    return 0;
                }
                i4++;
                i++;
            }
        }
    }

    /* renamed from: org.apache.commons.lang3.text.new$try, reason: invalid class name */
    public static final class Ctry extends Cnew {
        @Override // org.apache.commons.lang3.text.Cnew
        /* renamed from: else */
        public int mo32569else(char[] cArr, int i, int i2, int i3) {
            return cArr[i] <= ' ' ? 1 : 0;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static Cnew m32555break() {
        return f28757case;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cnew m32556catch() {
        return f28760for;
    }

    /* renamed from: class, reason: not valid java name */
    public static Cnew m32557class() {
        return f28763new;
    }

    /* renamed from: const, reason: not valid java name */
    public static Cnew m32558const(String str) {
        return Cclass.A(str) ? f28764this : new C0392new(str);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cnew m32559do(char c) {
        return new Cdo(c);
    }

    /* renamed from: final, reason: not valid java name */
    public static Cnew m32560final() {
        return f28762if;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cnew m32561for(char... cArr) {
        return (cArr == null || cArr.length == 0) ? f28764this : cArr.length == 1 ? new Cdo(cArr[0]) : new Cif(cArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Cnew m32562goto() {
        return f28764this;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cnew m32563if(String str) {
        return Cclass.A(str) ? f28764this : str.length() == 1 ? new Cdo(str.charAt(0)) : new Cif(str.toCharArray());
    }

    /* renamed from: new, reason: not valid java name */
    public static Cnew m32564new() {
        return f28758do;
    }

    /* renamed from: super, reason: not valid java name */
    public static Cnew m32565super() {
        return f28765try;
    }

    /* renamed from: this, reason: not valid java name */
    public static Cnew m32566this() {
        return f28761goto;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cnew m32567try() {
        return f28759else;
    }

    /* renamed from: case, reason: not valid java name */
    public int m32568case(char[] cArr, int i) {
        return mo32569else(cArr, i, 0, cArr.length);
    }

    /* renamed from: else, reason: not valid java name */
    public abstract int mo32569else(char[] cArr, int i, int i2, int i3);
}
