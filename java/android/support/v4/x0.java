package android.support.v4;

/* loaded from: classes3.dex */
public enum x0 {
    ONE(1),
    TWO(2);

    private int versionNumber;

    x0(int i) {
        this.versionNumber = i;
    }

    public static x0 getFromVersionNumber(int i) {
        for (x0 x0Var : values()) {
            if (x0Var.versionNumber == i) {
                return x0Var;
            }
        }
        throw new IllegalArgumentException("Unsupported Aes version");
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }
}
