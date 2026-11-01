package com.bumptech.glide.load.engine.bitmap_recycle;

/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry implements ArrayAdapterInterface<int[]> {

    /* renamed from: do, reason: not valid java name */
    private static final String f9679do = "IntegerArrayPool";

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public int getArrayLength(int[] iArr) {
        return iArr.length;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    public int getElementSizeInBytes() {
        return 4;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    public String getTag() {
        return f9679do;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public int[] newArray(int i) {
        return new int[i];
    }
}
