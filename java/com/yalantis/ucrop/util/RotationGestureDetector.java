package com.yalantis.ucrop.util;

import android.view.MotionEvent;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class RotationGestureDetector {

    /* renamed from: break, reason: not valid java name */
    private static final int f23086break = -1;

    /* renamed from: do, reason: not valid java name */
    private float f23088do;

    /* renamed from: else, reason: not valid java name */
    private float f23089else;

    /* renamed from: for, reason: not valid java name */
    private float f23090for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f23091goto;

    /* renamed from: if, reason: not valid java name */
    private float f23092if;

    /* renamed from: new, reason: not valid java name */
    private float f23093new;

    /* renamed from: this, reason: not valid java name */
    private OnRotationGestureListener f23094this;

    /* renamed from: try, reason: not valid java name */
    private int f23095try = -1;

    /* renamed from: case, reason: not valid java name */
    private int f23087case = -1;

    public interface OnRotationGestureListener {
        boolean onRotation(RotationGestureDetector rotationGestureDetector);
    }

    /* renamed from: com.yalantis.ucrop.util.RotationGestureDetector$do, reason: invalid class name */
    public static class Cdo implements OnRotationGestureListener {
        @Override // com.yalantis.ucrop.util.RotationGestureDetector.OnRotationGestureListener
        public boolean onRotation(RotationGestureDetector rotationGestureDetector) {
            return false;
        }
    }

    public RotationGestureDetector(OnRotationGestureListener onRotationGestureListener) {
        this.f23094this = onRotationGestureListener;
    }

    /* renamed from: do, reason: not valid java name */
    private float m27487do(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        return m27488if((float) Math.toDegrees((float) Math.atan2(f2 - f4, f - f3)), (float) Math.toDegrees((float) Math.atan2(f6 - f8, f5 - f7)));
    }

    /* renamed from: if, reason: not valid java name */
    private float m27488if(float f, float f2) {
        float f3 = (f2 % 360.0f) - (f % 360.0f);
        this.f23089else = f3;
        if (f3 < -180.0f) {
            this.f23089else = f3 + 360.0f;
        } else if (f3 > 180.0f) {
            this.f23089else = f3 - 360.0f;
        }
        return this.f23089else;
    }

    /* renamed from: for, reason: not valid java name */
    public float m27489for() {
        return this.f23089else;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m27490new(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f23090for = motionEvent.getX();
            this.f23093new = motionEvent.getY();
            this.f23095try = motionEvent.findPointerIndex(motionEvent.getPointerId(0));
            this.f23089else = 0.0f;
            this.f23091goto = true;
        } else if (actionMasked == 1) {
            this.f23095try = -1;
        } else if (actionMasked != 2) {
            if (actionMasked == 5) {
                this.f23088do = motionEvent.getX();
                this.f23092if = motionEvent.getY();
                this.f23087case = motionEvent.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                this.f23089else = 0.0f;
                this.f23091goto = true;
            } else if (actionMasked == 6) {
                this.f23087case = -1;
            }
        } else if (this.f23095try != -1 && this.f23087case != -1 && motionEvent.getPointerCount() > this.f23087case) {
            float x = motionEvent.getX(this.f23095try);
            float y = motionEvent.getY(this.f23095try);
            float x2 = motionEvent.getX(this.f23087case);
            float y2 = motionEvent.getY(this.f23087case);
            if (this.f23091goto) {
                this.f23089else = 0.0f;
                this.f23091goto = false;
            } else {
                m27487do(this.f23088do, this.f23092if, this.f23090for, this.f23093new, x2, y2, x, y);
            }
            OnRotationGestureListener onRotationGestureListener = this.f23094this;
            if (onRotationGestureListener != null) {
                onRotationGestureListener.onRotation(this);
            }
            this.f23088do = x2;
            this.f23092if = y2;
            this.f23090for = x;
            this.f23093new = y;
        }
        return true;
    }
}
