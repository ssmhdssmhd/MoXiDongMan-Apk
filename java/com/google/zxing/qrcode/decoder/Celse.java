package com.google.zxing.qrcode.decoder;

/* renamed from: com.google.zxing.qrcode.decoder.else, reason: invalid class name */
/* loaded from: classes2.dex */
final class Celse {

    /* renamed from: for, reason: not valid java name */
    private static final int f17895for = 21522;

    /* renamed from: new, reason: not valid java name */
    private static final int[][] f17896new = {new int[]{f17895for, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    /* renamed from: do, reason: not valid java name */
    private final Ccase f17897do;

    /* renamed from: if, reason: not valid java name */
    private final byte f17898if;

    private Celse(int i) {
        this.f17897do = Ccase.forBits((i >> 3) & 3);
        this.f17898if = (byte) (i & 7);
    }

    /* renamed from: do, reason: not valid java name */
    public static Celse m22318do(int i, int i2) {
        Celse celseM22319if = m22319if(i, i2);
        return celseM22319if != null ? celseM22319if : m22319if(i ^ f17895for, i2 ^ f17895for);
    }

    /* renamed from: if, reason: not valid java name */
    private static Celse m22319if(int i, int i2) {
        int iM22320try;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        for (int[] iArr : f17896new) {
            int i5 = iArr[0];
            if (i5 == i || i5 == i2) {
                return new Celse(iArr[1]);
            }
            int iM22320try2 = m22320try(i, i5);
            if (iM22320try2 < i3) {
                i4 = iArr[1];
                i3 = iM22320try2;
            }
            if (i != i2 && (iM22320try = m22320try(i2, i5)) < i3) {
                i4 = iArr[1];
                i3 = iM22320try;
            }
        }
        if (i3 <= 3) {
            return new Celse(i4);
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m22320try(int i, int i2) {
        return Integer.bitCount(i ^ i2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Celse)) {
            return false;
        }
        Celse celse = (Celse) obj;
        return this.f17897do == celse.f17897do && this.f17898if == celse.f17898if;
    }

    /* renamed from: for, reason: not valid java name */
    public byte m22321for() {
        return this.f17898if;
    }

    public int hashCode() {
        return (this.f17897do.ordinal() << 3) | this.f17898if;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccase m22322new() {
        return this.f17897do;
    }
}
