package org.adw.library.widgets.discreteseekbar.internal;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.IBinder;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.google.android.material.badge.BadgeDrawable;
import org.adw.library.widgets.discreteseekbar.internal.compat.Cif;
import org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable;

/* renamed from: org.adw.library.widgets.discreteseekbar.internal.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final WindowManager f28376do;

    /* renamed from: for, reason: not valid java name */
    private C0382do f28377for;

    /* renamed from: if, reason: not valid java name */
    private boolean f28378if;

    /* renamed from: new, reason: not valid java name */
    private MarkerDrawable.MarkerAnimationListener f28379new;

    /* renamed from: try, reason: not valid java name */
    private int[] f28380try = new int[2];

    /* renamed from: case, reason: not valid java name */
    public Point f28375case = new Point();

    /* renamed from: org.adw.library.widgets.discreteseekbar.internal.do$do, reason: invalid class name and collision with other inner class name */
    public class C0382do extends FrameLayout implements MarkerDrawable.MarkerAnimationListener {

        /* renamed from: do, reason: not valid java name */
        private Marker f28381do;

        /* renamed from: if, reason: not valid java name */
        private int f28383if;

        public C0382do(Context context, AttributeSet attributeSet, int i, String str, int i2, int i3) {
            super(context);
            Marker marker = new Marker(context, attributeSet, i, str, i2, i3);
            this.f28381do = marker;
            addView(marker, new FrameLayout.LayoutParams(-2, -2, 51));
        }

        /* renamed from: for, reason: not valid java name */
        public void m31799for(int i) {
            this.f28383if = i;
            int measuredWidth = i - (this.f28381do.getMeasuredWidth() / 2);
            Marker marker = this.f28381do;
            marker.offsetLeftAndRight(measuredWidth - marker.getLeft());
            if (Cif.m31779if(this)) {
                return;
            }
            invalidate();
        }

        /* renamed from: if, reason: not valid java name */
        public void m31800if(int i, int i2) {
            this.f28381do.m31762new(i, i2);
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable.MarkerAnimationListener
        public void onClosingComplete() {
            if (Cdo.this.f28379new != null) {
                Cdo.this.f28379new.onClosingComplete();
            }
            Cdo.this.m31797try();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int measuredWidth = this.f28383if - (this.f28381do.getMeasuredWidth() / 2);
            Marker marker = this.f28381do;
            marker.layout(measuredWidth, 0, marker.getMeasuredWidth() + measuredWidth, this.f28381do.getMeasuredHeight());
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            measureChildren(i, i2);
            setMeasuredDimension(View.MeasureSpec.getSize(i), this.f28381do.getMeasuredHeight());
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable.MarkerAnimationListener
        public void onOpeningComplete() {
            if (Cdo.this.f28379new != null) {
                Cdo.this.f28379new.onOpeningComplete();
            }
        }
    }

    public Cdo(Context context, AttributeSet attributeSet, int i, String str, int i2, int i3) {
        this.f28376do = (WindowManager) context.getSystemService("window");
        this.f28377for = new C0382do(context, attributeSet, i, str, i2, i3);
    }

    /* renamed from: case, reason: not valid java name */
    private void m31782case(WindowManager.LayoutParams layoutParams) {
        this.f28376do.addView(this.f28377for, layoutParams);
        this.f28377for.f28381do.m31761if();
    }

    /* renamed from: final, reason: not valid java name */
    private void m31784final(int i) {
        this.f28377for.m31799for(i + this.f28380try[0]);
    }

    /* renamed from: for, reason: not valid java name */
    private WindowManager.LayoutParams m31785for(IBinder iBinder) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = BadgeDrawable.f11272import;
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.flags = m31787if(layoutParams.flags);
        layoutParams.type = 1000;
        layoutParams.token = iBinder;
        layoutParams.softInputMode = 3;
        layoutParams.setTitle("DiscreteSeekBar Indicator:" + Integer.toHexString(hashCode()));
        return layoutParams;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m31786goto() {
        this.f28377for.measure(View.MeasureSpec.makeMeasureSpec(this.f28375case.x, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f28375case.y, Integer.MIN_VALUE));
    }

    /* renamed from: if, reason: not valid java name */
    private int m31787if(int i) {
        return (i & (-426521)) | 32768 | 8 | 16 | 512;
    }

    /* renamed from: super, reason: not valid java name */
    private void m31788super(View view, WindowManager.LayoutParams layoutParams, int i) {
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        this.f28375case.set(displayMetrics.widthPixels, displayMetrics.heightPixels);
        m31786goto();
        int measuredHeight = this.f28377for.getMeasuredHeight();
        int paddingBottom = this.f28377for.f28381do.getPaddingBottom();
        view.getLocationInWindow(this.f28380try);
        layoutParams.x = 0;
        layoutParams.y = (this.f28380try[1] - measuredHeight) + i + paddingBottom;
        layoutParams.width = this.f28375case.x;
        layoutParams.height = measuredHeight;
    }

    /* renamed from: break, reason: not valid java name */
    public void m31789break(int i, int i2) {
        this.f28377for.m31800if(i, i2);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m31790catch(MarkerDrawable.MarkerAnimationListener markerAnimationListener) {
        this.f28379new = markerAnimationListener;
    }

    /* renamed from: class, reason: not valid java name */
    public void m31791class(CharSequence charSequence) {
        this.f28377for.f28381do.setValue(charSequence);
    }

    /* renamed from: const, reason: not valid java name */
    public void m31792const(View view, Rect rect) {
        if (m31793else()) {
            this.f28377for.f28381do.m31761if();
            return;
        }
        IBinder windowToken = view.getWindowToken();
        if (windowToken != null) {
            WindowManager.LayoutParams layoutParamsM31785for = m31785for(windowToken);
            layoutParamsM31785for.gravity = BadgeDrawable.f11272import;
            m31788super(view, layoutParamsM31785for, rect.bottom);
            this.f28378if = true;
            m31784final(rect.centerX());
            m31782case(layoutParamsM31785for);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m31793else() {
        return this.f28378if;
    }

    /* renamed from: new, reason: not valid java name */
    public void m31794new() {
        this.f28377for.f28381do.m31759do();
    }

    /* renamed from: this, reason: not valid java name */
    public void m31795this(int i) {
        if (m31793else()) {
            m31784final(i);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m31796throw(String str) {
        m31797try();
        C0382do c0382do = this.f28377for;
        if (c0382do != null) {
            c0382do.f28381do.m31760for(str);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m31797try() {
        if (m31793else()) {
            this.f28378if = false;
            this.f28376do.removeViewImmediate(this.f28377for);
        }
    }
}
