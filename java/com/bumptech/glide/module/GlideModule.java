package com.bumptech.glide.module;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ccase;
import com.bumptech.glide.Cif;
import com.bumptech.glide.Glide;

@Deprecated
/* loaded from: classes.dex */
public interface GlideModule extends RegistersComponents, AppliesOptions {
    /* synthetic */ void applyOptions(@NonNull Context context, @NonNull Cif cif);

    @Override // com.bumptech.glide.module.RegistersComponents
    /* synthetic */ void registerComponents(@NonNull Context context, @NonNull Glide glide, @NonNull Ccase ccase);
}
