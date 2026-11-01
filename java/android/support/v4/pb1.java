package android.support.v4;

import java.io.Serializable;
import java.util.Map;
import org.apache.commons.lang3.Cgoto;

/* loaded from: classes3.dex */
public abstract class pb1<L, R> implements Map.Entry<L, R>, Comparable<pb1<L, R>>, Serializable {
    private static final long serialVersionUID = 4954918890077093841L;

    public static <L, R> pb1<L, R> of(L l, R r) {
        return new gm0(l, r);
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Cgoto.m32404while(getKey(), entry.getKey()) && Cgoto.m32404while(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final L getKey() {
        return getLeft();
    }

    public abstract L getLeft();

    public abstract R getRight();

    @Override // java.util.Map.Entry
    public R getValue() {
        return getRight();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(getLeft());
        sb.append(',');
        sb.append(getRight());
        sb.append(')');
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(pb1<L, R> pb1Var) {
        return new jp().m3995else(getLeft(), pb1Var.getLeft()).m3995else(getRight(), pb1Var.getRight()).m4003private();
    }

    public String toString(String str) {
        return String.format(str, getLeft(), getRight());
    }
}
