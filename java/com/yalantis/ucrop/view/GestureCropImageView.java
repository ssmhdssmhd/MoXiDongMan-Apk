package com.yalantis.ucrop.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.yalantis.ucrop.util.RotationGestureDetector;

/* loaded from: classes2.dex */
public class GestureCropImageView extends CropImageView {
    private static final int f = 200;
    private float a;
    private float b;
    private boolean c;
    private boolean d;
    private int e;

    /* renamed from: implements, reason: not valid java name */
    private ScaleGestureDetector f23131implements;

    /* renamed from: instanceof, reason: not valid java name */
    private RotationGestureDetector f23132instanceof;

    /* renamed from: synchronized, reason: not valid java name */
    private GestureDetector f23133synchronized;

    /* renamed from: com.yalantis.ucrop.view.GestureCropImageView$for, reason: invalid class name */
    public class Cfor extends RotationGestureDetector.Cdo {
        private Cfor() {
        }

        @Override // com.yalantis.ucrop.util.RotationGestureDetector.Cdo, com.yalantis.ucrop.util.RotationGestureDetector.OnRotationGestureListener
        public boolean onRotation(RotationGestureDetector rotationGestureDetector) {
            GestureCropImageView.this.m27550this(rotationGestureDetector.m27489for(), GestureCropImageView.this.a, GestureCropImageView.this.b);
            return true;
        }
    }

    /* renamed from: com.yalantis.ucrop.view.GestureCropImageView$if, reason: invalid class name */
    public class Cif extends GestureDetector.SimpleOnGestureListener {
        private Cif() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            GestureCropImageView gestureCropImageView = GestureCropImageView.this;
            gestureCropImageView.m27513finally(gestureCropImageView.getDoubleTapTargetScale(), motionEvent.getX(), motionEvent.getY(), 200L);
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            GestureCropImageView.this.m27546catch(-f, -f2);
            return true;
        }
    }

    /* renamed from: com.yalantis.ucrop.view.GestureCropImageView$new, reason: invalid class name */
    public class Cnew extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private Cnew() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            GestureCropImageView.this.mo27510break(scaleGestureDetector.getScaleFactor(), GestureCropImageView.this.a, GestureCropImageView.this.b);
            return true;
        }
    }

    public GestureCropImageView(Context context) {
        super(context);
        this.c = true;
        this.d = true;
        this.e = 5;
    }

    /* renamed from: transient, reason: not valid java name */
    private void m27524transient() {
        this.f23133synchronized = new GestureDetector(getContext(), new Cif(), null, true);
        this.f23131implements = new ScaleGestureDetector(getContext(), new Cnew());
        this.f23132instanceof = new RotationGestureDetector(new Cfor());
    }

    @Override // com.yalantis.ucrop.view.TransformImageView
    /* renamed from: else, reason: not valid java name */
    public void mo27526else() {
        super.mo27526else();
        m27524transient();
    }

    public int getDoubleTapScaleSteps() {
        return this.e;
    }

    public float getDoubleTapTargetScale() {
        return getCurrentScale() * ((float) Math.pow(getMaxScale() / getMinScale(), 1.0f / this.e));
    }

    /* renamed from: interface, reason: not valid java name */
    public boolean m27527interface() {
        return this.c;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 0) {
            m27515native();
        }
        if (motionEvent.getPointerCount() > 1) {
            this.a = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
            this.b = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
        }
        this.f23133synchronized.onTouchEvent(motionEvent);
        if (this.d) {
            this.f23131implements.onTouchEvent(motionEvent);
        }
        if (this.c) {
            this.f23132instanceof.m27490new(motionEvent);
        }
        if ((motionEvent.getAction() & 255) == 1) {
            m27512default();
        }
        return true;
    }

    /* renamed from: protected, reason: not valid java name */
    public boolean m27528protected() {
        return this.d;
    }

    public void setDoubleTapScaleSteps(int i) {
        this.e = i;
    }

    public void setRotateEnabled(boolean z) {
        this.c = z;
    }

    public void setScaleEnabled(boolean z) {
        this.d = z;
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = true;
        this.d = true;
        this.e = 5;
    }
}
