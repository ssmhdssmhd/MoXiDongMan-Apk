package android.support.v4;

/* loaded from: classes3.dex */
public class e11<L, R> extends pb1<L, R> {
    private static final long serialVersionUID = 4954918890077093841L;
    public L left;
    public R right;

    public e11() {
    }

    public static <L, R> e11<L, R> of(L l, R r) {
        return new e11<>(l, r);
    }

    @Override // android.support.v4.pb1
    public L getLeft() {
        return this.left;
    }

    @Override // android.support.v4.pb1
    public R getRight() {
        return this.right;
    }

    public void setLeft(L l) {
        this.left = l;
    }

    public void setRight(R r) {
        this.right = r;
    }

    @Override // java.util.Map.Entry
    public R setValue(R r) {
        R right = getRight();
        setRight(r);
        return right;
    }

    public e11(L l, R r) {
        this.left = l;
        this.right = r;
    }
}
