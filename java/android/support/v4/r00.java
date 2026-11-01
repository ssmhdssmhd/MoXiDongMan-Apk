package android.support.v4;

import java.lang.reflect.Type;
import org.apache.commons.lang3.Cgoto;
import org.apache.commons.lang3.reflect.Ctry;

/* loaded from: classes3.dex */
public abstract class r00<T> extends pb1<T, T> {
    private static final long serialVersionUID = 1;
    private final String fieldName;
    private final Type type = (Type) Cgoto.m32400throw(Ctry.m32515extends(getClass(), r00.class).get(r00.class.getTypeParameters()[0]), Object.class);

    public r00(String str) {
        this.fieldName = str;
    }

    public final String getFieldName() {
        return this.fieldName;
    }

    public final Type getType() {
        return this.type;
    }

    @Override // java.util.Map.Entry
    public final T setValue(T t) {
        throw new UnsupportedOperationException("Cannot alter Diff object.");
    }

    @Override // android.support.v4.pb1
    public final String toString() {
        return String.format("[%s: %s, %s]", this.fieldName, getLeft(), getRight());
    }
}
