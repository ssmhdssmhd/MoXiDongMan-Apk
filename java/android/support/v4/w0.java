package android.support.v4;

/* loaded from: classes3.dex */
public enum w0 {
    KEY_STRENGTH_128(1, 8, 16, 16),
    KEY_STRENGTH_192(2, 12, 24, 24),
    KEY_STRENGTH_256(3, 16, 32, 32);

    private int keyLength;
    private int macLength;
    private int rawCode;
    private int saltLength;

    w0(int i, int i2, int i3, int i4) {
        this.rawCode = i;
        this.saltLength = i2;
        this.macLength = i3;
        this.keyLength = i4;
    }

    public static w0 getAesKeyStrengthFromRawCode(int i) {
        for (w0 w0Var : values()) {
            if (w0Var.getRawCode() == i) {
                return w0Var;
            }
        }
        return null;
    }

    public int getKeyLength() {
        return this.keyLength;
    }

    public int getMacLength() {
        return this.macLength;
    }

    public int getRawCode() {
        return this.rawCode;
    }

    public int getSaltLength() {
        return this.saltLength;
    }
}
