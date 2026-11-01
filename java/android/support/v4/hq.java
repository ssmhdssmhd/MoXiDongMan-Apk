package android.support.v4;

/* loaded from: classes3.dex */
public enum hq {
    STORE(0),
    DEFLATE(8),
    AES_INTERNAL_ONLY(99);

    private int code;

    hq(int i) {
        this.code = i;
    }

    public static hq getCompressionMethodFromCode(int i) {
        for (hq hqVar : values()) {
            if (hqVar.getCode() == i) {
                return hqVar;
            }
        }
        return null;
    }

    public int getCode() {
        return this.code;
    }
}
