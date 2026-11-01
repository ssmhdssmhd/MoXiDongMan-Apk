package android.support.v4;

import com.google.common.base.Cdefault;

@ki0
/* loaded from: classes.dex */
public final class te2 {
    private te2() {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m7840break(boolean z, @b51 String str, int i, long j) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Integer.valueOf(i), Long.valueOf(j)));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m7841case(boolean z, @b51 String str, char c, @b51 Object obj) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Character.valueOf(c), obj));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m7842catch(boolean z, @b51 String str, int i, @b51 Object obj) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Integer.valueOf(i), obj));
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m7843class(boolean z, @b51 String str, long j) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Long.valueOf(j)));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m7844const(boolean z, @b51 String str, long j, char c) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Long.valueOf(j), Character.valueOf(c)));
        }
    }

    @lf
    /* renamed from: default, reason: not valid java name */
    public static <T> T m7845default(@b51 T t) {
        return (T) m7848extends(t, "expected a non-null reference", new Object[0]);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7846do(boolean z) {
        if (!z) {
            throw new ue2();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m7847else(boolean z, @b51 String str, int i) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Integer.valueOf(i)));
        }
    }

    @lf
    /* renamed from: extends, reason: not valid java name */
    public static <T> T m7848extends(@b51 T t, @b51 String str, @b51 Object... objArr) {
        m7863throws(t != null, str, objArr);
        return t;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m7849final(boolean z, @b51 String str, long j, int i) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Long.valueOf(j), Integer.valueOf(i)));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7850for(boolean z, @b51 String str, char c, char c2) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Character.valueOf(c), Character.valueOf(c2)));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7851goto(boolean z, @b51 String str, int i, char c) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Integer.valueOf(i), Character.valueOf(c)));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7852if(boolean z, @b51 String str, char c) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Character.valueOf(c)));
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m7853import(boolean z, @b51 String str, @b51 Object obj, char c) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, obj, Character.valueOf(c)));
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static void m7854native(boolean z, @b51 String str, @b51 Object obj, int i) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, obj, Integer.valueOf(i)));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m7855new(boolean z, @b51 String str, char c, int i) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Character.valueOf(c), Integer.valueOf(i)));
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m7856public(boolean z, @b51 String str, @b51 Object obj, long j) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, obj, Long.valueOf(j)));
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m7857return(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, obj, obj2));
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m7858static(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2, @b51 Object obj3) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, obj, obj2, obj3));
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static void m7859super(boolean z, @b51 String str, long j, long j2) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m7860switch(boolean z, @b51 String str, @b51 Object obj, @b51 Object obj2, @b51 Object obj3, @b51 Object obj4) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, obj, obj2, obj3, obj4));
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m7861this(boolean z, @b51 String str, int i, int i2) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m7862throw(boolean z, @b51 String str, long j, @b51 Object obj) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Long.valueOf(j), obj));
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m7863throws(boolean z, @b51 String str, @b51 Object... objArr) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, objArr));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7864try(boolean z, @b51 String str, char c, long j) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, Character.valueOf(c), Long.valueOf(j)));
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static void m7865while(boolean z, @b51 String str, @b51 Object obj) {
        if (!z) {
            throw new ue2(Cdefault.m15043try(str, obj));
        }
    }
}
