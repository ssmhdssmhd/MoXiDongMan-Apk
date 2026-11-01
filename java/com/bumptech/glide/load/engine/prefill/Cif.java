package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.Cnew;
import com.bumptech.glide.util.Ccase;
import java.util.HashMap;

/* renamed from: com.bumptech.glide.load.engine.prefill.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final MemoryCache f9884do;

    /* renamed from: for, reason: not valid java name */
    private final com.bumptech.glide.load.Cif f9885for;

    /* renamed from: if, reason: not valid java name */
    private final BitmapPool f9886if;

    /* renamed from: new, reason: not valid java name */
    private final Handler f9887new = new Handler(Looper.getMainLooper());

    /* renamed from: try, reason: not valid java name */
    private Cdo f9888try;

    public Cif(MemoryCache memoryCache, BitmapPool bitmapPool, com.bumptech.glide.load.Cif cif) {
        this.f9884do = memoryCache;
        this.f9886if = bitmapPool;
        this.f9885for = cif;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m11554if(Cnew cnew) {
        return Ccase.m12044else(cnew.m11560new(), cnew.m11559if(), cnew.m11557do());
    }

    @VisibleForTesting
    /* renamed from: do, reason: not valid java name */
    public Cfor m11555do(Cnew... cnewArr) {
        long maxSize = (this.f9884do.getMaxSize() - this.f9884do.getCurrentSize()) + this.f9886if.getMaxSize();
        int iM11558for = 0;
        for (Cnew cnew : cnewArr) {
            iM11558for += cnew.m11558for();
        }
        float f = maxSize / iM11558for;
        HashMap map = new HashMap();
        for (Cnew cnew2 : cnewArr) {
            map.put(cnew2, Integer.valueOf(Math.round(cnew2.m11558for() * f) / m11554if(cnew2)));
        }
        return new Cfor(map);
    }

    /* renamed from: for, reason: not valid java name */
    public void m11556for(Cnew.Cdo... cdoArr) {
        Cdo cdo = this.f9888try;
        if (cdo != null) {
            cdo.m11549if();
        }
        Cnew[] cnewArr = new Cnew[cdoArr.length];
        for (int i = 0; i < cdoArr.length; i++) {
            Cnew.Cdo cdo2 = cdoArr[i];
            if (cdo2.m11563if() == null) {
                cdo2.m11562for(this.f9885for == com.bumptech.glide.load.Cif.PREFER_ARGB_8888 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            }
            cnewArr[i] = cdo2.m11561do();
        }
        Cdo cdo3 = new Cdo(this.f9886if, this.f9884do, m11555do(cnewArr));
        this.f9888try = cdo3;
        this.f9887new.post(cdo3);
    }
}
