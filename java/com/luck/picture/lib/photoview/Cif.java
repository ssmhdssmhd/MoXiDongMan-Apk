package com.luck.picture.lib.photoview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* renamed from: com.luck.picture.lib.photoview.if, reason: invalid class name */
/* loaded from: classes2.dex */
class Cif {

    /* renamed from: catch, reason: not valid java name */
    private static final int f18837catch = -1;

    /* renamed from: break, reason: not valid java name */
    private OnGestureListener f18838break;

    /* renamed from: case, reason: not valid java name */
    private float f18839case;

    /* renamed from: else, reason: not valid java name */
    private float f18841else;

    /* renamed from: for, reason: not valid java name */
    private final ScaleGestureDetector f18842for;

    /* renamed from: goto, reason: not valid java name */
    private final float f18843goto;

    /* renamed from: new, reason: not valid java name */
    private VelocityTracker f18845new;

    /* renamed from: this, reason: not valid java name */
    private final float f18846this;

    /* renamed from: try, reason: not valid java name */
    private boolean f18847try;

    /* renamed from: do, reason: not valid java name */
    private int f18840do = -1;

    /* renamed from: if, reason: not valid java name */
    private int f18844if = 0;

    /* renamed from: com.luck.picture.lib.photoview.if$do, reason: invalid class name */
    public class Cdo implements ScaleGestureDetector.OnScaleGestureListener {
        public Cdo() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            Cif.this.f18838break.onScale(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    public Cif(Context context, OnGestureListener onGestureListener) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f18846this = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f18843goto = viewConfiguration.getScaledTouchSlop();
        this.f18838break = onGestureListener;
        this.f18842for = new ScaleGestureDetector(context, new Cdo());
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m23243else(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f18840do = motionEvent.getPointerId(0);
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.f18845new = velocityTrackerObtain;
            if (velocityTrackerObtain != null) {
                velocityTrackerObtain.addMovement(motionEvent);
            }
            this.f18839case = m23245if(motionEvent);
            this.f18841else = m23244for(motionEvent);
            this.f18847try = false;
        } else if (action == 1) {
            this.f18840do = -1;
            if (this.f18847try && this.f18845new != null) {
                this.f18839case = m23245if(motionEvent);
                this.f18841else = m23244for(motionEvent);
                this.f18845new.addMovement(motionEvent);
                this.f18845new.computeCurrentVelocity(1000);
                float xVelocity = this.f18845new.getXVelocity();
                float yVelocity = this.f18845new.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f18846this) {
                    this.f18838break.onFling(this.f18839case, this.f18841else, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker = this.f18845new;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f18845new = null;
            }
        } else if (action == 2) {
            float fM23245if = m23245if(motionEvent);
            float fM23244for = m23244for(motionEvent);
            float f = fM23245if - this.f18839case;
            float f2 = fM23244for - this.f18841else;
            if (!this.f18847try) {
                this.f18847try = Math.sqrt((double) ((f * f) + (f2 * f2))) >= ((double) this.f18843goto);
            }
            if (this.f18847try) {
                this.f18838break.onDrag(f, f2);
                this.f18839case = fM23245if;
                this.f18841else = fM23244for;
                VelocityTracker velocityTracker2 = this.f18845new;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f18840do = -1;
            VelocityTracker velocityTracker3 = this.f18845new;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f18845new = null;
            }
        } else if (action == 6) {
            int iM23251if = Cnew.m23251if(motionEvent.getAction());
            if (motionEvent.getPointerId(iM23251if) == this.f18840do) {
                int i = iM23251if == 0 ? 1 : 0;
                this.f18840do = motionEvent.getPointerId(i);
                this.f18839case = motionEvent.getX(i);
                this.f18841else = motionEvent.getY(i);
            }
        }
        int i2 = this.f18840do;
        this.f18844if = motionEvent.findPointerIndex(i2 != -1 ? i2 : 0);
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    private float m23244for(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f18844if);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    /* renamed from: if, reason: not valid java name */
    private float m23245if(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f18844if);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m23246case(MotionEvent motionEvent) {
        try {
            this.f18842for.onTouchEvent(motionEvent);
            return m23243else(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m23247new() {
        return this.f18847try;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m23248try() {
        return this.f18842for.isInProgress();
    }
}
