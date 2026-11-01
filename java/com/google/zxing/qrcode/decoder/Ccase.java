package com.google.zxing.qrcode.decoder;

/* renamed from: com.google.zxing.qrcode.decoder.case, reason: invalid class name */
/* loaded from: classes2.dex */
public enum Ccase {
    L(1),
    M(0),
    Q(3),
    H(2);


    /* renamed from: do, reason: not valid java name */
    private static final Ccase[] f17889do;
    private final int bits;

    static {
        Ccase ccase = L;
        Ccase ccase2 = M;
        Ccase ccase3 = Q;
        f17889do = new Ccase[]{ccase2, ccase, H, ccase3};
    }

    Ccase(int i) {
        this.bits = i;
    }

    public static Ccase forBits(int i) {
        if (i >= 0) {
            Ccase[] ccaseArr = f17889do;
            if (i < ccaseArr.length) {
                return ccaseArr[i];
            }
        }
        throw new IllegalArgumentException();
    }

    public int getBits() {
        return this.bits;
    }
}
