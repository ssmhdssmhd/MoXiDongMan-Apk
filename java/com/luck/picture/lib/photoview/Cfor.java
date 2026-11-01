package com.luck.picture.lib.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import androidx.core.view.MotionEventCompat;

/* renamed from: com.luck.picture.lib.photoview.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor implements View.OnTouchListener, View.OnLayoutChangeListener {

    /* renamed from: continue, reason: not valid java name */
    private static float f18784continue = 3.0f;

    /* renamed from: implements, reason: not valid java name */
    private static final int f18785implements = 1;

    /* renamed from: instanceof, reason: not valid java name */
    private static final int f18786instanceof = 2;

    /* renamed from: interface, reason: not valid java name */
    private static int f18787interface = 200;

    /* renamed from: protected, reason: not valid java name */
    private static final int f18788protected = -1;

    /* renamed from: strictfp, reason: not valid java name */
    private static float f18789strictfp = 1.75f;

    /* renamed from: synchronized, reason: not valid java name */
    private static int f18790synchronized = 1;

    /* renamed from: transient, reason: not valid java name */
    private static final int f18791transient = 0;

    /* renamed from: volatile, reason: not valid java name */
    private static float f18792volatile = 1.0f;

    /* renamed from: break, reason: not valid java name */
    private com.luck.picture.lib.photoview.Cif f18794break;

    /* renamed from: default, reason: not valid java name */
    private Ccase f18799default;

    /* renamed from: finally, reason: not valid java name */
    private float f18804finally;

    /* renamed from: goto, reason: not valid java name */
    private ImageView f18806goto;

    /* renamed from: import, reason: not valid java name */
    private OnOutsidePhotoTapListener f18808import;

    /* renamed from: native, reason: not valid java name */
    private OnViewTapListener f18809native;

    /* renamed from: public, reason: not valid java name */
    private View.OnClickListener f18813public;

    /* renamed from: return, reason: not valid java name */
    private View.OnLongClickListener f18814return;

    /* renamed from: static, reason: not valid java name */
    private OnScaleChangedListener f18815static;

    /* renamed from: switch, reason: not valid java name */
    private OnSingleFlingListener f18817switch;

    /* renamed from: this, reason: not valid java name */
    private GestureDetector f18818this;

    /* renamed from: throw, reason: not valid java name */
    private OnMatrixChangedListener f18819throw;

    /* renamed from: throws, reason: not valid java name */
    private OnViewDragListener f18820throws;

    /* renamed from: while, reason: not valid java name */
    private OnPhotoTapListener f18822while;

    /* renamed from: do, reason: not valid java name */
    private Interpolator f18800do = new AccelerateDecelerateInterpolator();

    /* renamed from: if, reason: not valid java name */
    private int f18807if = f18787interface;

    /* renamed from: for, reason: not valid java name */
    private float f18805for = f18792volatile;

    /* renamed from: new, reason: not valid java name */
    private float f18810new = f18789strictfp;

    /* renamed from: try, reason: not valid java name */
    private float f18821try = f18784continue;

    /* renamed from: case, reason: not valid java name */
    private boolean f18795case = true;

    /* renamed from: else, reason: not valid java name */
    private boolean f18801else = false;

    /* renamed from: catch, reason: not valid java name */
    private final Matrix f18796catch = new Matrix();

    /* renamed from: class, reason: not valid java name */
    private final Matrix f18797class = new Matrix();

    /* renamed from: const, reason: not valid java name */
    private final Matrix f18798const = new Matrix();

    /* renamed from: final, reason: not valid java name */
    private final RectF f18803final = new RectF();

    /* renamed from: super, reason: not valid java name */
    private final float[] f18816super = new float[9];

    /* renamed from: extends, reason: not valid java name */
    private int f18802extends = 2;

    /* renamed from: package, reason: not valid java name */
    private boolean f18811package = true;

    /* renamed from: private, reason: not valid java name */
    private ImageView.ScaleType f18812private = ImageView.ScaleType.FIT_CENTER;

    /* renamed from: abstract, reason: not valid java name */
    private OnGestureListener f18793abstract = new Cdo();

    /* renamed from: com.luck.picture.lib.photoview.for$case, reason: invalid class name */
    public class Ccase implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final OverScroller f18823do;

        /* renamed from: for, reason: not valid java name */
        private int f18824for;

        /* renamed from: if, reason: not valid java name */
        private int f18825if;

        public Ccase(Context context) {
            this.f18823do = new OverScroller(context);
        }

        /* renamed from: do, reason: not valid java name */
        public void m23239do() {
            this.f18823do.forceFinished(true);
        }

        /* renamed from: if, reason: not valid java name */
        public void m23240if(int i, int i2, int i3, int i4) {
            int i5;
            int iRound;
            int i6;
            int iRound2;
            RectF rectFM23234continue = Cfor.this.m23234continue();
            if (rectFM23234continue == null) {
                return;
            }
            int iRound3 = Math.round(-rectFM23234continue.left);
            float f = i;
            if (f < rectFM23234continue.width()) {
                iRound = Math.round(rectFM23234continue.width() - f);
                i5 = 0;
            } else {
                i5 = iRound3;
                iRound = i5;
            }
            int iRound4 = Math.round(-rectFM23234continue.top);
            float f2 = i2;
            if (f2 < rectFM23234continue.height()) {
                iRound2 = Math.round(rectFM23234continue.height() - f2);
                i6 = 0;
            } else {
                i6 = iRound4;
                iRound2 = i6;
            }
            this.f18825if = iRound3;
            this.f18824for = iRound4;
            if (iRound3 == iRound && iRound4 == iRound2) {
                return;
            }
            this.f18823do.fling(iRound3, iRound4, i3, i4, i5, iRound, i6, iRound2, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f18823do.isFinished() && this.f18823do.computeScrollOffset()) {
                int currX = this.f18823do.getCurrX();
                int currY = this.f18823do.getCurrY();
                Cfor.this.f18798const.postTranslate(this.f18825if - currX, this.f18824for - currY);
                Cfor.this.m23217package();
                this.f18825if = currX;
                this.f18824for = currY;
                com.luck.picture.lib.photoview.Cdo.m23198do(Cfor.this.f18806goto, this);
            }
        }
    }

    /* renamed from: com.luck.picture.lib.photoview.for$do, reason: invalid class name */
    public class Cdo implements OnGestureListener {
        public Cdo() {
        }

        @Override // com.luck.picture.lib.photoview.OnGestureListener
        public void onDrag(float f, float f2) {
            if (Cfor.this.f18794break.m23248try()) {
                return;
            }
            if (Cfor.this.f18820throws != null) {
                Cfor.this.f18820throws.onDrag(f, f2);
            }
            Cfor.this.f18798const.postTranslate(f, f2);
            Cfor.this.m23217package();
            ViewParent parent = Cfor.this.f18806goto.getParent();
            if (!Cfor.this.f18795case || Cfor.this.f18794break.m23248try() || Cfor.this.f18801else) {
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            } else if ((Cfor.this.f18802extends == 2 || ((Cfor.this.f18802extends == 0 && f >= 1.0f) || (Cfor.this.f18802extends == 1 && f <= -1.0f))) && parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
            }
        }

        @Override // com.luck.picture.lib.photoview.OnGestureListener
        public void onFling(float f, float f2, float f3, float f4) {
            Cfor cfor = Cfor.this;
            cfor.f18799default = cfor.new Ccase(cfor.f18806goto.getContext());
            Ccase ccase = Cfor.this.f18799default;
            Cfor cfor2 = Cfor.this;
            int iM23229transient = cfor2.m23229transient(cfor2.f18806goto);
            Cfor cfor3 = Cfor.this;
            ccase.m23240if(iM23229transient, cfor3.m23219protected(cfor3.f18806goto), (int) f3, (int) f4);
            Cfor.this.f18806goto.post(Cfor.this.f18799default);
        }

        @Override // com.luck.picture.lib.photoview.OnGestureListener
        public void onScale(float f, float f2, float f3) {
            if (Cfor.this.a() < Cfor.this.f18821try || f < 1.0f) {
                if (Cfor.this.a() > Cfor.this.f18805for || f > 1.0f) {
                    if (Cfor.this.f18815static != null) {
                        Cfor.this.f18815static.onScaleChange(f, f2, f3);
                    }
                    Cfor.this.f18798const.postScale(f, f, f2, f3);
                    Cfor.this.m23217package();
                }
            }
        }
    }

    /* renamed from: com.luck.picture.lib.photoview.for$for, reason: invalid class name and collision with other inner class name */
    public class GestureDetectorOnDoubleTapListenerC0179for implements GestureDetector.OnDoubleTapListener {
        public GestureDetectorOnDoubleTapListenerC0179for() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float fA = Cfor.this.a();
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (fA < Cfor.this.m23236instanceof()) {
                    Cfor cfor = Cfor.this;
                    cfor.r(cfor.m23236instanceof(), x, y, true);
                } else if (fA < Cfor.this.m23236instanceof() || fA >= Cfor.this.m23235implements()) {
                    Cfor cfor2 = Cfor.this;
                    cfor2.r(cfor2.m23238synchronized(), x, y, true);
                } else {
                    Cfor cfor3 = Cfor.this;
                    cfor3.r(cfor3.m23235implements(), x, y, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (Cfor.this.f18813public != null) {
                Cfor.this.f18813public.onClick(Cfor.this.f18806goto);
            }
            RectF rectFM23234continue = Cfor.this.m23234continue();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (Cfor.this.f18809native != null) {
                Cfor.this.f18809native.onViewTap(Cfor.this.f18806goto, x, y);
            }
            if (rectFM23234continue == null) {
                return false;
            }
            if (!rectFM23234continue.contains(x, y)) {
                if (Cfor.this.f18808import == null) {
                    return false;
                }
                Cfor.this.f18808import.onOutsidePhotoTap(Cfor.this.f18806goto);
                return false;
            }
            float fWidth = (x - rectFM23234continue.left) / rectFM23234continue.width();
            float fHeight = (y - rectFM23234continue.top) / rectFM23234continue.height();
            if (Cfor.this.f18822while == null) {
                return true;
            }
            Cfor.this.f18822while.onPhotoTap(Cfor.this.f18806goto, fWidth, fHeight);
            return true;
        }
    }

    /* renamed from: com.luck.picture.lib.photoview.for$if, reason: invalid class name */
    public class Cif extends GestureDetector.SimpleOnGestureListener {
        public Cif() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (Cfor.this.f18817switch == null || Cfor.this.a() > Cfor.f18792volatile || MotionEventCompat.getPointerCount(motionEvent) > Cfor.f18790synchronized || MotionEventCompat.getPointerCount(motionEvent2) > Cfor.f18790synchronized) {
                return false;
            }
            return Cfor.this.f18817switch.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (Cfor.this.f18814return != null) {
                Cfor.this.f18814return.onLongClick(Cfor.this.f18806goto);
            }
        }
    }

    /* renamed from: com.luck.picture.lib.photoview.for$new, reason: invalid class name */
    public static /* synthetic */ class Cnew {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f18830do;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f18830do = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18830do[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18830do[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18830do[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.luck.picture.lib.photoview.for$try, reason: invalid class name */
    public class Ctry implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final float f18832do;

        /* renamed from: for, reason: not valid java name */
        private final long f18833for = System.currentTimeMillis();

        /* renamed from: if, reason: not valid java name */
        private final float f18834if;

        /* renamed from: new, reason: not valid java name */
        private final float f18835new;

        /* renamed from: try, reason: not valid java name */
        private final float f18836try;

        public Ctry(float f, float f2, float f3, float f4) {
            this.f18832do = f3;
            this.f18834if = f4;
            this.f18835new = f;
            this.f18836try = f2;
        }

        /* renamed from: do, reason: not valid java name */
        private float m23241do() {
            return Cfor.this.f18800do.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.f18833for) * 1.0f) / Cfor.this.f18807if));
        }

        @Override // java.lang.Runnable
        public void run() {
            float fM23241do = m23241do();
            float f = this.f18835new;
            Cfor.this.f18793abstract.onScale((f + ((this.f18836try - f) * fM23241do)) / Cfor.this.a(), this.f18832do, this.f18834if);
            if (fM23241do < 1.0f) {
                com.luck.picture.lib.photoview.Cdo.m23198do(Cfor.this.f18806goto, this);
            }
        }
    }

    public Cfor(ImageView imageView) {
        this.f18806goto = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f18804finally = 0.0f;
        this.f18794break = new com.luck.picture.lib.photoview.Cif(imageView.getContext(), this.f18793abstract);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new Cif());
        this.f18818this = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new GestureDetectorOnDoubleTapListenerC0179for());
    }

    private float d(Matrix matrix, int i) {
        matrix.getValues(this.f18816super);
        return this.f18816super[i];
    }

    /* renamed from: finally, reason: not valid java name */
    private void m23210finally() {
        Ccase ccase = this.f18799default;
        if (ccase != null) {
            ccase.m23239do();
            this.f18799default = null;
        }
    }

    private void g() {
        this.f18798const.reset();
        o(this.f18804finally);
        k(m23231volatile());
        m23218private();
    }

    private void k(Matrix matrix) {
        RectF rectFM23223strictfp;
        this.f18806goto.setImageMatrix(matrix);
        if (this.f18819throw == null || (rectFM23223strictfp = m23223strictfp(matrix)) == null) {
            return;
        }
        this.f18819throw.onMatrixChanged(rectFM23223strictfp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public void m23217package() {
        if (m23218private()) {
            k(m23231volatile());
        }
    }

    /* renamed from: private, reason: not valid java name */
    private boolean m23218private() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        RectF rectFM23223strictfp = m23223strictfp(m23231volatile());
        if (rectFM23223strictfp == null) {
            return false;
        }
        float fHeight = rectFM23223strictfp.height();
        float fWidth = rectFM23223strictfp.width();
        float fM23219protected = m23219protected(this.f18806goto);
        float f6 = 0.0f;
        if (fHeight <= fM23219protected) {
            int i = Cnew.f18830do[this.f18812private.ordinal()];
            if (i != 2) {
                if (i != 3) {
                    fM23219protected = (fM23219protected - fHeight) / 2.0f;
                    f2 = rectFM23223strictfp.top;
                } else {
                    fM23219protected -= fHeight;
                    f2 = rectFM23223strictfp.top;
                }
            } else {
                f = rectFM23223strictfp.top;
                f3 = -f;
            }
        } else {
            f = rectFM23223strictfp.top;
            if (f > 0.0f) {
                f3 = -f;
            } else {
                f2 = rectFM23223strictfp.bottom;
                f3 = f2 < fM23219protected ? fM23219protected - f2 : 0.0f;
            }
        }
        float fM23229transient = m23229transient(this.f18806goto);
        if (fWidth <= fM23229transient) {
            int i2 = Cnew.f18830do[this.f18812private.ordinal()];
            if (i2 != 2) {
                if (i2 != 3) {
                    f4 = (fM23229transient - fWidth) / 2.0f;
                    f5 = rectFM23223strictfp.left;
                } else {
                    f4 = fM23229transient - fWidth;
                    f5 = rectFM23223strictfp.left;
                }
                f6 = f4 - f5;
            } else {
                f6 = -rectFM23223strictfp.left;
            }
            this.f18802extends = 2;
        } else {
            float f7 = rectFM23223strictfp.left;
            if (f7 > 0.0f) {
                this.f18802extends = 0;
                f6 = -f7;
            } else {
                float f8 = rectFM23223strictfp.right;
                if (f8 < fM23229transient) {
                    f6 = fM23229transient - f8;
                    this.f18802extends = 1;
                } else {
                    this.f18802extends = -1;
                }
            }
        }
        this.f18798const.postTranslate(f6, f3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public int m23219protected(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* renamed from: strictfp, reason: not valid java name */
    private RectF m23223strictfp(Matrix matrix) {
        if (this.f18806goto.getDrawable() == null) {
            return null;
        }
        this.f18803final.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        matrix.mapRect(this.f18803final);
        return this.f18803final;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public int m23229transient(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    /* renamed from: volatile, reason: not valid java name */
    private Matrix m23231volatile() {
        this.f18797class.set(this.f18796catch);
        this.f18797class.postConcat(this.f18798const);
        return this.f18797class;
    }

    private void z(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float fM23229transient = m23229transient(this.f18806goto);
        float fM23219protected = m23219protected(this.f18806goto);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f18796catch.reset();
        float f = intrinsicWidth;
        float f2 = fM23229transient / f;
        float f3 = intrinsicHeight;
        float f4 = fM23219protected / f3;
        ImageView.ScaleType scaleType = this.f18812private;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f18796catch.postTranslate((fM23229transient - f) / 2.0f, (fM23219protected - f3) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float fMax = Math.max(f2, f4);
            this.f18796catch.postScale(fMax, fMax);
            this.f18796catch.postTranslate((fM23229transient - (f * fMax)) / 2.0f, (fM23219protected - (f3 * fMax)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float fMin = Math.min(1.0f, Math.min(f2, f4));
            this.f18796catch.postScale(fMin, fMin);
            this.f18796catch.postTranslate((fM23229transient - (f * fMin)) / 2.0f, (fM23219protected - (f3 * fMin)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f, f3);
            RectF rectF2 = new RectF(0.0f, 0.0f, fM23229transient, fM23219protected);
            if (((int) this.f18804finally) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f3, f);
            }
            int i = Cnew.f18830do[this.f18812private.ordinal()];
            if (i == 1) {
                this.f18796catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i == 2) {
                this.f18796catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i == 3) {
                this.f18796catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i == 4) {
                this.f18796catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        g();
    }

    public float a() {
        return (float) Math.sqrt(((float) Math.pow(d(this.f18798const, 0), 2.0d)) + ((float) Math.pow(d(this.f18798const, 3), 2.0d)));
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m23233abstract(Matrix matrix) {
        matrix.set(m23231volatile());
    }

    public ImageView.ScaleType b() {
        return this.f18812private;
    }

    public void c(Matrix matrix) {
        matrix.set(this.f18798const);
    }

    /* renamed from: continue, reason: not valid java name */
    public RectF m23234continue() {
        m23218private();
        return m23223strictfp(m23231volatile());
    }

    @Deprecated
    public boolean e() {
        return this.f18811package;
    }

    public boolean f() {
        return this.f18811package;
    }

    public void h(boolean z) {
        this.f18795case = z;
    }

    public void i(float f) {
        this.f18804finally = f % 360.0f;
        y();
        o(this.f18804finally);
        m23217package();
    }

    /* renamed from: implements, reason: not valid java name */
    public float m23235implements() {
        return this.f18821try;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public float m23236instanceof() {
        return this.f18810new;
    }

    /* renamed from: interface, reason: not valid java name */
    public Matrix m23237interface() {
        return this.f18797class;
    }

    public boolean j(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("Matrix cannot be null");
        }
        if (this.f18806goto.getDrawable() == null) {
            return false;
        }
        this.f18798const.set(matrix);
        m23217package();
        return true;
    }

    public void l(float f) {
        com.luck.picture.lib.photoview.Cnew.m23249do(this.f18805for, this.f18810new, f);
        this.f18821try = f;
    }

    public void m(float f) {
        com.luck.picture.lib.photoview.Cnew.m23249do(this.f18805for, f, this.f18821try);
        this.f18810new = f;
    }

    public void n(float f) {
        com.luck.picture.lib.photoview.Cnew.m23249do(f, this.f18810new, this.f18821try);
        this.f18805for = f;
    }

    public void o(float f) {
        this.f18798const.postRotate(f % 360.0f);
        m23217package();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        z(this.f18806goto.getDrawable());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        com.luck.picture.lib.photoview.Cif cif;
        boolean z2;
        GestureDetector gestureDetector;
        RectF rectFM23234continue;
        boolean z3 = false;
        if (!this.f18811package || !com.luck.picture.lib.photoview.Cnew.m23250for((ImageView) view)) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                if (a() < this.f18805for) {
                    RectF rectFM23234continue2 = m23234continue();
                    if (rectFM23234continue2 != null) {
                        view.post(new Ctry(a(), this.f18805for, rectFM23234continue2.centerX(), rectFM23234continue2.centerY()));
                        z = true;
                    }
                } else if (a() > this.f18821try && (rectFM23234continue = m23234continue()) != null) {
                    view.post(new Ctry(a(), this.f18821try, rectFM23234continue.centerX(), rectFM23234continue.centerY()));
                    z = true;
                }
            }
            cif = this.f18794break;
            if (cif == null) {
                boolean zM23248try = cif.m23248try();
                boolean zM23247new = this.f18794break.m23247new();
                boolean zM23246case = this.f18794break.m23246case(motionEvent);
                boolean z4 = (zM23248try || this.f18794break.m23248try()) ? false : true;
                boolean z5 = (zM23247new || this.f18794break.m23247new()) ? false : true;
                if (z4 && z5) {
                    z3 = true;
                }
                this.f18801else = z3;
                z2 = zM23246case;
            } else {
                z2 = z;
            }
            gestureDetector = this.f18818this;
            if (gestureDetector == null && gestureDetector.onTouchEvent(motionEvent)) {
                return true;
            }
        }
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        m23210finally();
        z = false;
        cif = this.f18794break;
        if (cif == null) {
        }
        gestureDetector = this.f18818this;
        return gestureDetector == null ? z2 : z2;
    }

    public void p(float f) {
        this.f18798const.setRotate(f % 360.0f);
        m23217package();
    }

    public void q(float f) {
        s(f, false);
    }

    public void r(float f, float f2, float f3, boolean z) {
        if (f < this.f18805for || f > this.f18821try) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z) {
            this.f18806goto.post(new Ctry(a(), f, f2, f3));
        } else {
            this.f18798const.setScale(f, f, f2, f3);
            m23217package();
        }
    }

    public void s(float f, boolean z) {
        r(f, this.f18806goto.getRight() / 2, this.f18806goto.getBottom() / 2, z);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f18813public = onClickListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f18818this.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f18814return = onLongClickListener;
    }

    public void setOnMatrixChangeListener(OnMatrixChangedListener onMatrixChangedListener) {
        this.f18819throw = onMatrixChangedListener;
    }

    public void setOnOutsidePhotoTapListener(OnOutsidePhotoTapListener onOutsidePhotoTapListener) {
        this.f18808import = onOutsidePhotoTapListener;
    }

    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.f18822while = onPhotoTapListener;
    }

    public void setOnScaleChangeListener(OnScaleChangedListener onScaleChangedListener) {
        this.f18815static = onScaleChangedListener;
    }

    public void setOnSingleFlingListener(OnSingleFlingListener onSingleFlingListener) {
        this.f18817switch = onSingleFlingListener;
    }

    public void setOnViewDragListener(OnViewDragListener onViewDragListener) {
        this.f18820throws = onViewDragListener;
    }

    public void setOnViewTapListener(OnViewTapListener onViewTapListener) {
        this.f18809native = onViewTapListener;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public float m23238synchronized() {
        return this.f18805for;
    }

    public void t(float f, float f2, float f3) {
        com.luck.picture.lib.photoview.Cnew.m23249do(f, f2, f3);
        this.f18805for = f;
        this.f18810new = f2;
        this.f18821try = f3;
    }

    public void u(ImageView.ScaleType scaleType) {
        if (!com.luck.picture.lib.photoview.Cnew.m23252new(scaleType) || scaleType == this.f18812private) {
            return;
        }
        this.f18812private = scaleType;
        y();
    }

    public void v(Interpolator interpolator) {
        this.f18800do = interpolator;
    }

    public void w(int i) {
        this.f18807if = i;
    }

    public void x(boolean z) {
        this.f18811package = z;
        y();
    }

    public void y() {
        if (this.f18811package) {
            z(this.f18806goto.getDrawable());
        } else {
            g();
        }
    }
}
