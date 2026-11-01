package org.brotli.dec;

/* renamed from: org.brotli.dec.this, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private byte[] f32902do;

    /* renamed from: if, reason: not valid java name */
    private int[] f32903if;

    /* renamed from: do, reason: not valid java name */
    public static void m36676do(Cthis cthis, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int[] iArr = cthis.f32903if;
            byte[] bArr = cthis.f32902do;
            int i3 = i2 * 4;
            iArr[i2] = ((bArr[i3 + 3] & 255) << 24) | (bArr[i3] & 255) | ((bArr[i3 + 1] & 255) << 8) | ((bArr[i3 + 2] & 255) << 16);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36677if(Cthis cthis, byte[] bArr, int[] iArr) {
        cthis.f32902do = bArr;
        cthis.f32903if = iArr;
    }
}
