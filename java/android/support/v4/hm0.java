package android.support.v4;

/* loaded from: classes3.dex */
public final class hm0<L, M, R> extends z82<L, M, R> {
    private static final long serialVersionUID = 1;
    public final L left;
    public final M middle;
    public final R right;

    public hm0(L l, M m, R r) {
        this.left = l;
        this.middle = m;
        this.right = r;
    }

    public static <L, M, R> hm0<L, M, R> of(L l, M m, R r) {
        return new hm0<>(l, m, r);
    }

    @Override // android.support.v4.z82
    public L getLeft() {
        return this.left;
    }

    @Override // android.support.v4.z82
    public M getMiddle() {
        return this.middle;
    }

    @Override // android.support.v4.z82
    public R getRight() {
        return this.right;
    }
}
