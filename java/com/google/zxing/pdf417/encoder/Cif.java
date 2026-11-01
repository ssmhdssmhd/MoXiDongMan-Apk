package com.google.zxing.pdf417.encoder;

/* renamed from: com.google.zxing.pdf417.encoder.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f17872do;

    /* renamed from: if, reason: not valid java name */
    private int f17873if = 0;

    public Cif(int i) {
        this.f17872do = new byte[i];
    }

    /* renamed from: new, reason: not valid java name */
    private void m22293new(int i, boolean z) {
        this.f17872do[i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: do, reason: not valid java name */
    public void m22294do(boolean z, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f17873if;
            this.f17873if = i3 + 1;
            m22293new(i3, z);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m22295for(int i, byte b) {
        this.f17872do[i] = b;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m22296if(int i) {
        int length = this.f17872do.length * i;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = this.f17872do[i2 / i];
        }
        return bArr;
    }
}
