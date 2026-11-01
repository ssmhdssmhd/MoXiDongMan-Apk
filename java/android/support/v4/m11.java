package android.support.v4;

/* loaded from: classes3.dex */
public class m11<L, M, R> extends z82<L, M, R> {
    private static final long serialVersionUID = 1;
    public L left;
    public M middle;
    public R right;

    public m11() {
    }

    public static <L, M, R> m11<L, M, R> of(L l, M m, R r) {
        return new m11<>(l, m, r);
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

    public void setLeft(L l) {
        this.left = l;
    }

    public void setMiddle(M m) {
        this.middle = m;
    }

    public void setRight(R r) {
        this.right = r;
    }

    public m11(L l, M m, R r) {
        this.left = l;
        this.middle = m;
        this.right = r;
    }
}
