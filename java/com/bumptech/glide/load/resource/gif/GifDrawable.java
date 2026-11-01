package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.v4.cf1;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GifDrawable extends Drawable implements GifFrameLoader.FrameCallback, Animatable, Animatable2Compat {

    /* renamed from: class, reason: not valid java name */
    public static final int f10195class = -1;

    /* renamed from: const, reason: not valid java name */
    public static final int f10196const = 0;

    /* renamed from: final, reason: not valid java name */
    private static final int f10197final = 119;

    /* renamed from: break, reason: not valid java name */
    private Rect f10198break;

    /* renamed from: case, reason: not valid java name */
    private int f10199case;

    /* renamed from: catch, reason: not valid java name */
    private List<Animatable2Compat.AnimationCallback> f10200catch;

    /* renamed from: do, reason: not valid java name */
    private final Cdo f10201do;

    /* renamed from: else, reason: not valid java name */
    private int f10202else;

    /* renamed from: for, reason: not valid java name */
    private boolean f10203for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f10204goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f10205if;

    /* renamed from: new, reason: not valid java name */
    private boolean f10206new;

    /* renamed from: this, reason: not valid java name */
    private Paint f10207this;

    /* renamed from: try, reason: not valid java name */
    private boolean f10208try;

    /* renamed from: com.bumptech.glide.load.resource.gif.GifDrawable$do, reason: invalid class name */
    public static final class Cdo extends Drawable.ConstantState {

        /* renamed from: do, reason: not valid java name */
        @VisibleForTesting
        public final GifFrameLoader f10209do;

        public Cdo(GifFrameLoader gifFrameLoader) {
            this.f10209do = gifFrameLoader;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new GifDrawable(this);
        }
    }

    @Deprecated
    public GifDrawable(Context context, GifDecoder gifDecoder, BitmapPool bitmapPool, Transformation<Bitmap> transformation, int i, int i2, Bitmap bitmap) {
        this(context, gifDecoder, transformation, i, i2, bitmap);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m11790catch() {
        List<Animatable2Compat.AnimationCallback> list = this.f10200catch;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                this.f10200catch.get(i).onAnimationEnd(this);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m11791const() {
        this.f10199case = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    private Drawable.Callback m11792do() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    /* renamed from: for, reason: not valid java name */
    private Rect m11793for() {
        if (this.f10198break == null) {
            this.f10198break = new Rect();
        }
        return this.f10198break;
    }

    /* renamed from: goto, reason: not valid java name */
    private Paint m11794goto() {
        if (this.f10207this == null) {
            this.f10207this = new Paint(2);
        }
        return this.f10207this;
    }

    /* renamed from: import, reason: not valid java name */
    private void m11795import() {
        cf1.m897do(!this.f10206new, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f10201do.f10209do.m11816case() == 1) {
            invalidateSelf();
        } else {
            if (this.f10205if) {
                return;
            }
            this.f10205if = true;
            this.f10201do.f10209do.m11825return(this);
            invalidateSelf();
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m11796native() {
        this.f10205if = false;
        this.f10201do.f10209do.m11826static(this);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m11797break() {
        return this.f10206new;
    }

    /* renamed from: case, reason: not valid java name */
    public int m11798case() {
        return this.f10201do.f10209do.m11824new();
    }

    /* renamed from: class, reason: not valid java name */
    public void m11799class() {
        this.f10206new = true;
        this.f10201do.f10209do.m11819do();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f10200catch;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f10206new) {
            return;
        }
        if (this.f10204goto) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), m11793for());
            this.f10204goto = false;
        }
        canvas.drawBitmap(this.f10201do.f10209do.m11820for(), (Rect) null, m11793for(), m11794goto());
    }

    /* renamed from: else, reason: not valid java name */
    public Transformation<Bitmap> m11800else() {
        return this.f10201do.f10209do.m11821goto();
    }

    /* renamed from: final, reason: not valid java name */
    public void m11801final(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f10201do.f10209do.m11830while(transformation, bitmap);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f10201do;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f10201do.f10209do.m11828this();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f10201do.f10209do.m11818const();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    /* renamed from: if, reason: not valid java name */
    public ByteBuffer m11802if() {
        return this.f10201do.f10209do.m11822if();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f10205if;
    }

    /* renamed from: new, reason: not valid java name */
    public Bitmap m11803new() {
        return this.f10201do.f10209do.m11829try();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f10204goto = true;
    }

    @Override // com.bumptech.glide.load.resource.gif.GifFrameLoader.FrameCallback
    public void onFrameReady() {
        if (m11792do() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (m11798case() == m11807try() - 1) {
            this.f10199case++;
        }
        int i = this.f10202else;
        if (i == -1 || this.f10199case < i) {
            return;
        }
        m11790catch();
        stop();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f10200catch == null) {
            this.f10200catch = new ArrayList();
        }
        this.f10200catch.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m11794goto().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m11794goto().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        cf1.m897do(!this.f10206new, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f10208try = z;
        if (!z) {
            m11796native();
        } else if (this.f10203for) {
            m11795import();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f10203for = true;
        m11791const();
        if (this.f10208try) {
            m11795import();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f10203for = false;
        m11796native();
    }

    /* renamed from: super, reason: not valid java name */
    public void m11804super(boolean z) {
        this.f10205if = z;
    }

    /* renamed from: this, reason: not valid java name */
    public int m11805this() {
        return this.f10201do.f10209do.m11817class();
    }

    /* renamed from: throw, reason: not valid java name */
    public void m11806throw(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i != 0) {
            this.f10202else = i;
        } else {
            int iM11815break = this.f10201do.f10209do.m11815break();
            this.f10202else = iM11815break != 0 ? iM11815break : -1;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int m11807try() {
        return this.f10201do.f10209do.m11816case();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f10200catch;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    /* renamed from: while, reason: not valid java name */
    public void m11808while() {
        cf1.m897do(!this.f10205if, "You cannot restart a currently running animation.");
        this.f10201do.f10209do.m11823import();
        start();
    }

    public GifDrawable(Context context, GifDecoder gifDecoder, Transformation<Bitmap> transformation, int i, int i2, Bitmap bitmap) {
        this(new Cdo(new GifFrameLoader(Glide.m11040new(context), gifDecoder, i, i2, transformation, bitmap)));
    }

    public GifDrawable(Cdo cdo) {
        this.f10208try = true;
        this.f10202else = -1;
        this.f10201do = (Cdo) cf1.m900new(cdo);
    }

    @VisibleForTesting
    public GifDrawable(GifFrameLoader gifFrameLoader, Paint paint) {
        this(new Cdo(gifFrameLoader));
        this.f10207this = paint;
    }
}
