package android.support.v4;

import java.io.Serializable;
import org.apache.commons.lang3.Cgoto;

/* loaded from: classes3.dex */
public abstract class z82<L, M, R> implements Comparable<z82<L, M, R>>, Serializable {
    private static final long serialVersionUID = 1;

    public static <L, M, R> z82<L, M, R> of(L l, M m, R r) {
        return new hm0(l, m, r);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z82)) {
            return false;
        }
        z82 z82Var = (z82) obj;
        return Cgoto.m32404while(getLeft(), z82Var.getLeft()) && Cgoto.m32404while(getMiddle(), z82Var.getMiddle()) && Cgoto.m32404while(getRight(), z82Var.getRight());
    }

    public abstract L getLeft();

    public abstract M getMiddle();

    public abstract R getRight();

    public int hashCode() {
        return ((getLeft() == null ? 0 : getLeft().hashCode()) ^ (getMiddle() == null ? 0 : getMiddle().hashCode())) ^ (getRight() != null ? getRight().hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(getLeft());
        sb.append(',');
        sb.append(getMiddle());
        sb.append(',');
        sb.append(getRight());
        sb.append(')');
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(z82<L, M, R> z82Var) {
        return new jp().m3995else(getLeft(), z82Var.getLeft()).m3995else(getMiddle(), z82Var.getMiddle()).m3995else(getRight(), z82Var.getRight()).m4003private();
    }

    public String toString(String str) {
        return String.format(str, getLeft(), getMiddle(), getRight());
    }
}
