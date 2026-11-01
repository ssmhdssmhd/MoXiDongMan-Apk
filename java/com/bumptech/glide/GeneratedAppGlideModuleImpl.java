package com.bumptech.glide;

import android.content.Context;
import android.support.v4.sf1;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.integration.okhttp3.Cdo;
import com.wsw.cospa.AppGlideModuleConfig;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: do, reason: not valid java name */
    private final AppGlideModuleConfig f9240do = new AppGlideModuleConfig();

    public GeneratedAppGlideModuleImpl(Context context) {
        Log.isLoggable("Glide", 3);
    }

    @Override // com.bumptech.glide.module.Cdo, com.bumptech.glide.module.AppliesOptions
    public void applyOptions(@NonNull Context context, @NonNull Cif cif) {
        this.f9240do.applyOptions(context, cif);
    }

    @Override // com.bumptech.glide.module.Cdo
    /* renamed from: do, reason: not valid java name */
    public boolean mo11030do() {
        return this.f9240do.mo11030do();
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    /* renamed from: if */
    public Set<Class<?>> mo11029if() {
        return Collections.emptySet();
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cdo mo11028for() {
        return new Cdo();
    }

    @Override // com.bumptech.glide.module.Cif, com.bumptech.glide.module.RegistersComponents
    public void registerComponents(@NonNull Context context, @NonNull Glide glide, @NonNull Ccase ccase) {
        new sf1().registerComponents(context, glide, ccase);
        new Cdo().registerComponents(context, glide, ccase);
        this.f9240do.registerComponents(context, glide, ccase);
    }
}
