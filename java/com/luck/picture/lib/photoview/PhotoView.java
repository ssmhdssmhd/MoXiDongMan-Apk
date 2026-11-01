package com.luck.picture.lib.photoview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;

/* loaded from: classes2.dex */
public class PhotoView extends ImageView {

    /* renamed from: do, reason: not valid java name */
    private Cfor f18781do;

    /* renamed from: if, reason: not valid java name */
    private ImageView.ScaleType f18782if;

    public PhotoView(Context context) {
        this(context, null);
    }

    /* renamed from: for, reason: not valid java name */
    private void m23188for() {
        this.f18781do = new Cfor(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f18782if;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f18782if = null;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m23189break(Matrix matrix) {
        return this.f18781do.j(matrix);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m23190case(Matrix matrix) {
        return this.f18781do.j(matrix);
    }

    /* renamed from: do, reason: not valid java name */
    public void m23191do(Matrix matrix) {
        this.f18781do.m23233abstract(matrix);
    }

    /* renamed from: else, reason: not valid java name */
    public void m23192else(float f, float f2, float f3, boolean z) {
        this.f18781do.r(f, f2, f3, z);
    }

    public Cfor getAttacher() {
        return this.f18781do;
    }

    public RectF getDisplayRect() {
        return this.f18781do.m23234continue();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f18781do.m23237interface();
    }

    public float getMaximumScale() {
        return this.f18781do.m23235implements();
    }

    public float getMediumScale() {
        return this.f18781do.m23236instanceof();
    }

    public float getMinimumScale() {
        return this.f18781do.m23238synchronized();
    }

    public float getScale() {
        return this.f18781do.a();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f18781do.b();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m23193goto(float f, boolean z) {
        this.f18781do.s(f, z);
    }

    /* renamed from: if, reason: not valid java name */
    public void m23194if(Matrix matrix) {
        this.f18781do.c(matrix);
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public boolean m23195new() {
        return this.f18781do.e();
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f18781do.h(z);
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (frame) {
            this.f18781do.y();
        }
        return frame;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        Cfor cfor = this.f18781do;
        if (cfor != null) {
            cfor.y();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        Cfor cfor = this.f18781do;
        if (cfor != null) {
            cfor.y();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        Cfor cfor = this.f18781do;
        if (cfor != null) {
            cfor.y();
        }
    }

    public void setMaximumScale(float f) {
        this.f18781do.l(f);
    }

    public void setMediumScale(float f) {
        this.f18781do.m(f);
    }

    public void setMinimumScale(float f) {
        this.f18781do.n(f);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f18781do.setOnClickListener(onClickListener);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f18781do.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f18781do.setOnLongClickListener(onLongClickListener);
    }

    public void setOnMatrixChangeListener(OnMatrixChangedListener onMatrixChangedListener) {
        this.f18781do.setOnMatrixChangeListener(onMatrixChangedListener);
    }

    public void setOnOutsidePhotoTapListener(OnOutsidePhotoTapListener onOutsidePhotoTapListener) {
        this.f18781do.setOnOutsidePhotoTapListener(onOutsidePhotoTapListener);
    }

    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.f18781do.setOnPhotoTapListener(onPhotoTapListener);
    }

    public void setOnScaleChangeListener(OnScaleChangedListener onScaleChangedListener) {
        this.f18781do.setOnScaleChangeListener(onScaleChangedListener);
    }

    public void setOnSingleFlingListener(OnSingleFlingListener onSingleFlingListener) {
        this.f18781do.setOnSingleFlingListener(onSingleFlingListener);
    }

    public void setOnViewDragListener(OnViewDragListener onViewDragListener) {
        this.f18781do.setOnViewDragListener(onViewDragListener);
    }

    public void setOnViewTapListener(OnViewTapListener onViewTapListener) {
        this.f18781do.setOnViewTapListener(onViewTapListener);
    }

    public void setRotationBy(float f) {
        this.f18781do.o(f);
    }

    public void setRotationTo(float f) {
        this.f18781do.p(f);
    }

    public void setScale(float f) {
        this.f18781do.q(f);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        Cfor cfor = this.f18781do;
        if (cfor == null) {
            this.f18782if = scaleType;
        } else {
            cfor.u(scaleType);
        }
    }

    public void setZoomTransitionDuration(int i) {
        this.f18781do.w(i);
    }

    public void setZoomable(boolean z) {
        this.f18781do.x(z);
    }

    /* renamed from: this, reason: not valid java name */
    public void m23196this(float f, float f2, float f3) {
        this.f18781do.t(f, f2, f3);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m23197try() {
        return this.f18781do.f();
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m23188for();
    }

    @TargetApi(21)
    public PhotoView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m23188for();
    }
}
