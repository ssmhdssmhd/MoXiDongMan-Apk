package android.support.v4;

/* loaded from: classes3.dex */
public enum fq {
    FASTEST(1),
    FAST(3),
    NORMAL(5),
    MAXIMUM(7);

    private int level;

    fq(int i) {
        this.level = i;
    }

    public int getLevel() {
        return this.level;
    }
}
