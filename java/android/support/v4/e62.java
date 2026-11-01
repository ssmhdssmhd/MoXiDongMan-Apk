package android.support.v4;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class e62 {

    /* renamed from: for, reason: not valid java name */
    public static final e62 f1269for = new e62(-1, -1);

    /* renamed from: do, reason: not valid java name */
    private final int f1270do;

    /* renamed from: if, reason: not valid java name */
    private final int f1271if;

    private e62(int i, int i2) {
        this.f1270do = i;
        this.f1271if = i2;
    }

    /* renamed from: do, reason: not valid java name */
    public static e62 m1662do(int i, int i2) {
        if (i == -1 && i2 == -1) {
            return f1269for;
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException(String.format("line and column values must be >= 0: line %d, column: %d", Integer.valueOf(i), Integer.valueOf(i2)));
        }
        return new e62(i, i2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e62)) {
            return false;
        }
        e62 e62Var = (e62) obj;
        return this.f1270do == e62Var.m1663for() && this.f1271if == e62Var.m1664if();
    }

    /* renamed from: for, reason: not valid java name */
    public int m1663for() {
        return this.f1270do;
    }

    public int hashCode() {
        return Arrays.hashCode(new int[]{this.f1270do, this.f1271if});
    }

    /* renamed from: if, reason: not valid java name */
    public int m1664if() {
        return this.f1271if;
    }

    public String toString() {
        return String.format("ParseLocation{line=%d, column=%d}", Integer.valueOf(this.f1270do), Integer.valueOf(this.f1271if));
    }
}
