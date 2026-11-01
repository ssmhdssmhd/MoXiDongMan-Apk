package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.zx0;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealWidget;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class CircularRevealHelper {

    /* renamed from: catch, reason: not valid java name */
    private static final boolean f11647catch = false;

    /* renamed from: class, reason: not valid java name */
    public static final int f11648class = 0;

    /* renamed from: const, reason: not valid java name */
    public static final int f11649const = 1;

    /* renamed from: final, reason: not valid java name */
    public static final int f11650final = 2;

    /* renamed from: super, reason: not valid java name */
    public static final int f11651super;

    /* renamed from: break, reason: not valid java name */
    private boolean f11652break;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private CircularRevealWidget.Ctry f11653case;

    /* renamed from: do, reason: not valid java name */
    private final Delegate f11654do;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private Drawable f11655else;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final Path f11656for;

    /* renamed from: goto, reason: not valid java name */
    private Paint f11657goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final View f11658if;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    private final Paint f11659new;

    /* renamed from: this, reason: not valid java name */
    private boolean f11660this;

    /* renamed from: try, reason: not valid java name */
    @NonNull
    private final Paint f11661try;

    public interface Delegate {
        void actualDraw(Canvas canvas);

        boolean actualIsOpaque();
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.circularreveal.CircularRevealHelper$do, reason: invalid class name */
    public @interface Cdo {
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f11651super = 2;
        } else if (i >= 18) {
            f11651super = 1;
        } else {
            f11651super = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CircularRevealHelper(Delegate delegate) {
        this.f11654do = delegate;
        View view = (View) delegate;
        this.f11658if = view;
        view.setWillNotDraw(false);
        this.f11656for = new Path();
        this.f11659new = new Paint(7);
        Paint paint = new Paint(1);
        this.f11661try = paint;
        paint.setColor(0);
    }

    /* renamed from: case, reason: not valid java name */
    private void m13083case(@NonNull Canvas canvas) {
        if (m13090while()) {
            Rect bounds = this.f11655else.getBounds();
            float fWidth = this.f11653case.f11669do - (bounds.width() / 2.0f);
            float fHeight = this.f11653case.f11671if - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.f11655else.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m13084catch() {
        if (f11651super == 1) {
            this.f11656for.rewind();
            CircularRevealWidget.Ctry ctry = this.f11653case;
            if (ctry != null) {
                this.f11656for.addCircle(ctry.f11669do, ctry.f11671if, ctry.f11670for, Path.Direction.CW);
            }
        }
        this.f11658if.invalidate();
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m13085import() {
        return (this.f11660this || Color.alpha(this.f11661try.getColor()) == 0) ? false : true;
    }

    /* renamed from: new, reason: not valid java name */
    private void m13086new(@NonNull Canvas canvas, int i, float f) {
        this.f11657goto.setColor(i);
        this.f11657goto.setStrokeWidth(f);
        CircularRevealWidget.Ctry ctry = this.f11653case;
        canvas.drawCircle(ctry.f11669do, ctry.f11671if, ctry.f11670for - (f / 2.0f), this.f11657goto);
    }

    /* renamed from: this, reason: not valid java name */
    private float m13087this(@NonNull CircularRevealWidget.Ctry ctry) {
        return zx0.m10318if(ctry.f11669do, ctry.f11671if, 0.0f, 0.0f, this.f11658if.getWidth(), this.f11658if.getHeight());
    }

    /* renamed from: throw, reason: not valid java name */
    private boolean m13088throw() {
        CircularRevealWidget.Ctry ctry = this.f11653case;
        boolean z = ctry == null || ctry.m13106do();
        return f11651super == 0 ? !z && this.f11652break : !z;
    }

    /* renamed from: try, reason: not valid java name */
    private void m13089try(@NonNull Canvas canvas) {
        this.f11654do.actualDraw(canvas);
        if (m13085import()) {
            CircularRevealWidget.Ctry ctry = this.f11653case;
            canvas.drawCircle(ctry.f11669do, ctry.f11671if, ctry.f11670for, this.f11661try);
        }
        if (m13088throw()) {
            m13086new(canvas, -16777216, 10.0f);
            m13086new(canvas, -65536, 5.0f);
        }
        m13083case(canvas);
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m13090while() {
        return (this.f11660this || this.f11655else == null || this.f11653case == null) ? false : true;
    }

    @Nullable
    /* renamed from: break, reason: not valid java name */
    public CircularRevealWidget.Ctry m13091break() {
        CircularRevealWidget.Ctry ctry = this.f11653case;
        if (ctry == null) {
            return null;
        }
        CircularRevealWidget.Ctry ctry2 = new CircularRevealWidget.Ctry(ctry);
        if (ctry2.m13106do()) {
            ctry2.f11670for = m13087this(ctry2);
        }
        return ctry2;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m13092class() {
        return this.f11654do.actualIsOpaque() && !m13088throw();
    }

    /* renamed from: const, reason: not valid java name */
    public void m13093const(@Nullable Drawable drawable) {
        this.f11655else = drawable;
        this.f11658if.invalidate();
    }

    /* renamed from: do, reason: not valid java name */
    public void m13094do() {
        if (f11651super == 0) {
            this.f11660this = true;
            this.f11652break = false;
            this.f11658if.buildDrawingCache();
            Bitmap drawingCache = this.f11658if.getDrawingCache();
            if (drawingCache == null && this.f11658if.getWidth() != 0 && this.f11658if.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f11658if.getWidth(), this.f11658if.getHeight(), Bitmap.Config.ARGB_8888);
                this.f11658if.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f11659new;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f11660this = false;
            this.f11652break = true;
        }
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    public Drawable m13095else() {
        return this.f11655else;
    }

    /* renamed from: final, reason: not valid java name */
    public void m13096final(@ColorInt int i) {
        this.f11661try.setColor(i);
        this.f11658if.invalidate();
    }

    /* renamed from: for, reason: not valid java name */
    public void m13097for(@NonNull Canvas canvas) {
        if (m13088throw()) {
            int i = f11651super;
            if (i == 0) {
                CircularRevealWidget.Ctry ctry = this.f11653case;
                canvas.drawCircle(ctry.f11669do, ctry.f11671if, ctry.f11670for, this.f11659new);
                if (m13085import()) {
                    CircularRevealWidget.Ctry ctry2 = this.f11653case;
                    canvas.drawCircle(ctry2.f11669do, ctry2.f11671if, ctry2.f11670for, this.f11661try);
                }
            } else if (i == 1) {
                int iSave = canvas.save();
                canvas.clipPath(this.f11656for);
                this.f11654do.actualDraw(canvas);
                if (m13085import()) {
                    canvas.drawRect(0.0f, 0.0f, this.f11658if.getWidth(), this.f11658if.getHeight(), this.f11661try);
                }
                canvas.restoreToCount(iSave);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("Unsupported strategy " + i);
                }
                this.f11654do.actualDraw(canvas);
                if (m13085import()) {
                    canvas.drawRect(0.0f, 0.0f, this.f11658if.getWidth(), this.f11658if.getHeight(), this.f11661try);
                }
            }
        } else {
            this.f11654do.actualDraw(canvas);
            if (m13085import()) {
                canvas.drawRect(0.0f, 0.0f, this.f11658if.getWidth(), this.f11658if.getHeight(), this.f11661try);
            }
        }
        m13083case(canvas);
    }

    @ColorInt
    /* renamed from: goto, reason: not valid java name */
    public int m13098goto() {
        return this.f11661try.getColor();
    }

    /* renamed from: if, reason: not valid java name */
    public void m13099if() {
        if (f11651super == 0) {
            this.f11652break = false;
            this.f11658if.destroyDrawingCache();
            this.f11659new.setShader(null);
            this.f11658if.invalidate();
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m13100super(@Nullable CircularRevealWidget.Ctry ctry) {
        if (ctry == null) {
            this.f11653case = null;
        } else {
            CircularRevealWidget.Ctry ctry2 = this.f11653case;
            if (ctry2 == null) {
                this.f11653case = new CircularRevealWidget.Ctry(ctry);
            } else {
                ctry2.m13107for(ctry);
            }
            if (zx0.m10320try(ctry.f11670for, m13087this(ctry), 1.0E-4f)) {
                this.f11653case.f11670for = Float.MAX_VALUE;
            }
        }
        m13084catch();
    }
}
