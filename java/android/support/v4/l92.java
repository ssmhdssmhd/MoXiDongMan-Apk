package android.support.v4;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Map;
import org.apache.commons.lang3.reflect.Ctry;
import org.apache.commons.lang3.reflect.Typed;

/* loaded from: classes3.dex */
public abstract class l92<T> implements Typed<T> {

    /* renamed from: for, reason: not valid java name */
    private static final TypeVariable<Class<l92>> f3580for = l92.class.getTypeParameters()[0];

    /* renamed from: do, reason: not valid java name */
    public final Type f3581do;

    /* renamed from: if, reason: not valid java name */
    private final String f3582if;

    public l92() {
        Map<TypeVariable<?>, Type> mapM32515extends = Ctry.m32515extends(getClass(), l92.class);
        TypeVariable<Class<l92>> typeVariable = f3580for;
        Type type = (Type) ee2.m1832instanceof(mapM32515extends.get(typeVariable), "%s does not assign type parameter %s", getClass(), Ctry.f(typeVariable));
        this.f3581do = type;
        this.f3582if = String.format("%s<%s>", l92.class.getSimpleName(), Ctry.g(type));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l92) {
            return Ctry.m32506break(this.f3581do, ((l92) obj).f3581do);
        }
        return false;
    }

    @Override // org.apache.commons.lang3.reflect.Typed
    public Type getType() {
        return this.f3581do;
    }

    public int hashCode() {
        return this.f3581do.hashCode() | 592;
    }

    public String toString() {
        return this.f3582if;
    }
}
