package org.brotli.dec;

/* renamed from: org.brotli.dec.final, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfinal {

    /* renamed from: do, reason: not valid java name */
    private static final byte[] f32869do = new byte[1024];

    /* renamed from: if, reason: not valid java name */
    private static final int[] f32870if = new int[1024];

    /* renamed from: do, reason: not valid java name */
    public static void m36670do(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int iMin = Math.min(i3 + 1024, i2) - i3;
            System.arraycopy(f32869do, 0, bArr, i + i3, iMin);
            i3 += iMin;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36671if(int[] iArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int iMin = Math.min(i3 + 1024, i2) - i3;
            System.arraycopy(f32870if, 0, iArr, i + i3, iMin);
            i3 += iMin;
        }
    }
}
