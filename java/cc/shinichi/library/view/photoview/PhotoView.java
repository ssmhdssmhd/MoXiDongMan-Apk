package cc.shinichi.library.view.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes.dex */
public class PhotoView extends AppCompatImageView {

    /* renamed from: do, reason: not valid java name */
    private Cfor f8951do;

    /* renamed from: for, reason: not valid java name */
    private int f8952for;

    /* renamed from: if, reason: not valid java name */
    private ImageView.ScaleType f8953if;

    public PhotoView(Context context) {
        this(context, null);
    }

    /* renamed from: for, reason: not valid java name */
    private void m10719for() {
        this.f8951do = new Cfor(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f8953if;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f8953if = null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m10720try(@NonNull MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        int action = motionEvent.getAction();
        if (action != 0 && action != 5 && action != 261) {
            return false;
        }
        this.f8952for = Math.max(this.f8952for, pointerCount);
        return true;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m10721break(Matrix matrix) {
        return this.f8951do.j(matrix);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m10722case(Matrix matrix) {
        return this.f8951do.j(matrix);
    }

    /* renamed from: do, reason: not valid java name */
    public void m10723do(Matrix matrix) {
        this.f8951do.m10764abstract(matrix);
    }

    /* renamed from: else, reason: not valid java name */
    public void m10724else(float f, float f2, float f3, boolean z) {
        this.f8951do.r(f, f2, f3, z);
    }

    public Cfor getAttacher() {
        return this.f8951do;
    }

    public RectF getDisplayRect() {
        return this.f8951do.m10765continue();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f8951do.m10768interface();
    }

    public int getMaxTouchCount() {
        return this.f8952for;
    }

    public float getMaximumScale() {
        return this.f8951do.m10766implements();
    }

    public float getMediumScale() {
        return this.f8951do.m10767instanceof();
    }

    public float getMinimumScale() {
        return this.f8951do.m10769synchronized();
    }

    public float getScale() {
        return this.f8951do.a();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f8951do.b();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m10725goto(float f, boolean z) {
        this.f8951do.s(f, z);
    }

    /* renamed from: if, reason: not valid java name */
    public void m10726if(Matrix matrix) {
        this.f8951do.c(matrix);
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m10727new() {
        return this.f8951do.f();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return m10720try(motionEvent) || super.onTouchEvent(motionEvent);
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f8951do.h(z);
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (frame) {
            this.f8951do.y();
        }
        return frame;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        Cfor cfor = this.f8951do;
        if (cfor != null) {
            cfor.y();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        Cfor cfor = this.f8951do;
        if (cfor != null) {
            cfor.y();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        Cfor cfor = this.f8951do;
        if (cfor != null) {
            cfor.y();
        }
    }

    public void setMaximumScale(float f) {
        this.f8951do.l(f);
    }

    public void setMediumScale(float f) {
        this.f8951do.m(f);
    }

    public void setMinimumScale(float f) {
        this.f8951do.n(f);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f8951do.setOnClickListener(onClickListener);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f8951do.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f8951do.setOnLongClickListener(onLongClickListener);
    }

    public void setOnMatrixChangeListener(OnMatrixChangedListener onMatrixChangedListener) {
        this.f8951do.setOnMatrixChangeListener(onMatrixChangedListener);
    }

    public void setOnOutsidePhotoTapListener(OnOutsidePhotoTapListener onOutsidePhotoTapListener) {
        this.f8951do.setOnOutsidePhotoTapListener(onOutsidePhotoTapListener);
    }

    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.f8951do.setOnPhotoTapListener(onPhotoTapListener);
    }

    public void setOnScaleChangeListener(OnScaleChangedListener onScaleChangedListener) {
        this.f8951do.setOnScaleChangeListener(onScaleChangedListener);
    }

    public void setOnSingleFlingListener(OnSingleFlingListener onSingleFlingListener) {
        this.f8951do.setOnSingleFlingListener(onSingleFlingListener);
    }

    public void setOnViewDragListener(OnViewDragListener onViewDragListener) {
        this.f8951do.setOnViewDragListener(onViewDragListener);
    }

    public void setOnViewTapListener(OnViewTapListener onViewTapListener) {
        this.f8951do.setOnViewTapListener(onViewTapListener);
    }

    public void setRotationBy(float f) {
        this.f8951do.o(f);
    }

    public void setRotationTo(float f) {
        this.f8951do.p(f);
    }

    public void setScale(float f) {
        this.f8951do.q(f);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        Cfor cfor = this.f8951do;
        if (cfor == null) {
            this.f8953if = scaleType;
        } else {
            cfor.u(scaleType);
        }
    }

    public void setZoomTransitionDuration(int i) {
        this.f8951do.w(i);
    }

    public void setZoomable(boolean z) {
        this.f8951do.x(z);
    }

    /* renamed from: this, reason: not valid java name */
    public void m10728this(float f, float f2, float f3) {
        this.f8951do.t(f, f2, f3);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m10719for();
    }
}
