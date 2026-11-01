package android.support.v4;

import com.google.common.base.Cdefault;
import java.util.Objects;

@ki0
/* loaded from: classes.dex */
public final class af1 {
    private af1() {
    }

    public static void A(boolean z, @b51 String str, int i) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Integer.valueOf(i)));
        }
    }

    public static void B(boolean z, @b51 String str, int i, char c) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Integer.valueOf(i), Character.valueOf(c)));
        }
    }

    public static void C(boolean z, @b51 String str, int i, int i2) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    public static void D(boolean z, @b51 String str, int i, long j) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Integer.valueOf(i), Long.valueOf(j)));
        }
    }

    public static void E(boolean z, @b51 String str, int i, @b51 Object obj) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Integer.valueOf(i), obj));
        }
    }

    public static void F(boolean z, @b51 String str, long j) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Long.valueOf(j)));
        }
    }

    public static void G(boolean z, @b51 String str, long j, char c) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Long.valueOf(j), Character.valueOf(c)));
        }
    }

    public static void H(boolean z, @b51 String str, long j, int i) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Long.valueOf(j), Integer.valueOf(i)));
        }
    }

    public static void I(boolean z, @b51 String str, long j, long j2) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    public static void J(boolean z, @b51 String str, long j, @b51 Object obj) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Long.valueOf(j), obj));
        }
    }

    public static void K(boolean z, @b51 String str, @b51 Object obj) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, obj));
        }
    }

    public static void L(boolean z, @b51 String str, @b51 Object obj, char c) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, obj, Character.valueOf(c)));
        }
    }

    public static void M(boolean z, @b51 String str, @b51 Object obj, int i) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, obj, Integer.valueOf(i)));
        }
    }

    public static void N(boolean z, @b51 String str, @b51 Object obj, long j) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, obj, Long.valueOf(j)));
        }
    }

    public static void O(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, obj, obj2));
        }
    }

    public static void P(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2, @b51 Object obj3) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, obj, obj2, obj3));
        }
    }

    public static void Q(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2, @b51 Object obj3, @b51 Object obj4) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, obj, obj2, obj3, obj4));
        }
    }

    public static void R(boolean z, @b51 String str, @b51 Object... objArr) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, objArr));
        }
    }

    @c41
    @lf
    public static <T> T a(@c41 T t, @b51 String str, int i, int i2) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @lf
    /* renamed from: abstract, reason: not valid java name */
    public static int m199abstract(int i, int i2, @b51 String str) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(m207do(i, i2, str));
        }
        return i;
    }

    @c41
    @lf
    public static <T> T b(@c41 T t, @b51 String str, int i, long j) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Integer.valueOf(i), Long.valueOf(j)));
    }

    /* renamed from: break, reason: not valid java name */
    public static void m200break(boolean z, @b51 String str, char c, @b51 Object obj) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Character.valueOf(c), obj));
        }
    }

    @c41
    @lf
    public static <T> T c(@c41 T t, @b51 String str, int i, @b51 Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Integer.valueOf(i), obj));
    }

    /* renamed from: case, reason: not valid java name */
    public static void m201case(boolean z, @b51 String str, char c) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Character.valueOf(c)));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m202catch(boolean z, @b51 String str, int i) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Integer.valueOf(i)));
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m203class(boolean z, @b51 String str, int i, char c) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Integer.valueOf(i), Character.valueOf(c)));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m204const(boolean z, @b51 String str, int i, int i2) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    @c41
    @lf
    /* renamed from: continue, reason: not valid java name */
    public static <T> T m205continue(@c41 T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @c41
    @lf
    public static <T> T d(@c41 T t, @b51 String str, long j) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Long.valueOf(j)));
    }

    /* renamed from: default, reason: not valid java name */
    public static void m206default(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, obj, obj2));
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static String m207do(int i, int i2, @b51 String str) {
        if (i < 0) {
            return Cdefault.m15043try("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return Cdefault.m15043try("%s (%s) must be less than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }

    @c41
    @lf
    public static <T> T e(@c41 T t, @b51 String str, long j, char c) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Long.valueOf(j), Character.valueOf(c)));
    }

    /* renamed from: else, reason: not valid java name */
    public static void m208else(boolean z, @b51 String str, char c, char c2) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Character.valueOf(c), Character.valueOf(c2)));
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m209extends(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2, @b51 Object obj3) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, obj, obj2, obj3));
        }
    }

    @c41
    @lf
    public static <T> T f(@c41 T t, @b51 String str, long j, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Long.valueOf(j), Integer.valueOf(i)));
    }

    /* renamed from: final, reason: not valid java name */
    public static void m210final(boolean z, @b51 String str, int i, long j) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Integer.valueOf(i), Long.valueOf(j)));
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m211finally(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2, @b51 Object obj3, @b51 Object obj4) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, obj, obj2, obj3, obj4));
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static String m212for(int i, int i2, int i3) {
        return (i < 0 || i > i3) ? m214if(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m214if(i2, i3, "end index") : Cdefault.m15043try("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
    }

    @c41
    @lf
    public static <T> T g(@c41 T t, @b51 String str, long j, long j2) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Long.valueOf(j), Long.valueOf(j2)));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m213goto(boolean z, @b51 String str, char c, int i) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Character.valueOf(c), Integer.valueOf(i)));
        }
    }

    @c41
    @lf
    public static <T> T h(@c41 T t, @b51 String str, long j, @b51 Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Long.valueOf(j), obj));
    }

    @c41
    @lf
    public static <T> T i(@c41 T t, @b51 String str, @b51 Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, obj));
    }

    /* renamed from: if, reason: not valid java name */
    private static String m214if(int i, int i2, @b51 String str) {
        if (i < 0) {
            return Cdefault.m15043try("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return Cdefault.m15043try("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }

    @c41
    @lf
    /* renamed from: implements, reason: not valid java name */
    public static <T> T m215implements(@c41 T t, @b51 String str, char c, @b51 Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Character.valueOf(c), obj));
    }

    /* renamed from: import, reason: not valid java name */
    public static void m216import(boolean z, @b51 String str, long j, int i) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Long.valueOf(j), Integer.valueOf(i)));
        }
    }

    @c41
    @lf
    /* renamed from: instanceof, reason: not valid java name */
    public static <T> T m217instanceof(@c41 T t, @b51 String str, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Integer.valueOf(i)));
    }

    @c41
    @lf
    /* renamed from: interface, reason: not valid java name */
    public static <T> T m218interface(@c41 T t, @b51 String str, char c, char c2) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Character.valueOf(c), Character.valueOf(c2)));
    }

    @c41
    @lf
    public static <T> T j(@c41 T t, @b51 String str, @b51 Object obj, char c) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, obj, Character.valueOf(c)));
    }

    @c41
    @lf
    public static <T> T k(@c41 T t, @b51 String str, @b51 Object obj, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, obj, Integer.valueOf(i)));
    }

    @c41
    @lf
    public static <T> T l(@c41 T t, @b51 String str, @b51 Object obj, long j) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, obj, Long.valueOf(j)));
    }

    @c41
    @lf
    public static <T> T m(@c41 T t, @b51 String str, @b51 Object obj, @b51 Object obj2) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, obj, obj2));
    }

    @c41
    @lf
    public static <T> T n(@c41 T t, @b51 String str, @b51 Object obj, @b51 Object obj2, @b51 Object obj3) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, obj, obj2, obj3));
    }

    /* renamed from: native, reason: not valid java name */
    public static void m219native(boolean z, @b51 String str, long j, long j2) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m220new(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    @c41
    @lf
    public static <T> T o(@c41 T t, @b51 String str, @b51 Object obj, @b51 Object obj2, @b51 Object obj3, @b51 Object obj4) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, obj, obj2, obj3, obj4));
    }

    @c41
    @lf
    public static <T> T p(@c41 T t, @b51 String str, @b51 Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, objArr));
    }

    /* renamed from: package, reason: not valid java name */
    public static void m221package(boolean z, @b51 String str, @b51 Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, objArr));
        }
    }

    @lf
    /* renamed from: private, reason: not valid java name */
    public static int m222private(int i, int i2) {
        return m199abstract(i, i2, "index");
    }

    @c41
    @lf
    /* renamed from: protected, reason: not valid java name */
    public static <T> T m223protected(@c41 T t, @b51 String str, char c, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Character.valueOf(c), Integer.valueOf(i)));
    }

    /* renamed from: public, reason: not valid java name */
    public static void m224public(boolean z, @b51 String str, long j, @b51 Object obj) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Long.valueOf(j), obj));
        }
    }

    @lf
    public static int q(int i, int i2) {
        return r(i, i2, "index");
    }

    @lf
    public static int r(int i, int i2, @b51 String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m214if(i, i2, str));
        }
        return i;
    }

    /* renamed from: return, reason: not valid java name */
    public static void m225return(boolean z, @b51 String str, @b51 Object obj) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, obj));
        }
    }

    public static void s(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException(m212for(i, i2, i3));
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m226static(boolean z, @b51 String str, @b51 Object obj, char c) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, obj, Character.valueOf(c)));
        }
    }

    @c41
    @lf
    /* renamed from: strictfp, reason: not valid java name */
    public static <T> T m227strictfp(@c41 T t, @b51 Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: super, reason: not valid java name */
    public static void m228super(boolean z, @b51 String str, int i, @b51 Object obj) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Integer.valueOf(i), obj));
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m229switch(boolean z, @b51 String str, @b51 Object obj, int i) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, obj, Integer.valueOf(i)));
        }
    }

    @c41
    @lf
    /* renamed from: synchronized, reason: not valid java name */
    public static <T> T m230synchronized(@c41 T t, @b51 String str, int i, char c) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Integer.valueOf(i), Character.valueOf(c)));
    }

    public static void t(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m231this(boolean z, @b51 String str, char c, long j) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Character.valueOf(c), Long.valueOf(j)));
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m232throw(boolean z, @b51 String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Long.valueOf(j)));
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m233throws(boolean z, @b51 String str, @b51 Object obj, long j) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, obj, Long.valueOf(j)));
        }
    }

    @c41
    @lf
    /* renamed from: transient, reason: not valid java name */
    public static <T> T m234transient(@c41 T t, @b51 String str, char c, long j) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Character.valueOf(c), Long.valueOf(j)));
    }

    /* renamed from: try, reason: not valid java name */
    public static void m235try(boolean z, @b51 Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void u(boolean z, @b51 Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void v(boolean z, @b51 String str, char c) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Character.valueOf(c)));
        }
    }

    @c41
    @lf
    /* renamed from: volatile, reason: not valid java name */
    public static <T> T m236volatile(@c41 T t, @b51 String str, char c) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(Cdefault.m15043try(str, Character.valueOf(c)));
    }

    public static void w(boolean z, @b51 String str, char c, char c2) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Character.valueOf(c), Character.valueOf(c2)));
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static void m237while(boolean z, @b51 String str, long j, char c) {
        if (!z) {
            throw new IllegalArgumentException(Cdefault.m15043try(str, Long.valueOf(j), Character.valueOf(c)));
        }
    }

    public static void x(boolean z, @b51 String str, char c, int i) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Character.valueOf(c), Integer.valueOf(i)));
        }
    }

    public static void y(boolean z, @b51 String str, char c, long j) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Character.valueOf(c), Long.valueOf(j)));
        }
    }

    public static void z(boolean z, @b51 String str, char c, @b51 Object obj) {
        if (!z) {
            throw new IllegalStateException(Cdefault.m15043try(str, Character.valueOf(c), obj));
        }
    }
}
