package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.hy1;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.Arrays;
import java.util.Objects;
import org.slf4j.helpers.MessageFormatter;

@ki0
/* renamed from: com.google.common.base.super, reason: invalid class name */
/* loaded from: classes.dex */
public final class Csuper {

    /* renamed from: com.google.common.base.super$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final String f13728do;

        /* renamed from: for, reason: not valid java name */
        private Cdo f13729for;

        /* renamed from: if, reason: not valid java name */
        private final Cdo f13730if;

        /* renamed from: new, reason: not valid java name */
        private boolean f13731new;

        /* renamed from: com.google.common.base.super$if$do, reason: invalid class name */
        public static final class Cdo {

            /* renamed from: do, reason: not valid java name */
            @b51
            public String f13732do;

            /* renamed from: for, reason: not valid java name */
            @b51
            public Cdo f13733for;

            /* renamed from: if, reason: not valid java name */
            @b51
            public Object f13734if;

            private Cdo() {
            }
        }

        /* renamed from: break, reason: not valid java name */
        private Cif m15187break(String str, @b51 Object obj) {
            Cdo cdoM15188goto = m15188goto();
            cdoM15188goto.f13734if = obj;
            cdoM15188goto.f13732do = (String) af1.m205continue(str);
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        private Cdo m15188goto() {
            Cdo cdo = new Cdo();
            this.f13729for.f13733for = cdo;
            this.f13729for = cdo;
            return cdo;
        }

        /* renamed from: this, reason: not valid java name */
        private Cif m15189this(@b51 Object obj) {
            m15188goto().f13734if = obj;
            return this;
        }

        @lf
        /* renamed from: case, reason: not valid java name */
        public Cif m15190case(String str, @b51 Object obj) {
            return m15187break(str, obj);
        }

        @lf
        /* renamed from: catch, reason: not valid java name */
        public Cif m15191catch(char c) {
            return m15189this(String.valueOf(c));
        }

        @lf
        /* renamed from: class, reason: not valid java name */
        public Cif m15192class(double d) {
            return m15189this(String.valueOf(d));
        }

        @lf
        /* renamed from: const, reason: not valid java name */
        public Cif m15193const(float f) {
            return m15189this(String.valueOf(f));
        }

        @lf
        /* renamed from: do, reason: not valid java name */
        public Cif m15194do(String str, char c) {
            return m15187break(str, String.valueOf(c));
        }

        @lf
        /* renamed from: else, reason: not valid java name */
        public Cif m15195else(String str, boolean z) {
            return m15187break(str, String.valueOf(z));
        }

        @lf
        /* renamed from: final, reason: not valid java name */
        public Cif m15196final(int i) {
            return m15189this(String.valueOf(i));
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public Cif m15197for(String str, float f) {
            return m15187break(str, String.valueOf(f));
        }

        @lf
        /* renamed from: if, reason: not valid java name */
        public Cif m15198if(String str, double d) {
            return m15187break(str, String.valueOf(d));
        }

        @lf
        /* renamed from: import, reason: not valid java name */
        public Cif m15199import() {
            this.f13731new = true;
            return this;
        }

        @lf
        /* renamed from: new, reason: not valid java name */
        public Cif m15200new(String str, int i) {
            return m15187break(str, String.valueOf(i));
        }

        @lf
        /* renamed from: super, reason: not valid java name */
        public Cif m15201super(long j) {
            return m15189this(String.valueOf(j));
        }

        @lf
        /* renamed from: throw, reason: not valid java name */
        public Cif m15202throw(@b51 Object obj) {
            return m15189this(obj);
        }

        public String toString() {
            boolean z = this.f13731new;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f13728do);
            sb.append(MessageFormatter.DELIM_START);
            String str = "";
            for (Cdo cdo = this.f13730if.f13733for; cdo != null; cdo = cdo.f13733for) {
                Object obj = cdo.f13734if;
                if (!z || obj != null) {
                    sb.append(str);
                    String str2 = cdo.f13732do;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append(hy1.f2563new);
                    }
                    if (obj == null || !obj.getClass().isArray()) {
                        sb.append(obj);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    str = ", ";
                }
            }
            sb.append(MessageFormatter.DELIM_STOP);
            return sb.toString();
        }

        @lf
        /* renamed from: try, reason: not valid java name */
        public Cif m15203try(String str, long j) {
            return m15187break(str, String.valueOf(j));
        }

        @lf
        /* renamed from: while, reason: not valid java name */
        public Cif m15204while(boolean z) {
            return m15189this(String.valueOf(z));
        }

        private Cif(String str) {
            Cdo cdo = new Cdo();
            this.f13730if = cdo;
            this.f13729for = cdo;
            this.f13731new = false;
            this.f13728do = (String) af1.m205continue(str);
        }
    }

    private Csuper() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> T m15183do(@b51 T t, @b51 T t2) {
        if (t != null) {
            return t;
        }
        Objects.requireNonNull(t2, "Both parameters are null");
        return t2;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m15184for(Object obj) {
        return new Cif(obj.getClass().getSimpleName());
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m15185if(Class<?> cls) {
        return new Cif(cls.getSimpleName());
    }

    /* renamed from: new, reason: not valid java name */
    public static Cif m15186new(String str) {
        return new Cif(str);
    }
}
