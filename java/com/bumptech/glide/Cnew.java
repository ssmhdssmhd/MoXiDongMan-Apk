package com.bumptech.glide;

/* renamed from: com.bumptech.glide.new, reason: invalid class name */
/* loaded from: classes.dex */
public enum Cnew {
    LOW(0.5f),
    NORMAL(1.0f),
    HIGH(1.5f);

    private final float multiplier;

    Cnew(float f) {
        this.multiplier = f;
    }

    public float getMultiplier() {
        return this.multiplier;
    }
}
