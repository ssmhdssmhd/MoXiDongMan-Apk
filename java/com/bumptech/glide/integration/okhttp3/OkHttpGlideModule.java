package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ccase;
import com.bumptech.glide.Cif;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.okhttp3.Cif;
import com.bumptech.glide.module.GlideModule;
import java.io.InputStream;

@Deprecated
/* loaded from: classes.dex */
public class OkHttpGlideModule implements GlideModule {
    @Override // com.bumptech.glide.module.GlideModule, com.bumptech.glide.module.AppliesOptions
    public void applyOptions(@NonNull Context context, @NonNull Cif cif) {
    }

    @Override // com.bumptech.glide.module.GlideModule, com.bumptech.glide.module.RegistersComponents
    public void registerComponents(Context context, Glide glide, Ccase ccase) {
        ccase.m11076default(com.bumptech.glide.load.model.Cif.class, InputStream.class, new Cif.Cdo());
    }
}
