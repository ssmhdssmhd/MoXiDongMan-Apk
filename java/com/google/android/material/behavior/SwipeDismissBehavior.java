package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: catch, reason: not valid java name */
    public static final int f11328catch = 0;

    /* renamed from: class, reason: not valid java name */
    public static final int f11329class = 1;

    /* renamed from: const, reason: not valid java name */
    public static final int f11330const = 2;

    /* renamed from: final, reason: not valid java name */
    public static final int f11331final = 0;

    /* renamed from: import, reason: not valid java name */
    private static final float f11332import = 0.0f;

    /* renamed from: native, reason: not valid java name */
    private static final float f11333native = 0.5f;

    /* renamed from: super, reason: not valid java name */
    public static final int f11334super = 1;

    /* renamed from: throw, reason: not valid java name */
    public static final int f11335throw = 2;

    /* renamed from: while, reason: not valid java name */
    private static final float f11336while = 0.5f;

    /* renamed from: do, reason: not valid java name */
    public ViewDragHelper f11339do;

    /* renamed from: for, reason: not valid java name */
    private boolean f11341for;

    /* renamed from: if, reason: not valid java name */
    public OnDismissListener f11343if;

    /* renamed from: try, reason: not valid java name */
    private boolean f11346try;

    /* renamed from: new, reason: not valid java name */
    private float f11344new = 0.0f;

    /* renamed from: case, reason: not valid java name */
    public int f11338case = 2;

    /* renamed from: else, reason: not valid java name */
    public float f11340else = 0.5f;

    /* renamed from: goto, reason: not valid java name */
    public float f11342goto = 0.0f;

    /* renamed from: this, reason: not valid java name */
    public float f11345this = 0.5f;

    /* renamed from: break, reason: not valid java name */
    private final ViewDragHelper.Callback f11337break = new Cdo();

    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$do, reason: invalid class name */
    public class Cdo extends ViewDragHelper.Callback {

        /* renamed from: new, reason: not valid java name */
        private static final int f11347new = -1;

        /* renamed from: do, reason: not valid java name */
        private int f11348do;

        /* renamed from: if, reason: not valid java name */
        private int f11350if = -1;

        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m12795do(@NonNull View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.f11348do) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f11340else);
            }
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i = SwipeDismissBehavior.this.f11338case;
            if (i == 2) {
                return true;
            }
            if (i == 0) {
                if (z) {
                    if (f >= 0.0f) {
                        return false;
                    }
                } else if (f <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i != 1) {
                return false;
            }
            if (z) {
                if (f <= 0.0f) {
                    return false;
                }
            } else if (f >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            int width;
            int width2;
            int width3;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i3 = SwipeDismissBehavior.this.f11338case;
            if (i3 == 0) {
                if (z) {
                    width = this.f11348do - view.getWidth();
                    width2 = this.f11348do;
                } else {
                    width = this.f11348do;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i3 != 1) {
                width = this.f11348do - view.getWidth();
                width2 = view.getWidth() + this.f11348do;
            } else if (z) {
                width = this.f11348do;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f11348do - view.getWidth();
                width2 = this.f11348do;
            }
            return SwipeDismissBehavior.m12783for(width, i, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(@NonNull View view, int i) {
            this.f11350if = i;
            this.f11348do = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.f11343if;
            if (onDismissListener != null) {
                onDismissListener.onDragStateChanged(i);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            float width = this.f11348do + (view.getWidth() * SwipeDismissBehavior.this.f11342goto);
            float width2 = this.f11348do + (view.getWidth() * SwipeDismissBehavior.this.f11345this);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m12784if(0.0f, 1.0f - SwipeDismissBehavior.m12786try(width, width2, f), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f, float f2) {
            int i;
            boolean z;
            OnDismissListener onDismissListener;
            this.f11350if = -1;
            int width = view.getWidth();
            if (m12795do(view, f)) {
                int left = view.getLeft();
                int i2 = this.f11348do;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.f11348do;
                z = false;
            }
            if (SwipeDismissBehavior.this.f11339do.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new Cfor(view, z));
            } else {
                if (!z || (onDismissListener = SwipeDismissBehavior.this.f11343if) == null) {
                    return;
                }
                onDismissListener.onDismiss(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            int i2 = this.f11350if;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.mo12791do(view);
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final View f11351do;

        /* renamed from: if, reason: not valid java name */
        private final boolean f11353if;

        public Cfor(View view, boolean z) {
            this.f11351do = view;
            this.f11353if = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f11339do;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.f11351do, this);
            } else {
                if (!this.f11353if || (onDismissListener = SwipeDismissBehavior.this.f11343if) == null) {
                    return;
                }
                onDismissListener.onDismiss(this.f11351do);
            }
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$if, reason: invalid class name */
    public class Cif implements AccessibilityViewCommand {
        public Cif() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            boolean z = false;
            if (!SwipeDismissBehavior.this.mo12791do(view)) {
                return false;
            }
            boolean z2 = ViewCompat.getLayoutDirection(view) == 1;
            int i = SwipeDismissBehavior.this.f11338case;
            if ((i == 0 && z2) || (i == 1 && !z2)) {
                z = true;
            }
            int width = view.getWidth();
            if (z) {
                width = -width;
            }
            ViewCompat.offsetLeftAndRight(view, width);
            view.setAlpha(0.0f);
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.f11343if;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(view);
            }
            return true;
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m12782const(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (mo12791do(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new Cif());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m12783for(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: if, reason: not valid java name */
    public static float m12784if(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* renamed from: new, reason: not valid java name */
    private void m12785new(ViewGroup viewGroup) {
        if (this.f11339do == null) {
            this.f11339do = this.f11346try ? ViewDragHelper.create(viewGroup, this.f11344new, this.f11337break) : ViewDragHelper.create(viewGroup, this.f11337break);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static float m12786try(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    /* renamed from: break, reason: not valid java name */
    public void m12787break(float f) {
        this.f11344new = f;
        this.f11346try = true;
    }

    /* renamed from: case, reason: not valid java name */
    public int m12788case() {
        ViewDragHelper viewDragHelper = this.f11339do;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m12789catch(float f) {
        this.f11342goto = m12784if(0.0f, f, 1.0f);
    }

    /* renamed from: class, reason: not valid java name */
    public void m12790class(int i) {
        this.f11338case = i;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean mo12791do(@NonNull View view) {
        return true;
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: else, reason: not valid java name */
    public OnDismissListener m12792else() {
        return this.f11343if;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m12793goto(float f) {
        this.f11340else = m12784if(0.0f, f, 1.0f);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.f11341for;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f11341for = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f11341for = false;
        }
        if (!zIsPointInChildBounds) {
            return false;
        }
        m12785new(coordinatorLayout);
        return this.f11339do.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, v, i);
        if (ViewCompat.getImportantForAccessibility(v) == 0) {
            ViewCompat.setImportantForAccessibility(v, 1);
            m12782const(v);
        }
        return zOnLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.f11339do;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }

    public void setListener(@Nullable OnDismissListener onDismissListener) {
        this.f11343if = onDismissListener;
    }

    /* renamed from: this, reason: not valid java name */
    public void m12794this(float f) {
        this.f11345this = m12784if(0.0f, f, 1.0f);
    }
}
