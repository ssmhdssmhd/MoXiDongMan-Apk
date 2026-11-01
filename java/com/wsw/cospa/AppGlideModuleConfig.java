package com.wsw.cospa;

import android.content.Context;
import android.support.v4.nh0;
import androidx.annotation.NonNull;
import com.bumptech.glide.Cif;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.okhttp3.Cif;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.Ccase;
import com.bumptech.glide.load.engine.cache.Celse;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.module.Cdo;
import com.wsw.cospa.utils.Cvolatile;
import java.io.InputStream;

@nh0
/* loaded from: classes2.dex */
public class AppGlideModuleConfig extends Cdo {

    /* renamed from: do, reason: not valid java name */
    public int f20810do = 209715200;

    /* renamed from: if, reason: not valid java name */
    public int f20811if = ((int) Runtime.getRuntime().maxMemory()) / 8;

    @Override // com.bumptech.glide.module.Cdo, com.bumptech.glide.module.AppliesOptions
    public void applyOptions(Context context, Cif cif) {
        cif.m11227break(new Ccase(context, this.f20810do));
        MemorySizeCalculator memorySizeCalculatorM11434do = new MemorySizeCalculator.Cdo(context).m11434do();
        int iM11432new = memorySizeCalculatorM11434do.m11432new();
        int iM11431if = memorySizeCalculatorM11434do.m11431if();
        cif.m11248while(new Celse(iM11432new));
        cif.m11247try(new LruBitmapPool(iM11431if));
        cif.m11248while(new Celse(this.f20811if));
        cif.m11247try(new LruBitmapPool(this.f20811if));
    }

    @Override // com.bumptech.glide.module.Cif, com.bumptech.glide.module.RegistersComponents
    public void registerComponents(@NonNull Context context, @NonNull Glide glide, @NonNull com.bumptech.glide.Ccase ccase) {
        ccase.m11076default(com.bumptech.glide.load.model.Cif.class, InputStream.class, new Cif.Cdo(Cvolatile.m27161else().build()));
    }
}
