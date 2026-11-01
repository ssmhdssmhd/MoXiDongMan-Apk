package com.wsw.cospa.widget.explosionfield;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

/* loaded from: classes2.dex */
public class Utils {
    private static final float DENSITY = Resources.getSystem().getDisplayMetrics().density;
    private static final Canvas sCanvas = new Canvas();

    private Utils() {
    }

    public static Bitmap createBitmapFromView(View view) {
        Drawable drawable;
        if ((view instanceof ImageView) && (drawable = ((ImageView) view).getDrawable()) != null && (drawable instanceof BitmapDrawable)) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        view.clearFocus();
        Bitmap bitmapCreateBitmapSafely = createBitmapSafely(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888, 1);
        if (bitmapCreateBitmapSafely != null) {
            Canvas canvas = sCanvas;
            synchronized (canvas) {
                canvas.setBitmap(bitmapCreateBitmapSafely);
                view.draw(canvas);
                canvas.setBitmap(null);
            }
        }
        return bitmapCreateBitmapSafely;
    }

    public static Bitmap createBitmapSafely(int i, int i2, Bitmap.Config config, int i3) {
        try {
            return Bitmap.createBitmap(i, i2, config);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            if (i3 <= 0) {
                return null;
            }
            System.gc();
            return createBitmapSafely(i, i2, config, i3 - 1);
        }
    }

    public static int dp2Px(int i) {
        return Math.round(i * DENSITY);
    }
}
