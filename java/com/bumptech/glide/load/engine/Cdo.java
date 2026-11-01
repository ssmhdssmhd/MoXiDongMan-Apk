package com.bumptech.glide.load.engine;

/* renamed from: com.bumptech.glide.load.engine.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo extends RuntimeException {
    private static final long serialVersionUID = -7530898992688511851L;

    public Cdo(Throwable th) {
        super("Unexpected exception thrown by non-Glide code", th);
    }
}
