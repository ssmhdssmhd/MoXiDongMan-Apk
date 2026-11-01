package android.support.v4;

import java.io.Serializable;
import org.apache.commons.lang3.mutable.Mutable;

/* loaded from: classes3.dex */
public class d11<T> implements Mutable<T>, Serializable {
    private static final long serialVersionUID = 86241875189L;
    private T value;

    public d11() {
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (getClass() == obj.getClass()) {
            return this.value.equals(((d11) obj).value);
        }
        return false;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public T getValue() {
        return this.value;
    }

    public int hashCode() {
        T t = this.value;
        if (t == null) {
            return 0;
        }
        return t.hashCode();
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(T t) {
        this.value = t;
    }

    public String toString() {
        T t = this.value;
        return t == null ? "null" : t.toString();
    }

    public d11(T t) {
        this.value = t;
    }
}
