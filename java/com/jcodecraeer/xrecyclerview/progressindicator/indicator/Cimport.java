package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.import, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cimport {

    /* renamed from: do, reason: not valid java name */
    private View f18372do;

    /* renamed from: if, reason: not valid java name */
    private List<Animator> f18373if;

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.import$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f18374do;

        static {
            int[] iArr = new int[Cif.values().length];
            f18374do = iArr;
            try {
                iArr[Cif.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18374do[Cif.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18374do[Cif.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.import$if, reason: invalid class name */
    public enum Cif {
        START,
        END,
        CANCEL
    }

    /* renamed from: this, reason: not valid java name */
    private void m22843this() {
        List<Animator> list = this.f18373if;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animator animator = this.f18373if.get(i);
            animator.cancel();
            animator.removeAllListeners();
        }
        this.f18373if.clear();
        this.f18373if = null;
    }

    /* renamed from: break, reason: not valid java name */
    public void m22844break(Cif cif) {
        List<Animator> list = this.f18373if;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animator animator = this.f18373if.get(i);
            boolean zIsRunning = animator.isRunning();
            int i2 = Cdo.f18374do[cif.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3 && zIsRunning) {
                        animator.cancel();
                    }
                } else if (zIsRunning) {
                    animator.end();
                }
            } else if (!zIsRunning) {
                animator.start();
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public int m22845case() {
        View view = this.f18372do;
        if (view == null) {
            return 0;
        }
        return view.getWidth();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m22846catch(View view) {
        this.f18372do = view;
    }

    /* renamed from: do */
    public abstract List<Animator> mo457do();

    /* renamed from: else, reason: not valid java name */
    public void m22847else() {
        this.f18373if = mo457do();
    }

    /* renamed from: for */
    public abstract void mo458for(Canvas canvas, Paint paint);

    /* renamed from: goto, reason: not valid java name */
    public void m22848goto() {
        View view = this.f18372do;
        if (view != null) {
            view.postInvalidate();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m22849if() {
        this.f18372do = null;
        m22843this();
        this.f18373if = null;
    }

    /* renamed from: new, reason: not valid java name */
    public int m22850new() {
        View view = this.f18372do;
        if (view == null) {
            return 0;
        }
        return view.getHeight();
    }

    /* renamed from: try, reason: not valid java name */
    public View m22851try() {
        return this.f18372do;
    }
}
