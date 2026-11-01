package org.brotli.dec;

/* renamed from: org.brotli.dec.goto, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cgoto {

    /* renamed from: do, reason: not valid java name */
    private int f32871do;

    /* renamed from: for, reason: not valid java name */
    public int[] f32872for;

    /* renamed from: if, reason: not valid java name */
    public int[] f32873if;

    /* renamed from: do, reason: not valid java name */
    public static void m36672do(Cgoto cgoto, Cdo cdo) {
        int length = cgoto.f32872for.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            cgoto.f32872for[i2] = i;
            Ctry.m36685final(cgoto.f32871do, cgoto.f32873if, i, cdo);
            i += Celse.f32867do;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36673if(Cgoto cgoto, int i, int i2) {
        cgoto.f32871do = i;
        cgoto.f32873if = new int[i2 * Celse.f32867do];
        cgoto.f32872for = new int[i2];
    }
}
