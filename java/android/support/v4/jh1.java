package android.support.v4;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.common.collect.LinkedHashMultimap;
import com.qmuiteam.qmui.QMUILog;

/* loaded from: classes2.dex */
public class jh1 {

    /* renamed from: do, reason: not valid java name */
    private static final String f3108do = "jh1";

    /* renamed from: if, reason: not valid java name */
    private static final Canvas f3109if = new Canvas();

    /* renamed from: break, reason: not valid java name */
    public static ColorFilter m3890break(Drawable drawable, @ColorInt int i) {
        LightingColorFilter lightingColorFilter = new LightingColorFilter(Color.argb(255, 0, 0, 0), i);
        if (drawable != null) {
            drawable.setColorFilter(lightingColorFilter);
        }
        return lightingColorFilter;
    }

    /* renamed from: case, reason: not valid java name */
    public static BitmapDrawable m3891case(Resources resources, int i, int i2, int i3, @ColorInt int i4) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (i4 == 0) {
            i4 = 0;
        }
        if (i3 > 0) {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(i4);
            RectF rectF = new RectF(0.0f, 0.0f, i, i2);
            float f = i3;
            canvas.drawRoundRect(rectF, f, f, paint);
        } else {
            canvas.drawColor(i4);
        }
        return new BitmapDrawable(resources, bitmapCreateBitmap);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Bitmap m3892catch(Context context, @DrawableRes int i) {
        Drawable drawableM3899this = m3899this(context, i);
        if (drawableM3899this == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawableM3899this.getIntrinsicWidth(), drawableM3899this.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawableM3899this.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawableM3899this.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* renamed from: do, reason: not valid java name */
    public static Bitmap m3893do(View view) {
        return m3897if(view, 1.0f);
    }

    /* renamed from: else, reason: not valid java name */
    public static LayerDrawable m3894else(@ColorInt int i, @ColorInt int i2, int i3, boolean z) {
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
        shapeDrawable.getPaint().setColor(i);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable();
        shapeDrawable2.getPaint().setStyle(Paint.Style.FILL);
        shapeDrawable2.getPaint().setColor(i2);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable, shapeDrawable2});
        layerDrawable.setLayerInset(1, 0, z ? i3 : 0, 0, z ? 0 : i3);
        return layerDrawable;
    }

    /* renamed from: for, reason: not valid java name */
    public static Bitmap m3895for(View view, int i, int i2, int i3, int i4) {
        Bitmap bitmapM3898new;
        Bitmap bitmapM3893do = m3893do(view);
        if (bitmapM3893do == null || (bitmapM3898new = m3898new((view.getWidth() - i3) - i, (view.getHeight() - i2) - i4, Bitmap.Config.ARGB_8888, 1)) == null) {
            return null;
        }
        Canvas canvas = new Canvas(bitmapM3898new);
        Rect rect = new Rect(i, i2, view.getWidth() - i3, view.getHeight() - i4);
        Rect rect2 = new Rect(0, 0, (view.getWidth() - i3) - i, (view.getHeight() - i2) - i4);
        canvas.drawColor(-1);
        canvas.drawBitmap(bitmapM3893do, rect, rect2, (Paint) null);
        bitmapM3893do.recycle();
        return bitmapM3898new;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Bitmap m3896goto(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                return bitmapCreateBitmap;
            } catch (OutOfMemoryError e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public static Bitmap m3897if(View view, float f) {
        Drawable drawable;
        if ((view instanceof ImageView) && (drawable = ((ImageView) view).getDrawable()) != null && (drawable instanceof BitmapDrawable)) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        view.clearFocus();
        Bitmap bitmapM3898new = m3898new((int) (view.getWidth() * f), (int) (view.getHeight() * f), Bitmap.Config.ARGB_8888, 1);
        if (bitmapM3898new != null) {
            Canvas canvas = f3109if;
            synchronized (canvas) {
                canvas.setBitmap(bitmapM3898new);
                canvas.save();
                canvas.drawColor(-1);
                canvas.scale(f, f);
                view.draw(canvas);
                canvas.restore();
                canvas.setBitmap(null);
            }
        }
        return bitmapM3898new;
    }

    /* renamed from: new, reason: not valid java name */
    public static Bitmap m3898new(int i, int i2, Bitmap.Config config, int i3) {
        try {
            return Bitmap.createBitmap(i, i2, config);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            if (i3 <= 0) {
                return null;
            }
            System.gc();
            return m3898new(i, i2, config, i3 - 1);
        }
    }

    @Nullable
    /* renamed from: this, reason: not valid java name */
    public static Drawable m3899this(Context context, @DrawableRes int i) {
        try {
            return AppCompatResources.getDrawable(context, i);
        } catch (Exception e) {
            QMUILog.m23435do(f3108do, "Error in getVectorDrawable. resVector=" + i + ", resName=" + context.getResources().getResourceName(i) + e.getMessage(), new Object[0]);
            return null;
        }
    }

    @TargetApi(16)
    /* renamed from: try, reason: not valid java name */
    public static GradientDrawable m3900try(@ColorInt int i, @ColorInt int i2, int i3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColors(new int[]{i, i2});
        gradientDrawable.setGradientType(1);
        gradientDrawable.setGradientRadius(i3);
        gradientDrawable.setGradientCenter(f, f2);
        return gradientDrawable;
    }
}
