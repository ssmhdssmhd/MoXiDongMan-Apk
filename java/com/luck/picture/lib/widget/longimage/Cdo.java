package com.luck.picture.lib.widget.longimage;

import androidx.annotation.NonNull;

/* renamed from: com.luck.picture.lib.widget.longimage.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo<T> implements DecoderFactory<T> {

    /* renamed from: do, reason: not valid java name */
    private Class<? extends T> f18997do;

    public Cdo(@NonNull Class<? extends T> cls) {
        this.f18997do = cls;
    }

    @Override // com.luck.picture.lib.widget.longimage.DecoderFactory
    public T make() throws IllegalAccessException, InstantiationException {
        return this.f18997do.newInstance();
    }
}
