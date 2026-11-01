package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.m9;
import android.support.v4.n9;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.util.concurrent.locks.Lock;

/* renamed from: com.bumptech.glide.load.resource.bitmap.case, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccase {

    /* renamed from: do, reason: not valid java name */
    private static final String f10143do = "DrawableToBitmap";

    /* renamed from: if, reason: not valid java name */
    private static final BitmapPool f10144if = new Cdo();

    /* renamed from: com.bumptech.glide.load.resource.bitmap.case$do, reason: invalid class name */
    public class Cdo extends m9 {
        @Override // android.support.v4.m9, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
        public void put(Bitmap bitmap) {
        }
    }

    private Ccase() {
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public static Resource<Bitmap> m11755do(BitmapPool bitmapPool, Drawable drawable, int i, int i2) {
        Bitmap bitmapM11756if;
        Drawable current = drawable.getCurrent();
        boolean z = false;
        if (current instanceof BitmapDrawable) {
            bitmapM11756if = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmapM11756if = null;
        } else {
            bitmapM11756if = m11756if(bitmapPool, current, i, i2);
            z = true;
        }
        if (!z) {
            bitmapPool = f10144if;
        }
        return n9.m5129if(bitmapM11756if, bitmapPool);
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    private static Bitmap m11756if(BitmapPool bitmapPool, Drawable drawable, int i, int i2) {
        if (i == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable(f10143do, 5)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to draw ");
                sb.append(drawable);
                sb.append(" to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            return null;
        }
        if (i2 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (Log.isLoggable(f10143do, 5)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to draw ");
                sb2.append(drawable);
                sb2.append(" to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
            }
            return null;
        }
        if (drawable.getIntrinsicWidth() > 0) {
            i = drawable.getIntrinsicWidth();
        }
        if (drawable.getIntrinsicHeight() > 0) {
            i2 = drawable.getIntrinsicHeight();
        }
        Lock lockM11737this = TransformationUtils.m11737this();
        lockM11737this.lock();
        Bitmap bitmap = bitmapPool.get(i, i2, Bitmap.Config.ARGB_8888);
        try {
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, i, i2);
            drawable.draw(canvas);
            canvas.setBitmap(null);
            return bitmap;
        } finally {
            lockM11737this.unlock();
        }
    }
}
