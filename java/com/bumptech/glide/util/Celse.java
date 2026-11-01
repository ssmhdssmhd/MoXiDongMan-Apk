package com.bumptech.glide.util;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.ListPreloader;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.transition.Transition;
import java.util.Arrays;

/* renamed from: com.bumptech.glide.util.else, reason: invalid class name */
/* loaded from: classes.dex */
public class Celse<T> implements ListPreloader.PreloadSizeProvider<T>, SizeReadyCallback {

    /* renamed from: do, reason: not valid java name */
    private int[] f10479do;

    /* renamed from: if, reason: not valid java name */
    private Cdo f10480if;

    /* renamed from: com.bumptech.glide.util.else$do, reason: invalid class name */
    public static final class Cdo extends com.bumptech.glide.request.target.Cdo<View, Object> {
        public Cdo(@NonNull View view) {
            super(view);
        }

        @Override // com.bumptech.glide.request.target.Cdo
        /* renamed from: case */
        public void mo11226case(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }
    }

    public Celse() {
    }

    /* renamed from: do, reason: not valid java name */
    public void m12068do(@NonNull View view) {
        if (this.f10479do == null && this.f10480if == null) {
            Cdo cdo = new Cdo(view);
            this.f10480if = cdo;
            cdo.getSize(this);
        }
    }

    @Override // com.bumptech.glide.ListPreloader.PreloadSizeProvider
    @Nullable
    public int[] getPreloadSize(@NonNull T t, int i, int i2) {
        int[] iArr = this.f10479do;
        if (iArr == null) {
            return null;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void onSizeReady(int i, int i2) {
        this.f10479do = new int[]{i, i2};
        this.f10480if = null;
    }

    public Celse(@NonNull View view) {
        Cdo cdo = new Cdo(view);
        this.f10480if = cdo;
        cdo.getSize(this);
    }
}
