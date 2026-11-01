package com.google.common.escape;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.j3;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import java.util.HashMap;
import java.util.Map;

@ki0
@o8
/* renamed from: com.google.common.escape.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static final com.google.common.escape.Cfor f14920do = new Cdo();

    /* renamed from: com.google.common.escape.new$do, reason: invalid class name */
    public static class Cdo extends com.google.common.escape.Cdo {
        @Override // com.google.common.escape.Cdo
        /* renamed from: for */
        public char[] mo3714for(char c) {
            return null;
        }

        @Override // com.google.common.escape.Cdo, com.google.common.escape.Cfor
        /* renamed from: if */
        public String mo852if(String str) {
            return (String) af1.m205continue(str);
        }
    }

    @o8
    /* renamed from: com.google.common.escape.new$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final Map<Character, String> f14921do;

        /* renamed from: for, reason: not valid java name */
        private char f14922for;

        /* renamed from: if, reason: not valid java name */
        private char f14923if;

        /* renamed from: new, reason: not valid java name */
        private String f14924new;

        /* renamed from: com.google.common.escape.new$for$do, reason: invalid class name */
        public class Cdo extends j3 {

            /* renamed from: else, reason: not valid java name */
            private final char[] f14925else;

            public Cdo(Map map, char c, char c2) {
                super((Map<Character, String>) map, c, c2);
                this.f14925else = Cfor.this.f14924new != null ? Cfor.this.f14924new.toCharArray() : null;
            }

            @Override // android.support.v4.j3
            /* renamed from: case */
            public char[] mo3713case(char c) {
                return this.f14925else;
            }
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }

        /* renamed from: for, reason: not valid java name */
        public com.google.common.escape.Cfor m16611for() {
            return new Cdo(this.f14921do, this.f14923if, this.f14922for);
        }

        @lf
        /* renamed from: if, reason: not valid java name */
        public Cfor m16612if(char c, String str) {
            af1.m205continue(str);
            this.f14921do.put(Character.valueOf(c), str);
            return this;
        }

        @lf
        /* renamed from: new, reason: not valid java name */
        public Cfor m16613new(char c, char c2) {
            this.f14923if = c;
            this.f14922for = c2;
            return this;
        }

        @lf
        /* renamed from: try, reason: not valid java name */
        public Cfor m16614try(@b51 String str) {
            this.f14924new = str;
            return this;
        }

        private Cfor() {
            this.f14921do = new HashMap();
            this.f14923if = (char) 0;
            this.f14922for = (char) 65535;
            this.f14924new = null;
        }
    }

    /* renamed from: com.google.common.escape.new$if, reason: invalid class name */
    public static class Cif extends Ccase {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ com.google.common.escape.Cdo f14927for;

        public Cif(com.google.common.escape.Cdo cdo) {
            this.f14927for = cdo;
        }

        @Override // com.google.common.escape.Ccase
        /* renamed from: new */
        public char[] mo853new(int i) {
            if (i < 65536) {
                return this.f14927for.mo3714for((char) i);
            }
            char[] cArr = new char[2];
            Character.toChars(i, cArr, 0);
            char[] cArrMo3714for = this.f14927for.mo3714for(cArr[0]);
            char[] cArrMo3714for2 = this.f14927for.mo3714for(cArr[1]);
            if (cArrMo3714for == null && cArrMo3714for2 == null) {
                return null;
            }
            int length = cArrMo3714for != null ? cArrMo3714for.length : 1;
            char[] cArr2 = new char[(cArrMo3714for2 != null ? cArrMo3714for2.length : 1) + length];
            if (cArrMo3714for != null) {
                for (int i2 = 0; i2 < cArrMo3714for.length; i2++) {
                    cArr2[i2] = cArrMo3714for[i2];
                }
            } else {
                cArr2[0] = cArr[0];
            }
            if (cArrMo3714for2 != null) {
                for (int i3 = 0; i3 < cArrMo3714for2.length; i3++) {
                    cArr2[length + i3] = cArrMo3714for2[i3];
                }
            } else {
                cArr2[length] = cArr[1];
            }
            return cArr2;
        }
    }

    private Cnew() {
    }

    /* renamed from: case, reason: not valid java name */
    private static String m16603case(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    /* renamed from: do, reason: not valid java name */
    public static Ccase m16604do(com.google.common.escape.Cfor cfor) {
        af1.m205continue(cfor);
        if (cfor instanceof Ccase) {
            return (Ccase) cfor;
        }
        if (cfor instanceof com.google.common.escape.Cdo) {
            return m16605else((com.google.common.escape.Cdo) cfor);
        }
        throw new IllegalArgumentException("Cannot create a UnicodeEscaper from: " + cfor.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    private static Ccase m16605else(com.google.common.escape.Cdo cdo) {
        return new Cif(cdo);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m16606for(com.google.common.escape.Cdo cdo, char c) {
        return m16603case(cdo.mo3714for(c));
    }

    /* renamed from: if, reason: not valid java name */
    public static Cfor m16607if() {
        return new Cfor(null);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m16608new(Ccase ccase, int i) {
        return m16603case(ccase.mo853new(i));
    }

    /* renamed from: try, reason: not valid java name */
    public static com.google.common.escape.Cfor m16609try() {
        return f14920do;
    }
}
