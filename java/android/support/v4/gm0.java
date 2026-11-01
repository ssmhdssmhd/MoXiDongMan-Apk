package android.support.v4;

/* loaded from: classes3.dex */
public final class gm0<L, R> extends pb1<L, R> {
    private static final long serialVersionUID = 4954918890077093841L;
    public final L left;
    public final R right;

    public gm0(L l, R r) {
        this.left = l;
        this.right = r;
    }

    public static <L, R> gm0<L, R> of(L l, R r) {
        return new gm0<>(l, r);
    }

    @Override // android.support.v4.pb1
    public L getLeft() {
        return this.left;
    }

    @Override // android.support.v4.pb1
    public R getRight() {
        return this.right;
    }

    @Override // java.util.Map.Entry
    public R setValue(R r) {
        throw new UnsupportedOperationException();
    }
}
