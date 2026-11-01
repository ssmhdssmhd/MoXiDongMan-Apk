package com.scwang.smartrefresh.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.scwang.smartrefresh.header.internal.pathview.Cif;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

/* loaded from: classes2.dex */
public class DeliveryHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: break, reason: not valid java name */
    public float f20068break;

    /* renamed from: case, reason: not valid java name */
    public int f20069case;

    /* renamed from: catch, reason: not valid java name */
    public qm1 f20070catch;

    /* renamed from: class, reason: not valid java name */
    public Drawable f20071class;

    /* renamed from: const, reason: not valid java name */
    public Drawable f20072const;

    /* renamed from: else, reason: not valid java name */
    public int f20073else;

    /* renamed from: final, reason: not valid java name */
    public Drawable f20074final;

    /* renamed from: goto, reason: not valid java name */
    public int f20075goto;

    /* renamed from: new, reason: not valid java name */
    public int f20076new;

    /* renamed from: super, reason: not valid java name */
    public RefreshKernel f20077super;

    /* renamed from: this, reason: not valid java name */
    public int f20078this;

    /* renamed from: try, reason: not valid java name */
    public int f20079try;

    /* renamed from: throw, reason: not valid java name */
    public static String[] f20066throw = {"M113.91,328.86 L119.02,331.02 134.86,359.02 133.99,359.02ZM2.18,144.52c-3.67,-76.84 49.96,-122.23 96.3,-134.98 6.03,0.21 7.57,0.59 13.23,3.9 0.19,1.7 0.25,2.17 -0.41,3.98 -47.88,37.64 -55.13,79.65 -68.07,137.22C37.56,194.8 16.18,191.4 2.18,144.52Z", "m133.99,359.02 l-0.71,-26.66 2.6,0.26 -1.02,26.4zM119.02,331.02c-3.39,-0.99 -8.53,-3.03 -8.72,-6.61 0,-0.81 -2.02,-3.63 -4.49,-6.27C88.05,299.71 7.29,218.46 2.18,144.52c17.67,43.57 33.35,45.33 41.05,10.12 0.13,-70.78 33.78,-125.48 68.07,-137.22 2.34,3.33 4.11,4.81 8.14,7.8 -22.02,65.69 -23.25,84.11 -24.14,150.23 -8.68,29.57 -37.44,32.81 -52.07,-20.81 14.12,64.06 31.66,101.57 60.64,147.13 6.2,8.38 14.74,18.4 15.15,29.25zM98.48,9.54c4.59,-1.5 17.8,-4.6 33.87,-5.07 0.95,0.95 1.38,1.91 1.14,2.91 -8.81,1.34 -16.36,3.1 -21.78,6.06 -2.53,-1.27 -7.82,-3.26 -13.23,-3.9z", "m119.02,331.02c-1.29,-7.57 -4.22,-12.31 -6.54,-15.79 -36.86,-54.89 -63.48,-98.79 -69.25,-160.59 19.89,45.9 41.27,48.65 52.07,20.81 -1.95,-52.55 -8.04,-91.2 24.14,-150.23 10.47,-0.28 16.85,0.17 30.66,-0.34 40.19,60.54 24.92,135.95 22.16,149.57 -13.9,53.18 -66.91,34.12 -76.96,1 11.54,50.55 20.28,89.27 30,135.97 4.12,10.03 5.37,10.37 5.06,21.35 -2.82,-0.22 -8.22,-1.01 -11.35,-1.75z", "m172.27,174.45c4.91,-51.6 -1.8,-105.99 -22.16,-149.57 2.51,-3.42 3.25,-4.36 6.59,-6.04 47.91,22.5 77.5,62.66 68.9,139.94 -16.53,49.7 -45.39,52.78 -53.33,15.68zM154.36,13.39c-6.65,-2.73 -11.65,-4.27 -20.87,-6.01 -0.25,-1.02 -0.71,-2.21 -1.14,-2.91 16.31,-0.22 27.58,2.29 37.27,4.82 -5.49,0.42 -11.39,1.87 -15.26,4.11z", "m133.99,359.02 l14.98,-28.13 2.24,-0.75 -16.34,28.88zM141.15,332.65c0.01,-11.71 2.3,-14.29 4.13,-21.52 11.82,-46.68 16.09,-77.45 26.98,-136.68 12.18,38.55 37.7,23.31 53.33,-15.68 -4.01,53.72 -43.68,121.28 -68.8,155.25 -6.17,9.5 -8.27,16.22 -5.59,16.12 -3.69,1.47 -6.24,2.05 -10.05,2.51z", "m225.59,158.77c1.61,-52.44 -22.26,-117.1 -68.9,-139.94 -1.48,-2.24 -1.63,-2.16 -2.34,-5.44 3.7,-3.42 9.42,-4.82 15.26,-4.11 48.59,9.81 103.07,66.75 96.62,132.26 -9.7,45.68 -35.45,51.78 -40.64,17.24z", "m156.48,313.99c32.9,-59.38 53.82,-87.19 69.12,-155.22 12.23,38.4 28.73,22.32 40.64,-17.24 -2.11,50.59 -43.12,112.84 -99.62,171.38 -4.57,4.73 -8.31,9.42 -8.31,10.4 -0,2.28 -3.52,5.43 -7.1,6.82 -4.65,0.73 2.08,-12.86 5.27,-16.15z", "M130.37,332.77C129.51,321.51 128.56,320.77 125.3,311.42 113.97,281.37 101.34,222.24 95.3,175.45c16.48,38.98 60.02,33.39 76.96,-1 -5.91,58.92 -10.85,88.45 -27.42,138.74 -1.67,6.75 -2.67,11.63 -3.7,19.46 -2.94,0.45 -6.48,0.45 -10.78,0.12zM119.44,25.22c-3.52,-1.25 -6.98,-3.72 -8.14,-7.8 -0.44,-1.53 -0.24,-2.79 0.41,-3.98 2.48,-4.55 14.53,-6.26 21.78,-6.06 5.29,0.15 14.87,0.72 20.87,6.01 1.82,1.61 2.74,3.95 2.34,5.44 -0.76,2.83 -4.21,5.19 -6.59,6.04 -7.49,2.68 -22.62,3.2 -30.66,0.34z"};

    /* renamed from: while, reason: not valid java name */
    public static int[] f20067while = {-7151637, -9580311, -11549721, -13650202, -14308898, -15619100, -15819816, -12535839};

    /* renamed from: import, reason: not valid java name */
    public static String[] f20062import = {"M63,0.1A22.6,22.4 0,0 0,42.1 14.2,17.3 17.3,0 0,0 30.9,10.2 17.3,17.3 0,0 0,13.7 25.8,8.8 8.8,0 0,0 8.7,24.2 8.8,8.8 0,0 0,0 32h99a7.9,7.9 0,0 0,0 -0.6,7.9 7.9,0 0,0 -7.9,-7.9 7.9,7.9 0,0 0,-5.8 2.6,22.6 22.4,0 0,0 0.3,-3.6A22.6,22.4 0,0 0,63 0.1Z"};

    /* renamed from: native, reason: not valid java name */
    public static int[] f20063native = {-1};

    /* renamed from: public, reason: not valid java name */
    public static String[] f20064public = {"M0,17.5 L3.1,29.8 2.9,76.4 47.5,93 92.8,76.2V29.9L94.9,18.1 47.4,0.5Z", "M3.1,29.8 L47.8,46.4 47.5,93 2.9,76.4ZM0,17.5 L47.9,35.4 47.8,46.4 0.2,28.8Z", "m56.5,17.8c0,2.1 -3.8,3.8 -8.5,3.8 -4.7,0 -8.5,-1.7 -8.5,-3.8 0,-2.1 3.8,-3.8 8.5,-3.8 4.7,0 8.5,1.7 8.5,3.8zM3.1,29.8 L3.1,34.7l44.7,16.9 0,-5.1z", "M47.9,35.4 L47.5,93 92.8,76.2V29.9l2.2,-0.8 0,-10.9z", "M82.6,80 L92.8,62.4 92.8,76.2ZM47.6,79.8 L59.8,88.4 47.5,93ZM47.8,46.4 L92.8,29.9 92.8,34.2 47.8,51.6Z"};

    /* renamed from: return, reason: not valid java name */
    public static int[] f20065return = {-478905, -878788, -1212368, -81839, -545463};

    public DeliveryHeader(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m24278do(int i) {
        this.f20076new += i02.m3194new(9.0f);
        this.f20079try += i02.m3194new(5.0f);
        this.f20069case += i02.m3194new(12.0f);
        int iWidth = this.f20071class.getBounds().width();
        int i2 = i + iWidth;
        if (this.f20076new > i2) {
            this.f20076new = -iWidth;
        }
        if (this.f20079try > i2) {
            this.f20079try = -iWidth;
        }
        if (this.f20069case > i2) {
            this.f20069case = -iWidth;
        }
        this.f20068break += 0.1f;
        invalidate();
    }

    /* renamed from: for, reason: not valid java name */
    private void m24279for(Canvas canvas, int i) {
        qm1 qm1Var = this.f20070catch;
        if (qm1Var == qm1.Refreshing || qm1Var == qm1.RefreshFinish) {
            this.f20071class.getBounds().offsetTo(this.f20076new, this.f20075goto / 3);
            this.f20071class.draw(canvas);
            this.f20071class.getBounds().offsetTo(this.f20079try, this.f20075goto / 2);
            this.f20071class.draw(canvas);
            this.f20071class.getBounds().offsetTo(this.f20069case, (this.f20075goto * 2) / 3);
            this.f20071class.draw(canvas);
            canvas.rotate(((float) Math.sin(this.f20068break / 2.0f)) * 5.0f, i / 2.0f, (this.f20075goto / 2.0f) - this.f20072const.getBounds().height());
            m24278do(i);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m24280if(Canvas canvas, int i, int i2, int i3) {
        int i4 = this.f20075goto;
        this.f20074final.getBounds().offsetTo((i / 2) - (this.f20074final.getBounds().width() / 2), ((((i2 - (i4 / 2)) + i3) + ((i4 / 2) - this.f20074final.getBounds().height())) - Math.min((this.f20075goto / 2) - this.f20074final.getBounds().height(), i02.m3194new(this.f20068break * 100.0f))) - (this.f20074final.getBounds().height() / 4));
        this.f20074final.draw(canvas);
    }

    /* renamed from: new, reason: not valid java name */
    private void m24281new(Canvas canvas, int i, int i2, int i3) {
        qm1 qm1Var = this.f20070catch;
        if (qm1Var == qm1.Refreshing || qm1Var == qm1.RefreshFinish) {
            Rect bounds = this.f20072const.getBounds();
            int i4 = this.f20075goto;
            this.f20072const.getBounds().offsetTo((i / 2) - (bounds.width() / 2), ((((i2 - (i4 / 2)) + i3) - i4) + Math.min(i4, i02.m3194new(this.f20068break * 100.0f))) - bounds.height());
            this.f20072const.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int i = this.f20073else;
        int saveCount = canvas.getSaveCount();
        RefreshKernel refreshKernel = this.f20077super;
        boolean z = refreshKernel != null && equals(refreshKernel.getRefreshLayout().getRefreshFooter());
        canvas.save();
        if (z) {
            canvas.translate(0.0f, getHeight() - this.f20073else);
        }
        double d = this.f20075goto / 13;
        double dSin = Math.sin(this.f20068break);
        Double.isNaN(d);
        int i2 = (int) (d * dSin);
        m24279for(canvas, width);
        m24280if(canvas, width, i, i2);
        m24281new(canvas, width, i, i2);
        canvas.restoreToCount(saveCount);
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20077super = refreshKernel;
        this.f20075goto = i;
        int i3 = this.f20078this;
        if (i3 != 0) {
            refreshKernel.requestDrawBackgroundFor(this, i3);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        this.f20073else = i;
        if (this.f20070catch != qm1.Refreshing) {
            this.f20074final.setAlpha((int) ((1.0f - Math.max(0.0f, f - 1.0f)) * 255.0f));
        }
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        onStartAnimator(refreshLayout, i, i2);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20070catch = qm1.Refreshing;
        this.f20074final.setAlpha(255);
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        this.f20070catch = qm1Var2;
        if (qm1Var2 == qm1.None) {
            this.f20068break = 0.0f;
            int i = -this.f20071class.getBounds().width();
            this.f20069case = i;
            this.f20079try = i;
            this.f20076new = i;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            int i = iArr[0];
            this.f20078this = i;
            RefreshKernel refreshKernel = this.f20077super;
            if (refreshKernel != null) {
                refreshKernel.requestDrawBackgroundFor(this, i);
            }
            if (iArr.length > 1) {
                Drawable drawable = this.f20071class;
                if (drawable instanceof Cif) {
                    ((Cif) drawable).m24393case(iArr[1]);
                }
            }
        }
    }

    public DeliveryHeader(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20654if = y02.f8075case;
        setMinimumHeight(i02.m3194new(150.0f));
        Cif cif = new Cif();
        if (!cif.m24394else(f20062import)) {
            cif.m24395for(0, 0, 99, 32);
        }
        cif.m24393case(f20063native);
        cif.m24396goto(i02.m3194new(20.0f));
        Cif cif2 = new Cif();
        if (!cif2.m24394else(f20066throw)) {
            cif2.m24395for(2, 4, 265, 355);
        }
        cif2.m24393case(f20067while);
        cif2.m24397this(i02.m3194new(200.0f));
        Cif cif3 = new Cif();
        if (!cif3.m24394else(f20064public)) {
            cif3.m24395for(0, 1, 95, 92);
        }
        cif3.m24393case(f20065return);
        cif3.m24397this(i02.m3194new(50.0f));
        this.f20074final = cif3;
        this.f20071class = cif;
        this.f20072const = cif2;
        if (isInEditMode()) {
            this.f20070catch = qm1.Refreshing;
            this.f20068break = 100.0f;
            this.f20076new = (int) (this.f20071class.getBounds().width() * 3.5f);
            this.f20079try = (int) (this.f20071class.getBounds().width() * 0.5f);
            this.f20069case = (int) (this.f20071class.getBounds().width() * 2.0f);
        }
    }
}
