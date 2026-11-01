package android.support.v4;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import net.minidev.asm.FieldFilter;

/* loaded from: classes3.dex */
public class o {

    /* renamed from: case, reason: not valid java name */
    public Type f4385case;

    /* renamed from: do, reason: not valid java name */
    public Field f4386do;

    /* renamed from: else, reason: not valid java name */
    public String f4387else;

    /* renamed from: for, reason: not valid java name */
    public Method f4388for;

    /* renamed from: if, reason: not valid java name */
    public Method f4389if;

    /* renamed from: new, reason: not valid java name */
    public int f4390new;

    /* renamed from: try, reason: not valid java name */
    public Class<?> f4391try;

    public o(Class<?> cls, Field field, FieldFilter fieldFilter) {
        this.f4387else = field.getName();
        int modifiers = field.getModifiers();
        if ((modifiers & 136) > 0) {
            return;
        }
        if ((modifiers & 1) > 0) {
            this.f4386do = field;
        }
        try {
            this.f4389if = cls.getDeclaredMethod(Cthrow.m7924goto(field.getName()), field.getType());
        } catch (Exception unused) {
        }
        boolean zEquals = field.getType().equals(Boolean.TYPE);
        try {
            this.f4388for = cls.getDeclaredMethod(zEquals ? Cthrow.m7922else(field.getName()) : Cthrow.m7920case(field.getName()), new Class[0]);
        } catch (Exception unused2) {
        }
        if (this.f4388for == null && zEquals) {
            try {
                this.f4388for = cls.getDeclaredMethod(Cthrow.m7920case(field.getName()), new Class[0]);
            } catch (Exception unused3) {
            }
        }
        if (this.f4386do == null && this.f4388for == null && this.f4389if == null) {
            return;
        }
        Method method = this.f4388for;
        if (method != null && !fieldFilter.canUse(field, method)) {
            this.f4388for = null;
        }
        Method method2 = this.f4389if;
        if (method2 != null && !fieldFilter.canUse(field, method2)) {
            this.f4389if = null;
        }
        if (this.f4388for == null && this.f4389if == null && this.f4386do == null) {
            return;
        }
        this.f4391try = field.getType();
        this.f4385case = field.getGenericType();
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m5427case() {
        return this.f4389if == null;
    }

    /* renamed from: do, reason: not valid java name */
    public Type m5428do() {
        return this.f4385case;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m5429else() {
        return (this.f4386do == null && this.f4388for == null) ? false : true;
    }

    /* renamed from: for, reason: not valid java name */
    public String m5430for() {
        return this.f4387else;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m5431goto() {
        return (this.f4386do == null && this.f4388for == null && this.f4389if == null) ? false : true;
    }

    /* renamed from: if, reason: not valid java name */
    public int m5432if() {
        return this.f4390new;
    }

    /* renamed from: new, reason: not valid java name */
    public Class<?> m5433new() {
        return this.f4391try;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m5434this() {
        return (this.f4386do == null && this.f4388for == null) ? false : true;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m5435try() {
        return this.f4391try.isEnum();
    }
}
