package cc.shinichi.library.view.photoview;

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

/* renamed from: cc.shinichi.library.view.photoview.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor implements View.OnTouchListener, View.OnLayoutChangeListener {
    private static float a = 3.0f;
    private static float b = 1.75f;
    private static float c = 1.0f;
    private static int d = 200;
    private static int e = 1;

    /* renamed from: implements, reason: not valid java name */
    private static final int f8955implements = 0;

    /* renamed from: instanceof, reason: not valid java name */
    private static final int f8956instanceof = 1;

    /* renamed from: interface, reason: not valid java name */
    private static final int f8957interface = 1;

    /* renamed from: protected, reason: not valid java name */
    private static final int f8958protected = 2;

    /* renamed from: strictfp, reason: not valid java name */
    private static final int f8959strictfp = -1;

    /* renamed from: synchronized, reason: not valid java name */
    private static final int f8960synchronized = 2;

    /* renamed from: transient, reason: not valid java name */
    private static final int f8961transient = -1;

    /* renamed from: volatile, reason: not valid java name */
    private static final int f8962volatile = 0;

    /* renamed from: const, reason: not valid java name */
    private ImageView f8968const;

    /* renamed from: default, reason: not valid java name */
    private Ccase f8970default;

    /* renamed from: final, reason: not valid java name */
    private GestureDetector f8974final;

    /* renamed from: import, reason: not valid java name */
    private OnOutsidePhotoTapListener f8979import;

    /* renamed from: native, reason: not valid java name */
    private OnViewTapListener f8980native;

    /* renamed from: package, reason: not valid java name */
    private float f8982package;

    /* renamed from: public, reason: not valid java name */
    private View.OnClickListener f8984public;

    /* renamed from: return, reason: not valid java name */
    private View.OnLongClickListener f8985return;

    /* renamed from: static, reason: not valid java name */
    private OnScaleChangedListener f8986static;

    /* renamed from: super, reason: not valid java name */
    private cc.shinichi.library.view.photoview.Cif f8987super;

    /* renamed from: switch, reason: not valid java name */
    private OnSingleFlingListener f8988switch;

    /* renamed from: throw, reason: not valid java name */
    private OnMatrixChangedListener f8990throw;

    /* renamed from: throws, reason: not valid java name */
    private OnViewDragListener f8991throws;

    /* renamed from: while, reason: not valid java name */
    private OnPhotoTapListener f8993while;

    /* renamed from: do, reason: not valid java name */
    private final Matrix f8971do = new Matrix();

    /* renamed from: if, reason: not valid java name */
    private final Matrix f8978if = new Matrix();

    /* renamed from: for, reason: not valid java name */
    private final Matrix f8976for = new Matrix();

    /* renamed from: new, reason: not valid java name */
    private final RectF f8981new = new RectF();

    /* renamed from: try, reason: not valid java name */
    private final float[] f8992try = new float[9];

    /* renamed from: case, reason: not valid java name */
    private Interpolator f8965case = new AccelerateDecelerateInterpolator();

    /* renamed from: else, reason: not valid java name */
    private int f8972else = d;

    /* renamed from: goto, reason: not valid java name */
    private float f8977goto = c;

    /* renamed from: this, reason: not valid java name */
    private float f8989this = b;

    /* renamed from: break, reason: not valid java name */
    private float f8964break = a;

    /* renamed from: catch, reason: not valid java name */
    private boolean f8966catch = true;

    /* renamed from: class, reason: not valid java name */
    private boolean f8967class = false;

    /* renamed from: extends, reason: not valid java name */
    private int f8973extends = 2;

    /* renamed from: finally, reason: not valid java name */
    private int f8975finally = 2;

    /* renamed from: private, reason: not valid java name */
    private boolean f8983private = true;

    /* renamed from: abstract, reason: not valid java name */
    private ImageView.ScaleType f8963abstract = ImageView.ScaleType.FIT_CENTER;

    /* renamed from: continue, reason: not valid java name */
    private OnGestureListener f8969continue = new Cdo();

    /* renamed from: cc.shinichi.library.view.photoview.for$case, reason: invalid class name */
    public class Ccase implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final OverScroller f8994do;

        /* renamed from: for, reason: not valid java name */
        private int f8995for;

        /* renamed from: if, reason: not valid java name */
        private int f8996if;

        public Ccase(Context context) {
            this.f8994do = new OverScroller(context);
        }

        /* renamed from: do, reason: not valid java name */
        public void m10770do() {
            this.f8994do.forceFinished(true);
        }

        /* renamed from: if, reason: not valid java name */
        public void m10771if(int i, int i2, int i3, int i4) {
            int i5;
            int iRound;
            int i6;
            int iRound2;
            RectF rectFM10765continue = Cfor.this.m10765continue();
            if (rectFM10765continue == null) {
                return;
            }
            int iRound3 = Math.round(-rectFM10765continue.left);
            float f = i;
            if (f < rectFM10765continue.width()) {
                iRound = Math.round(rectFM10765continue.width() - f);
                i5 = 0;
            } else {
                i5 = iRound3;
                iRound = i5;
            }
            int iRound4 = Math.round(-rectFM10765continue.top);
            float f2 = i2;
            if (f2 < rectFM10765continue.height()) {
                iRound2 = Math.round(rectFM10765continue.height() - f2);
                i6 = 0;
            } else {
                i6 = iRound4;
                iRound2 = i6;
            }
            this.f8996if = iRound3;
            this.f8995for = iRound4;
            if (iRound3 == iRound && iRound4 == iRound2) {
                return;
            }
            this.f8994do.fling(iRound3, iRound4, i3, i4, i5, iRound, i6, iRound2, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f8994do.isFinished() && this.f8994do.computeScrollOffset()) {
                int currX = this.f8994do.getCurrX();
                int currY = this.f8994do.getCurrY();
                Cfor.this.f8976for.postTranslate(this.f8996if - currX, this.f8995for - currY);
                Cfor.this.m10748package();
                this.f8996if = currX;
                this.f8995for = currY;
                cc.shinichi.library.view.photoview.Cdo.m10729do(Cfor.this.f8968const, this);
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.photoview.for$do, reason: invalid class name */
    public class Cdo implements OnGestureListener {
        public Cdo() {
        }

        @Override // cc.shinichi.library.view.photoview.OnGestureListener
        public void onDrag(float f, float f2) {
            if (Cfor.this.f8987super.m10779try()) {
                return;
            }
            if (Cfor.this.f8991throws != null) {
                Cfor.this.f8991throws.onDrag(f, f2);
            }
            Cfor.this.f8976for.postTranslate(f, f2);
            Cfor.this.m10748package();
            ViewParent parent = Cfor.this.f8968const.getParent();
            if (!Cfor.this.f8966catch || Cfor.this.f8987super.m10779try() || Cfor.this.f8967class) {
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            } else if ((Cfor.this.f8973extends == 2 || ((Cfor.this.f8973extends == 0 && f >= 1.0f) || ((Cfor.this.f8973extends == 1 && f <= -1.0f) || ((Cfor.this.f8975finally == 0 && f2 >= 1.0f) || (Cfor.this.f8975finally == 1 && f2 <= -1.0f))))) && parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
            }
        }

        @Override // cc.shinichi.library.view.photoview.OnGestureListener
        public void onFling(float f, float f2, float f3, float f4) {
            Cfor cfor = Cfor.this;
            cfor.f8970default = cfor.new Ccase(cfor.f8968const.getContext());
            Ccase ccase = Cfor.this.f8970default;
            Cfor cfor2 = Cfor.this;
            int iM10760transient = cfor2.m10760transient(cfor2.f8968const);
            Cfor cfor3 = Cfor.this;
            ccase.m10771if(iM10760transient, cfor3.m10750protected(cfor3.f8968const), (int) f3, (int) f4);
            Cfor.this.f8968const.post(Cfor.this.f8970default);
        }

        @Override // cc.shinichi.library.view.photoview.OnGestureListener
        public void onScale(float f, float f2, float f3) {
            if (Cfor.this.a() < Cfor.this.f8964break || f < 1.0f) {
                if (Cfor.this.f8986static != null) {
                    Cfor.this.f8986static.onScaleChange(f, f2, f3);
                }
                Cfor.this.f8976for.postScale(f, f, f2, f3);
                Cfor.this.m10748package();
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.photoview.for$for, reason: invalid class name and collision with other inner class name */
    public class GestureDetectorOnDoubleTapListenerC0016for implements GestureDetector.OnDoubleTapListener {
        public GestureDetectorOnDoubleTapListenerC0016for() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float fA = Cfor.this.a();
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (fA < Cfor.this.m10767instanceof()) {
                    Cfor cfor = Cfor.this;
                    cfor.r(cfor.m10767instanceof(), x, y, true);
                } else if (fA < Cfor.this.m10767instanceof() || fA >= Cfor.this.m10766implements()) {
                    Cfor cfor2 = Cfor.this;
                    cfor2.r(cfor2.m10769synchronized(), x, y, true);
                } else {
                    Cfor cfor3 = Cfor.this;
                    cfor3.r(cfor3.m10766implements(), x, y, true);
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
            if (Cfor.this.f8984public != null) {
                Cfor.this.f8984public.onClick(Cfor.this.f8968const);
            }
            RectF rectFM10765continue = Cfor.this.m10765continue();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (Cfor.this.f8980native != null) {
                Cfor.this.f8980native.onViewTap(Cfor.this.f8968const, x, y);
            }
            if (rectFM10765continue == null) {
                return false;
            }
            if (!rectFM10765continue.contains(x, y)) {
                if (Cfor.this.f8979import == null) {
                    return false;
                }
                Cfor.this.f8979import.onOutsidePhotoTap(Cfor.this.f8968const);
                return false;
            }
            float fWidth = (x - rectFM10765continue.left) / rectFM10765continue.width();
            float fHeight = (y - rectFM10765continue.top) / rectFM10765continue.height();
            if (Cfor.this.f8993while == null) {
                return true;
            }
            Cfor.this.f8993while.onPhotoTap(Cfor.this.f8968const, fWidth, fHeight);
            return true;
        }
    }

    /* renamed from: cc.shinichi.library.view.photoview.for$if, reason: invalid class name */
    public class Cif extends GestureDetector.SimpleOnGestureListener {
        public Cif() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (Cfor.this.f8988switch == null || Cfor.this.a() > Cfor.c || motionEvent.getPointerCount() > Cfor.e || motionEvent2.getPointerCount() > Cfor.e) {
                return false;
            }
            return Cfor.this.f8988switch.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (Cfor.this.f8985return != null) {
                Cfor.this.f8985return.onLongClick(Cfor.this.f8968const);
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.photoview.for$new, reason: invalid class name */
    public static /* synthetic */ class Cnew {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f9001do;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f9001do = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9001do[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9001do[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9001do[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.photoview.for$try, reason: invalid class name */
    public class Ctry implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final float f9003do;

        /* renamed from: for, reason: not valid java name */
        private final long f9004for = System.currentTimeMillis();

        /* renamed from: if, reason: not valid java name */
        private final float f9005if;

        /* renamed from: new, reason: not valid java name */
        private final float f9006new;

        /* renamed from: try, reason: not valid java name */
        private final float f9007try;

        public Ctry(float f, float f2, float f3, float f4) {
            this.f9003do = f3;
            this.f9005if = f4;
            this.f9006new = f;
            this.f9007try = f2;
        }

        /* renamed from: do, reason: not valid java name */
        private float m10772do() {
            return Cfor.this.f8965case.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.f9004for) * 1.0f) / Cfor.this.f8972else));
        }

        @Override // java.lang.Runnable
        public void run() {
            float fM10772do = m10772do();
            float f = this.f9006new;
            Cfor.this.f8969continue.onScale((f + ((this.f9007try - f) * fM10772do)) / Cfor.this.a(), this.f9003do, this.f9005if);
            if (fM10772do < 1.0f) {
                cc.shinichi.library.view.photoview.Cdo.m10729do(Cfor.this.f8968const, this);
            }
        }
    }

    public Cfor(ImageView imageView) {
        this.f8968const = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f8982package = 0.0f;
        this.f8987super = new cc.shinichi.library.view.photoview.Cif(imageView.getContext(), this.f8969continue);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new Cif());
        this.f8974final = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new GestureDetectorOnDoubleTapListenerC0016for());
    }

    private float d(Matrix matrix, int i) {
        matrix.getValues(this.f8992try);
        return this.f8992try[i];
    }

    /* renamed from: finally, reason: not valid java name */
    private void m10741finally() {
        Ccase ccase = this.f8970default;
        if (ccase != null) {
            ccase.m10770do();
            this.f8970default = null;
        }
    }

    private void g() {
        this.f8976for.reset();
        o(this.f8982package);
        k(m10762volatile());
        m10749private();
    }

    private void k(Matrix matrix) {
        RectF rectFM10754strictfp;
        this.f8968const.setImageMatrix(matrix);
        if (this.f8990throw == null || (rectFM10754strictfp = m10754strictfp(matrix)) == null) {
            return;
        }
        this.f8990throw.onMatrixChanged(rectFM10754strictfp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public void m10748package() {
        if (m10749private()) {
            k(m10762volatile());
        }
    }

    /* renamed from: private, reason: not valid java name */
    private boolean m10749private() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        RectF rectFM10754strictfp = m10754strictfp(m10762volatile());
        if (rectFM10754strictfp == null) {
            return false;
        }
        float fHeight = rectFM10754strictfp.height();
        float fWidth = rectFM10754strictfp.width();
        float fM10750protected = m10750protected(this.f8968const);
        float f6 = 0.0f;
        if (fHeight <= fM10750protected) {
            int i = Cnew.f9001do[this.f8963abstract.ordinal()];
            if (i != 2) {
                if (i != 3) {
                    f4 = (fM10750protected - fHeight) / 2.0f;
                    f5 = rectFM10754strictfp.top;
                } else {
                    f4 = fM10750protected - fHeight;
                    f5 = rectFM10754strictfp.top;
                }
                f = f4 - f5;
            } else {
                f = -rectFM10754strictfp.top;
            }
            this.f8975finally = 2;
        } else {
            float f7 = rectFM10754strictfp.top;
            if (f7 > 0.0f) {
                this.f8975finally = 0;
                f = -f7;
            } else {
                float f8 = rectFM10754strictfp.bottom;
                if (f8 < fM10750protected) {
                    this.f8975finally = 1;
                    f = fM10750protected - f8;
                } else {
                    this.f8975finally = -1;
                    f = 0.0f;
                }
            }
        }
        float fM10760transient = m10760transient(this.f8968const);
        if (fWidth <= fM10760transient) {
            int i2 = Cnew.f9001do[this.f8963abstract.ordinal()];
            if (i2 != 2) {
                if (i2 != 3) {
                    f2 = (fM10760transient - fWidth) / 2.0f;
                    f3 = rectFM10754strictfp.left;
                } else {
                    f2 = fM10760transient - fWidth;
                    f3 = rectFM10754strictfp.left;
                }
                f6 = f2 - f3;
            } else {
                f6 = -rectFM10754strictfp.left;
            }
            this.f8973extends = 2;
        } else {
            float f9 = rectFM10754strictfp.left;
            if (f9 > 0.0f) {
                this.f8973extends = 0;
                f6 = -f9;
            } else {
                float f10 = rectFM10754strictfp.right;
                if (f10 < fM10760transient) {
                    f6 = fM10760transient - f10;
                    this.f8973extends = 1;
                } else {
                    this.f8973extends = -1;
                }
            }
        }
        this.f8976for.postTranslate(f6, f);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public int m10750protected(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* renamed from: strictfp, reason: not valid java name */
    private RectF m10754strictfp(Matrix matrix) {
        if (this.f8968const.getDrawable() == null) {
            return null;
        }
        this.f8981new.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        matrix.mapRect(this.f8981new);
        return this.f8981new;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public int m10760transient(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    /* renamed from: volatile, reason: not valid java name */
    private Matrix m10762volatile() {
        this.f8978if.set(this.f8971do);
        this.f8978if.postConcat(this.f8976for);
        return this.f8978if;
    }

    private void z(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float fM10760transient = m10760transient(this.f8968const);
        float fM10750protected = m10750protected(this.f8968const);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f8971do.reset();
        float f = intrinsicWidth;
        float f2 = fM10760transient / f;
        float f3 = intrinsicHeight;
        float f4 = fM10750protected / f3;
        ImageView.ScaleType scaleType = this.f8963abstract;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f8971do.postTranslate((fM10760transient - f) / 2.0f, (fM10750protected - f3) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float fMax = Math.max(f2, f4);
            this.f8971do.postScale(fMax, fMax);
            this.f8971do.postTranslate((fM10760transient - (f * fMax)) / 2.0f, (fM10750protected - (f3 * fMax)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float fMin = Math.min(1.0f, Math.min(f2, f4));
            this.f8971do.postScale(fMin, fMin);
            this.f8971do.postTranslate((fM10760transient - (f * fMin)) / 2.0f, (fM10750protected - (f3 * fMin)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f, f3);
            RectF rectF2 = new RectF(0.0f, 0.0f, fM10760transient, fM10750protected);
            if (((int) this.f8982package) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f3, f);
            }
            int i = Cnew.f9001do[this.f8963abstract.ordinal()];
            if (i == 1) {
                this.f8971do.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i == 2) {
                this.f8971do.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i == 3) {
                this.f8971do.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i == 4) {
                this.f8971do.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        g();
    }

    public float a() {
        return (float) Math.sqrt(((float) Math.pow(d(this.f8976for, 0), 2.0d)) + ((float) Math.pow(d(this.f8976for, 3), 2.0d)));
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m10764abstract(Matrix matrix) {
        matrix.set(m10762volatile());
    }

    public ImageView.ScaleType b() {
        return this.f8963abstract;
    }

    public void c(Matrix matrix) {
        matrix.set(this.f8976for);
    }

    /* renamed from: continue, reason: not valid java name */
    public RectF m10765continue() {
        m10749private();
        return m10754strictfp(m10762volatile());
    }

    @Deprecated
    public boolean e() {
        return this.f8983private;
    }

    public boolean f() {
        return this.f8983private;
    }

    public void h(boolean z) {
        this.f8966catch = z;
    }

    public void i(float f) {
        this.f8982package = f % 360.0f;
        y();
        o(this.f8982package);
        m10748package();
    }

    /* renamed from: implements, reason: not valid java name */
    public float m10766implements() {
        return this.f8964break;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public float m10767instanceof() {
        return this.f8989this;
    }

    /* renamed from: interface, reason: not valid java name */
    public Matrix m10768interface() {
        return this.f8978if;
    }

    public boolean j(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("Matrix cannot be null");
        }
        if (this.f8968const.getDrawable() == null) {
            return false;
        }
        this.f8976for.set(matrix);
        m10748package();
        return true;
    }

    public void l(float f) {
        cc.shinichi.library.view.photoview.Cnew.m10780do(this.f8977goto, this.f8989this, f);
        this.f8964break = f;
    }

    public void m(float f) {
        cc.shinichi.library.view.photoview.Cnew.m10780do(this.f8977goto, f, this.f8964break);
        this.f8989this = f;
    }

    public void n(float f) {
        cc.shinichi.library.view.photoview.Cnew.m10780do(f, this.f8989this, this.f8964break);
        this.f8977goto = f;
    }

    public void o(float f) {
        this.f8976for.postRotate(f % 360.0f);
        m10748package();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        z(this.f8968const.getDrawable());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        cc.shinichi.library.view.photoview.Cif cif;
        boolean z2;
        GestureDetector gestureDetector;
        RectF rectFM10765continue;
        boolean z3 = false;
        if (!this.f8983private || !cc.shinichi.library.view.photoview.Cnew.m10781for((ImageView) view)) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                if (a() < this.f8977goto) {
                    RectF rectFM10765continue2 = m10765continue();
                    if (rectFM10765continue2 != null) {
                        view.post(new Ctry(a(), this.f8977goto, rectFM10765continue2.centerX(), rectFM10765continue2.centerY()));
                        z = true;
                    }
                } else if (a() > this.f8964break && (rectFM10765continue = m10765continue()) != null) {
                    view.post(new Ctry(a(), this.f8964break, rectFM10765continue.centerX(), rectFM10765continue.centerY()));
                    z = true;
                }
            }
            cif = this.f8987super;
            if (cif == null) {
                boolean zM10779try = cif.m10779try();
                boolean zM10778new = this.f8987super.m10778new();
                boolean zM10777case = this.f8987super.m10777case(motionEvent);
                boolean z4 = (zM10779try || this.f8987super.m10779try()) ? false : true;
                boolean z5 = (zM10778new || this.f8987super.m10778new()) ? false : true;
                if (z4 && z5) {
                    z3 = true;
                }
                this.f8967class = z3;
                z2 = zM10777case;
            } else {
                z2 = z;
            }
            gestureDetector = this.f8974final;
            if (gestureDetector == null && gestureDetector.onTouchEvent(motionEvent)) {
                return true;
            }
        }
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        m10741finally();
        z = false;
        cif = this.f8987super;
        if (cif == null) {
        }
        gestureDetector = this.f8974final;
        return gestureDetector == null ? z2 : z2;
    }

    public void p(float f) {
        this.f8976for.setRotate(f % 360.0f);
        m10748package();
    }

    public void q(float f) {
        s(f, false);
    }

    public void r(float f, float f2, float f3, boolean z) {
        if (f < this.f8977goto || f > this.f8964break) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z) {
            this.f8968const.post(new Ctry(a(), f, f2, f3));
        } else {
            this.f8976for.setScale(f, f, f2, f3);
            m10748package();
        }
    }

    public void s(float f, boolean z) {
        r(f, this.f8968const.getRight() / 2, this.f8968const.getBottom() / 2, z);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f8984public = onClickListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f8974final.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f8985return = onLongClickListener;
    }

    public void setOnMatrixChangeListener(OnMatrixChangedListener onMatrixChangedListener) {
        this.f8990throw = onMatrixChangedListener;
    }

    public void setOnOutsidePhotoTapListener(OnOutsidePhotoTapListener onOutsidePhotoTapListener) {
        this.f8979import = onOutsidePhotoTapListener;
    }

    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.f8993while = onPhotoTapListener;
    }

    public void setOnScaleChangeListener(OnScaleChangedListener onScaleChangedListener) {
        this.f8986static = onScaleChangedListener;
    }

    public void setOnSingleFlingListener(OnSingleFlingListener onSingleFlingListener) {
        this.f8988switch = onSingleFlingListener;
    }

    public void setOnViewDragListener(OnViewDragListener onViewDragListener) {
        this.f8991throws = onViewDragListener;
    }

    public void setOnViewTapListener(OnViewTapListener onViewTapListener) {
        this.f8980native = onViewTapListener;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public float m10769synchronized() {
        return this.f8977goto;
    }

    public void t(float f, float f2, float f3) {
        cc.shinichi.library.view.photoview.Cnew.m10780do(f, f2, f3);
        this.f8977goto = f;
        this.f8989this = f2;
        this.f8964break = f3;
    }

    public void u(ImageView.ScaleType scaleType) {
        if (!cc.shinichi.library.view.photoview.Cnew.m10783new(scaleType) || scaleType == this.f8963abstract) {
            return;
        }
        this.f8963abstract = scaleType;
        y();
    }

    public void v(Interpolator interpolator) {
        this.f8965case = interpolator;
    }

    public void w(int i) {
        this.f8972else = i;
    }

    public void x(boolean z) {
        this.f8983private = z;
        y();
    }

    public void y() {
        if (this.f8983private) {
            z(this.f8968const.getDrawable());
        } else {
            g();
        }
    }
}
