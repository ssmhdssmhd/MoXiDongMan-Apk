package com.bumptech.glide.load.engine.bitmap_recycle;

/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements ArrayAdapterInterface<byte[]> {

    /* renamed from: do, reason: not valid java name */
    private static final String f9651do = "ByteArrayPool";

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public int getArrayLength(byte[] bArr) {
        return bArr.length;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    public int getElementSizeInBytes() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    public String getTag() {
        return f9651do;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public byte[] newArray(int i) {
        return new byte[i];
    }
}
