package cc.shinichi.library.view.photoview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* renamed from: cc.shinichi.library.view.photoview.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif {

    /* renamed from: catch, reason: not valid java name */
    private static final int f9008catch = -1;

    /* renamed from: break, reason: not valid java name */
    private OnGestureListener f9009break;

    /* renamed from: case, reason: not valid java name */
    private VelocityTracker f9010case;

    /* renamed from: do, reason: not valid java name */
    private final ScaleGestureDetector f9011do;

    /* renamed from: else, reason: not valid java name */
    private boolean f9012else;

    /* renamed from: for, reason: not valid java name */
    private final float f9013for;

    /* renamed from: goto, reason: not valid java name */
    private float f9014goto;

    /* renamed from: if, reason: not valid java name */
    private final float f9015if;

    /* renamed from: this, reason: not valid java name */
    private float f9017this;

    /* renamed from: new, reason: not valid java name */
    private int f9016new = -1;

    /* renamed from: try, reason: not valid java name */
    private int f9018try = 0;

    /* renamed from: cc.shinichi.library.view.photoview.if$do, reason: invalid class name */
    public class Cdo implements ScaleGestureDetector.OnScaleGestureListener {
        public Cdo() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            if (scaleFactor < 0.0f) {
                return true;
            }
            Cif.this.f9009break.onScale(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
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
        this.f9013for = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f9015if = viewConfiguration.getScaledTouchSlop();
        this.f9009break = onGestureListener;
        this.f9011do = new ScaleGestureDetector(context, new Cdo());
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m10774else(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f9016new = motionEvent.getPointerId(0);
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.f9010case = velocityTrackerObtain;
            if (velocityTrackerObtain != null) {
                velocityTrackerObtain.addMovement(motionEvent);
            }
            this.f9014goto = m10776if(motionEvent);
            this.f9017this = m10775for(motionEvent);
            this.f9012else = false;
        } else if (action == 1) {
            this.f9016new = -1;
            if (this.f9012else && this.f9010case != null) {
                this.f9014goto = m10776if(motionEvent);
                this.f9017this = m10775for(motionEvent);
                this.f9010case.addMovement(motionEvent);
                this.f9010case.computeCurrentVelocity(1000);
                float xVelocity = this.f9010case.getXVelocity();
                float yVelocity = this.f9010case.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f9013for) {
                    this.f9009break.onFling(this.f9014goto, this.f9017this, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker = this.f9010case;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f9010case = null;
            }
        } else if (action == 2) {
            float fM10776if = m10776if(motionEvent);
            float fM10775for = m10775for(motionEvent);
            float f = fM10776if - this.f9014goto;
            float f2 = fM10775for - this.f9017this;
            if (!this.f9012else) {
                this.f9012else = Math.sqrt((double) ((f * f) + (f2 * f2))) >= ((double) this.f9015if);
            }
            if (this.f9012else) {
                this.f9009break.onDrag(f, f2);
                this.f9014goto = fM10776if;
                this.f9017this = fM10775for;
                VelocityTracker velocityTracker2 = this.f9010case;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f9016new = -1;
            VelocityTracker velocityTracker3 = this.f9010case;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f9010case = null;
            }
        } else if (action == 6) {
            int iM10782if = Cnew.m10782if(motionEvent.getAction());
            if (motionEvent.getPointerId(iM10782if) == this.f9016new) {
                int i = iM10782if == 0 ? 1 : 0;
                this.f9016new = motionEvent.getPointerId(i);
                this.f9014goto = motionEvent.getX(i);
                this.f9017this = motionEvent.getY(i);
            }
        }
        int i2 = this.f9016new;
        this.f9018try = motionEvent.findPointerIndex(i2 != -1 ? i2 : 0);
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    private float m10775for(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f9018try);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    /* renamed from: if, reason: not valid java name */
    private float m10776if(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f9018try);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m10777case(MotionEvent motionEvent) {
        try {
            this.f9011do.onTouchEvent(motionEvent);
            return m10774else(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m10778new() {
        return this.f9012else;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m10779try() {
        return this.f9011do.isInProgress();
    }
}
