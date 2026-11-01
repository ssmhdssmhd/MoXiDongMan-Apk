package com.scwang.smartrefresh.layout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.os.Handler;
import android.support.v4.e10;
import android.support.v4.i02;
import android.support.v4.km1;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.scwang.smartrefresh.header.TaurusHeader;
import com.scwang.smartrefresh.layout.api.DefaultRefreshFooterCreator;
import com.scwang.smartrefresh.layout.api.DefaultRefreshHeaderCreator;
import com.scwang.smartrefresh.layout.api.DefaultRefreshInitializer;
import com.scwang.smartrefresh.layout.api.RefreshContent;
import com.scwang.smartrefresh.layout.api.RefreshFooter;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshInternal;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.api.ScrollBoundaryDecider;
import com.scwang.smartrefresh.layout.footer.BallPulseFooter;
import com.scwang.smartrefresh.layout.header.BezierRadarHeader;
import com.scwang.smartrefresh.layout.impl.RefreshFooterWrapper;
import com.scwang.smartrefresh.layout.impl.RefreshHeaderWrapper;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnMultiPurposeListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshLoadMoreListener;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
public class SmartRefreshLayout extends ViewGroup implements RefreshLayout, NestedScrollingParent {
    public static DefaultRefreshFooterCreator W;
    public static DefaultRefreshHeaderCreator a0;
    public static DefaultRefreshInitializer b0;
    public static ViewGroup.MarginLayoutParams c0 = new ViewGroup.MarginLayoutParams(-1, -1);
    public float A;
    public float B;
    public float C;
    public RefreshInternal D;
    public RefreshInternal E;
    public RefreshContent F;
    public Paint G;
    public Handler H;
    public RefreshKernel I;

    /* renamed from: J, reason: collision with root package name */
    public qm1 f36259J;
    public qm1 K;
    public long L;
    public int M;
    public int N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public MotionEvent T;
    public Runnable U;
    public ValueAnimator V;
    public boolean a;

    /* renamed from: abstract, reason: not valid java name */
    public boolean f20470abstract;
    public boolean b;

    /* renamed from: break, reason: not valid java name */
    public float f20471break;
    public boolean c;

    /* renamed from: case, reason: not valid java name */
    public int f20472case;

    /* renamed from: catch, reason: not valid java name */
    public float f20473catch;

    /* renamed from: class, reason: not valid java name */
    public float f20474class;

    /* renamed from: const, reason: not valid java name */
    public char f20475const;

    /* renamed from: continue, reason: not valid java name */
    public boolean f20476continue;
    public boolean d;

    /* renamed from: default, reason: not valid java name */
    public Interpolator f20477default;

    /* renamed from: do, reason: not valid java name */
    public int f20478do;
    public boolean e;

    /* renamed from: else, reason: not valid java name */
    public int f20479else;

    /* renamed from: extends, reason: not valid java name */
    public int[] f20480extends;
    public boolean f;

    /* renamed from: final, reason: not valid java name */
    public boolean f20481final;

    /* renamed from: finally, reason: not valid java name */
    public boolean f20482finally;

    /* renamed from: for, reason: not valid java name */
    public int f20483for;
    public boolean g;

    /* renamed from: goto, reason: not valid java name */
    public float f20484goto;
    public boolean h;
    public boolean i;

    /* renamed from: if, reason: not valid java name */
    public int f20485if;

    /* renamed from: implements, reason: not valid java name */
    public boolean f20486implements;

    /* renamed from: import, reason: not valid java name */
    public int f20487import;

    /* renamed from: instanceof, reason: not valid java name */
    public boolean f20488instanceof;

    /* renamed from: interface, reason: not valid java name */
    public boolean f20489interface;
    public boolean j;
    public OnRefreshListener k;
    public OnLoadMoreListener l;
    public OnMultiPurposeListener m;
    public ScrollBoundaryDecider n;

    /* renamed from: native, reason: not valid java name */
    public int f20490native;

    /* renamed from: new, reason: not valid java name */
    public int f20491new;
    public int o;
    public boolean p;

    /* renamed from: package, reason: not valid java name */
    public boolean f20492package;

    /* renamed from: private, reason: not valid java name */
    public boolean f20493private;

    /* renamed from: protected, reason: not valid java name */
    public boolean f20494protected;

    /* renamed from: public, reason: not valid java name */
    public int f20495public;
    public int[] q;
    public NestedScrollingChildHelper r;

    /* renamed from: return, reason: not valid java name */
    public int f20496return;
    public NestedScrollingParentHelper s;

    /* renamed from: static, reason: not valid java name */
    public int f20497static;

    /* renamed from: strictfp, reason: not valid java name */
    public boolean f20498strictfp;

    /* renamed from: super, reason: not valid java name */
    public boolean f20499super;

    /* renamed from: switch, reason: not valid java name */
    public Scroller f20500switch;

    /* renamed from: synchronized, reason: not valid java name */
    public boolean f20501synchronized;
    public int t;

    /* renamed from: this, reason: not valid java name */
    public float f20502this;

    /* renamed from: throw, reason: not valid java name */
    public int f20503throw;

    /* renamed from: throws, reason: not valid java name */
    public VelocityTracker f20504throws;

    /* renamed from: transient, reason: not valid java name */
    public boolean f20505transient;

    /* renamed from: try, reason: not valid java name */
    public int f20506try;
    public e10 u;
    public int v;

    /* renamed from: volatile, reason: not valid java name */
    public boolean f20507volatile;
    public e10 w;

    /* renamed from: while, reason: not valid java name */
    public int f20508while;
    public int x;
    public int y;
    public float z;

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$break, reason: invalid class name */
    public class Cbreak implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ float f20509do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f20510for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f20511if;

        /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$break$do, reason: invalid class name */
        public class Cdo implements ValueAnimator.AnimatorUpdateListener {
            public Cdo() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (smartRefreshLayout.V != null) {
                    smartRefreshLayout.I.moveSpinner(((Integer) valueAnimator.getAnimatedValue()).intValue(), true);
                }
            }
        }

        /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$break$if, reason: invalid class name */
        public class Cif extends AnimatorListenerAdapter {
            public Cif() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (smartRefreshLayout.V != null) {
                    smartRefreshLayout.V = null;
                    qm1 qm1Var = smartRefreshLayout.f36259J;
                    qm1 qm1Var2 = qm1.ReleaseToLoad;
                    if (qm1Var != qm1Var2) {
                        smartRefreshLayout.I.setState(qm1Var2);
                    }
                    SmartRefreshLayout.this.setStateLoading(!r3.f20510for);
                }
            }
        }

        public Cbreak(float f, int i, boolean z) {
            this.f20509do = f;
            this.f20511if = i;
            this.f20510for = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.K != qm1.Loading) {
                return;
            }
            ValueAnimator valueAnimator = smartRefreshLayout.V;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            SmartRefreshLayout.this.f20471break = r0.getMeasuredWidth() / 2.0f;
            SmartRefreshLayout.this.I.setState(qm1.PullUpToLoad);
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            smartRefreshLayout2.V = ValueAnimator.ofInt(smartRefreshLayout2.f20485if, -((int) (smartRefreshLayout2.v * this.f20509do)));
            SmartRefreshLayout.this.V.setDuration(this.f20511if);
            SmartRefreshLayout.this.V.setInterpolator(new i02(i02.f2582if));
            SmartRefreshLayout.this.V.addUpdateListener(new Cdo());
            SmartRefreshLayout.this.V.addListener(new Cif());
            SmartRefreshLayout.this.V.start();
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$case, reason: invalid class name */
    public class Ccase implements Runnable {
        public Ccase() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            OnLoadMoreListener onLoadMoreListener = smartRefreshLayout.l;
            if (onLoadMoreListener != null) {
                onLoadMoreListener.onLoadMore(smartRefreshLayout);
            } else if (smartRefreshLayout.m == null) {
                smartRefreshLayout.finishLoadMore(2000);
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            OnMultiPurposeListener onMultiPurposeListener = smartRefreshLayout2.m;
            if (onMultiPurposeListener != null) {
                onMultiPurposeListener.onLoadMore(smartRefreshLayout2);
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$catch, reason: invalid class name */
    public class Ccatch implements Runnable {

        /* renamed from: case, reason: not valid java name */
        public float f20516case;

        /* renamed from: for, reason: not valid java name */
        public int f20519for;

        /* renamed from: do, reason: not valid java name */
        public int f20517do = 0;

        /* renamed from: if, reason: not valid java name */
        public int f20520if = 10;

        /* renamed from: try, reason: not valid java name */
        public float f20522try = 0.0f;

        /* renamed from: new, reason: not valid java name */
        public long f20521new = AnimationUtils.currentAnimationTimeMillis();

        public Ccatch(float f, int i) {
            this.f20516case = f;
            this.f20519for = i;
            SmartRefreshLayout.this.H.postDelayed(this, this.f20520if);
            if (f > 0.0f) {
                SmartRefreshLayout.this.I.setState(qm1.PullDownToRefresh);
            } else {
                SmartRefreshLayout.this.I.setState(qm1.PullUpToLoad);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.U != this || smartRefreshLayout.f36259J.isFinishing) {
                return;
            }
            if (Math.abs(smartRefreshLayout.f20485if) < Math.abs(this.f20519for)) {
                double d = this.f20516case;
                this.f20517do = this.f20517do + 1;
                double dPow = Math.pow(0.949999988079071d, r4 * 2);
                Double.isNaN(d);
                this.f20516case = (float) (d * dPow);
            } else if (this.f20519for != 0) {
                double d2 = this.f20516case;
                this.f20517do = this.f20517do + 1;
                double dPow2 = Math.pow(0.44999998807907104d, r4 * 2);
                Double.isNaN(d2);
                this.f20516case = (float) (d2 * dPow2);
            } else {
                double d3 = this.f20516case;
                this.f20517do = this.f20517do + 1;
                double dPow3 = Math.pow(0.8500000238418579d, r4 * 2);
                Double.isNaN(d3);
                this.f20516case = (float) (d3 * dPow3);
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float f = this.f20516case * (((jCurrentAnimationTimeMillis - this.f20521new) * 1.0f) / 1000.0f);
            if (Math.abs(f) >= 1.0f) {
                this.f20521new = jCurrentAnimationTimeMillis;
                float f2 = this.f20522try + f;
                this.f20522try = f2;
                SmartRefreshLayout.this.m24425class(f2);
                SmartRefreshLayout.this.H.postDelayed(this, this.f20520if);
                return;
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            qm1 qm1Var = smartRefreshLayout2.K;
            boolean z = qm1Var.isDragging;
            if (z && qm1Var.isHeader) {
                smartRefreshLayout2.I.setState(qm1.PullDownCanceled);
            } else if (z && qm1Var.isFooter) {
                smartRefreshLayout2.I.setState(qm1.PullUpCanceled);
            }
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            smartRefreshLayout3.U = null;
            if (Math.abs(smartRefreshLayout3.f20485if) >= Math.abs(this.f20519for)) {
                int iMin = Math.min(Math.max((int) i02.m3185break(Math.abs(SmartRefreshLayout.this.f20485if - this.f20519for)), 30), 100) * 10;
                SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                smartRefreshLayout4.m24427else(this.f20519for, 0, smartRefreshLayout4.f20477default, iMin);
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$class, reason: invalid class name */
    public class Cclass implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f20524do;

        /* renamed from: new, reason: not valid java name */
        public float f20529new;

        /* renamed from: if, reason: not valid java name */
        public int f20528if = 0;

        /* renamed from: for, reason: not valid java name */
        public int f20526for = 10;

        /* renamed from: try, reason: not valid java name */
        public float f20530try = 0.98f;

        /* renamed from: case, reason: not valid java name */
        public long f20523case = 0;

        /* renamed from: else, reason: not valid java name */
        public long f20525else = AnimationUtils.currentAnimationTimeMillis();

        public Cclass(float f) {
            this.f20529new = f;
            this.f20524do = SmartRefreshLayout.this.f20485if;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0059  */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Runnable m24432do() {
            qm1 qm1Var;
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            qm1 qm1Var2 = smartRefreshLayout.f36259J;
            if (qm1Var2.isFinishing) {
                return null;
            }
            if (smartRefreshLayout.f20485if != 0) {
                if (qm1Var2.isOpening || (smartRefreshLayout.f && smartRefreshLayout.f20507volatile && smartRefreshLayout.g && smartRefreshLayout.m24423break(smartRefreshLayout.f20492package))) {
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (smartRefreshLayout2.f36259J == qm1.Loading || (smartRefreshLayout2.f && smartRefreshLayout2.f20507volatile && smartRefreshLayout2.g && smartRefreshLayout2.m24423break(smartRefreshLayout2.f20492package))) {
                        SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                        if (smartRefreshLayout3.f20485if >= (-smartRefreshLayout3.v)) {
                            SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                            if (smartRefreshLayout4.f36259J == qm1.Refreshing && smartRefreshLayout4.f20485if > smartRefreshLayout4.t) {
                                int i = 0;
                                int i2 = SmartRefreshLayout.this.f20485if;
                                float f = this.f20529new;
                                int i3 = i2;
                                while (true) {
                                    if (i2 * i3 <= 0) {
                                        break;
                                    }
                                    double d = f;
                                    i++;
                                    double dPow = Math.pow(this.f20530try, (this.f20526for * i) / 10.0f);
                                    Double.isNaN(d);
                                    f = (float) (d * dPow);
                                    float f2 = ((this.f20526for * 1.0f) / 1000.0f) * f;
                                    if (Math.abs(f2) < 1.0f) {
                                        SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                                        qm1 qm1Var3 = smartRefreshLayout5.f36259J;
                                        if (!qm1Var3.isOpening || ((qm1Var3 == (qm1Var = qm1.Refreshing) && i3 > smartRefreshLayout5.t) || (qm1Var3 != qm1Var && i3 < (-smartRefreshLayout5.v)))) {
                                            return null;
                                        }
                                    } else {
                                        i3 = (int) (i3 + f2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            this.f20523case = AnimationUtils.currentAnimationTimeMillis();
            SmartRefreshLayout.this.H.postDelayed(this, this.f20526for);
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.U != this || smartRefreshLayout.f36259J.isFinishing) {
                return;
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j = jCurrentAnimationTimeMillis - this.f20525else;
            double d = this.f20529new;
            double dPow = Math.pow(this.f20530try, (jCurrentAnimationTimeMillis - this.f20523case) / (1000.0f / this.f20526for));
            Double.isNaN(d);
            float f = (float) (d * dPow);
            this.f20529new = f;
            float f2 = f * ((j * 1.0f) / 1000.0f);
            if (Math.abs(f2) <= 1.0f) {
                SmartRefreshLayout.this.U = null;
                return;
            }
            this.f20525else = jCurrentAnimationTimeMillis;
            int i = (int) (this.f20524do + f2);
            this.f20524do = i;
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            if (smartRefreshLayout2.f20485if * i > 0) {
                smartRefreshLayout2.I.moveSpinner(i, true);
                SmartRefreshLayout.this.H.postDelayed(this, this.f20526for);
                return;
            }
            smartRefreshLayout2.U = null;
            smartRefreshLayout2.I.moveSpinner(0, true);
            i02.m3196try(SmartRefreshLayout.this.F.getScrollableView(), (int) (-this.f20529new));
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            if (!smartRefreshLayout3.R || f2 <= 0.0f) {
                return;
            }
            smartRefreshLayout3.R = false;
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20533do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20533do = iArr;
            try {
                iArr[qm1.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20533do[qm1.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20533do[qm1.PullUpToLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20533do[qm1.PullDownCanceled.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20533do[qm1.PullUpCanceled.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20533do[qm1.ReleaseToRefresh.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f20533do[qm1.ReleaseToLoad.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f20533do[qm1.ReleaseToTwoLevel.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f20533do[qm1.RefreshReleased.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f20533do[qm1.LoadReleased.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f20533do[qm1.Refreshing.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f20533do[qm1.Loading.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f20533do[qm1.RefreshFinish.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f20533do[qm1.LoadFinish.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f20533do[qm1.TwoLevelReleased.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f20533do[qm1.TwoLevelFinish.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f20533do[qm1.TwoLevel.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$else, reason: invalid class name */
    public class Celse implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f20534do = 0;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Boolean f20535for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f20536if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ boolean f20537new;

        public Celse(int i, Boolean bool, boolean z) {
            this.f20536if = i;
            this.f20535for = bool;
            this.f20537new = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = this.f20534do;
            if (i == 0) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                qm1 qm1Var = smartRefreshLayout.f36259J;
                qm1 qm1Var2 = qm1.None;
                if (qm1Var == qm1Var2 && smartRefreshLayout.K == qm1.Refreshing) {
                    smartRefreshLayout.K = qm1Var2;
                    return;
                }
                ValueAnimator valueAnimator = smartRefreshLayout.V;
                if (valueAnimator != null && qm1Var.isHeader && (qm1Var.isDragging || qm1Var == qm1.RefreshReleased)) {
                    smartRefreshLayout.V = null;
                    valueAnimator.cancel();
                    SmartRefreshLayout.this.I.setState(qm1Var2);
                    return;
                } else {
                    if (qm1Var != qm1.Refreshing || smartRefreshLayout.D == null || smartRefreshLayout.F == null) {
                        return;
                    }
                    this.f20534do = i + 1;
                    smartRefreshLayout.H.postDelayed(this, this.f20536if);
                    SmartRefreshLayout.this.m24426const(qm1.RefreshFinish);
                    Boolean bool = this.f20535for;
                    if (bool != null) {
                        SmartRefreshLayout.this.setNoMoreData(bool == Boolean.TRUE);
                        return;
                    }
                    return;
                }
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            int iOnFinish = smartRefreshLayout2.D.onFinish(smartRefreshLayout2, this.f20537new);
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            OnMultiPurposeListener onMultiPurposeListener = smartRefreshLayout3.m;
            if (onMultiPurposeListener != null) {
                RefreshInternal refreshInternal = smartRefreshLayout3.D;
                if (refreshInternal instanceof RefreshHeader) {
                    onMultiPurposeListener.onHeaderFinish((RefreshHeader) refreshInternal, this.f20537new);
                }
            }
            if (iOnFinish < Integer.MAX_VALUE) {
                SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                if (smartRefreshLayout4.f20481final || smartRefreshLayout4.p) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                    if (smartRefreshLayout5.f20481final) {
                        float f = smartRefreshLayout5.f20473catch;
                        smartRefreshLayout5.f20502this = f;
                        smartRefreshLayout5.f20491new = 0;
                        smartRefreshLayout5.f20481final = false;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 0, smartRefreshLayout5.f20471break, (f + smartRefreshLayout5.f20485if) - (smartRefreshLayout5.f20478do * 2), 0));
                        SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 2, smartRefreshLayout6.f20471break, smartRefreshLayout6.f20473catch + smartRefreshLayout6.f20485if, 0));
                    }
                    SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                    if (smartRefreshLayout7.p) {
                        smartRefreshLayout7.o = 0;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 1, smartRefreshLayout7.f20471break, smartRefreshLayout7.f20473catch, 0));
                        SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                        smartRefreshLayout8.p = false;
                        smartRefreshLayout8.f20491new = 0;
                    }
                }
                SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                int i2 = smartRefreshLayout9.f20485if;
                if (i2 <= 0) {
                    if (i2 < 0) {
                        smartRefreshLayout9.m24427else(0, iOnFinish, smartRefreshLayout9.f20477default, smartRefreshLayout9.f20472case);
                        return;
                    } else {
                        smartRefreshLayout9.I.moveSpinner(0, false);
                        SmartRefreshLayout.this.I.setState(qm1.None);
                        return;
                    }
                }
                ValueAnimator valueAnimatorM24427else = smartRefreshLayout9.m24427else(0, iOnFinish, smartRefreshLayout9.f20477default, smartRefreshLayout9.f20472case);
                SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                ValueAnimator.AnimatorUpdateListener animatorUpdateListenerScrollContentWhenFinished = smartRefreshLayout10.a ? smartRefreshLayout10.F.scrollContentWhenFinished(smartRefreshLayout10.f20485if) : null;
                if (valueAnimatorM24427else == null || animatorUpdateListenerScrollContentWhenFinished == null) {
                    return;
                }
                valueAnimatorM24427else.addUpdateListener(animatorUpdateListenerScrollContentWhenFinished);
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$final, reason: invalid class name */
    public class Cfinal implements RefreshKernel {

        /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$final$do, reason: invalid class name */
        public class Cdo extends AnimatorListenerAdapter {
            public Cdo() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SmartRefreshLayout.this.I.setState(qm1.TwoLevel);
            }
        }

        public Cfinal() {
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        public ValueAnimator animSpinner(int i) {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            return smartRefreshLayout.m24427else(i, 0, smartRefreshLayout.f20477default, smartRefreshLayout.f20472case);
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        public RefreshKernel finishTwoLevel() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.f36259J == qm1.TwoLevel) {
                smartRefreshLayout.I.setState(qm1.TwoLevelFinish);
                if (SmartRefreshLayout.this.f20485if == 0) {
                    moveSpinner(0, false);
                    SmartRefreshLayout.this.m24426const(qm1.None);
                } else {
                    animSpinner(0).setDuration(SmartRefreshLayout.this.f20506try);
                }
            }
            return this;
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        @NonNull
        public RefreshContent getRefreshContent() {
            return SmartRefreshLayout.this.F;
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        @NonNull
        public RefreshLayout getRefreshLayout() {
            return SmartRefreshLayout.this;
        }

        /* JADX WARN: Removed duplicated region for block: B:48:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00b5  */
        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public RefreshKernel moveSpinner(int i, boolean z) {
            int i2;
            OnMultiPurposeListener onMultiPurposeListener;
            OnMultiPurposeListener onMultiPurposeListener2;
            int i3;
            boolean z2;
            RefreshInternal refreshInternal;
            RefreshInternal refreshInternal2;
            SmartRefreshLayout smartRefreshLayout;
            RefreshInternal refreshInternal3;
            RefreshInternal refreshInternal4;
            RefreshInternal refreshInternal5;
            RefreshInternal refreshInternal6;
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            if (smartRefreshLayout2.f20485if == i && (((refreshInternal5 = smartRefreshLayout2.D) == null || !refreshInternal5.isSupportHorizontalDrag()) && ((refreshInternal6 = SmartRefreshLayout.this.E) == null || !refreshInternal6.isSupportHorizontalDrag()))) {
                return this;
            }
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            int i4 = smartRefreshLayout3.f20485if;
            smartRefreshLayout3.f20485if = i;
            if (z) {
                qm1 qm1Var = smartRefreshLayout3.K;
                if (qm1Var.isDragging || qm1Var.isOpening) {
                    if (i > smartRefreshLayout3.t * smartRefreshLayout3.B) {
                        if (smartRefreshLayout3.f36259J != qm1.ReleaseToTwoLevel) {
                            smartRefreshLayout3.I.setState(qm1.ReleaseToRefresh);
                        }
                    } else if ((-i) > smartRefreshLayout3.v * smartRefreshLayout3.C && !smartRefreshLayout3.f) {
                        smartRefreshLayout3.I.setState(qm1.ReleaseToLoad);
                    } else if (i < 0 && !smartRefreshLayout3.f) {
                        smartRefreshLayout3.I.setState(qm1.PullUpToLoad);
                    } else if (i > 0) {
                        smartRefreshLayout3.I.setState(qm1.PullDownToRefresh);
                    }
                }
            }
            SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
            if (smartRefreshLayout4.F != null) {
                if (i < 0 || (refreshInternal4 = smartRefreshLayout4.D) == null) {
                    i3 = 0;
                    z2 = false;
                    if (i <= 0 && (refreshInternal3 = (smartRefreshLayout = SmartRefreshLayout.this).E) != null) {
                        if (!smartRefreshLayout.m24424catch(smartRefreshLayout.f20498strictfp, refreshInternal3)) {
                            i3 = i;
                        } else if (i4 > 0) {
                            i3 = 0;
                        }
                        z2 = true;
                    }
                    if (z2) {
                        SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                        smartRefreshLayout5.F.moveSpinner(i3, smartRefreshLayout5.f20487import, smartRefreshLayout5.f20490native);
                        SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                        if (smartRefreshLayout6.f && smartRefreshLayout6.g && smartRefreshLayout6.f20507volatile) {
                            RefreshInternal refreshInternal7 = smartRefreshLayout6.E;
                            if ((refreshInternal7 instanceof RefreshFooter) && refreshInternal7.getSpinnerStyle() == y02.f8078new) {
                                SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                                if (smartRefreshLayout7.m24423break(smartRefreshLayout7.f20492package)) {
                                    SmartRefreshLayout.this.E.getView().setTranslationY(Math.max(0, i3));
                                }
                            }
                        }
                        SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                        boolean z3 = (smartRefreshLayout8.f20493private && (refreshInternal2 = smartRefreshLayout8.D) != null && refreshInternal2.getSpinnerStyle() == y02.f8075case) || SmartRefreshLayout.this.M != 0;
                        SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                        boolean z4 = (smartRefreshLayout9.f20470abstract && (refreshInternal = smartRefreshLayout9.E) != null && refreshInternal.getSpinnerStyle() == y02.f8075case) || SmartRefreshLayout.this.N != 0;
                        if ((z3 && (i3 >= 0 || i4 > 0)) || (z4 && (i3 <= 0 || i4 < 0))) {
                            smartRefreshLayout3.invalidate();
                        }
                    }
                } else {
                    if (smartRefreshLayout4.m24424catch(smartRefreshLayout4.f20476continue, refreshInternal4)) {
                        i3 = i;
                    } else {
                        if (i4 < 0) {
                            i3 = 0;
                        }
                        i3 = 0;
                        z2 = false;
                        if (i <= 0) {
                            if (!smartRefreshLayout.m24424catch(smartRefreshLayout.f20498strictfp, refreshInternal3)) {
                            }
                            z2 = true;
                        }
                        if (z2) {
                        }
                    }
                    z2 = true;
                    if (i <= 0) {
                    }
                    if (z2) {
                    }
                }
            }
            if ((i >= 0 || i4 > 0) && SmartRefreshLayout.this.D != null) {
                int iMax = Math.max(i, 0);
                SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                int i5 = smartRefreshLayout10.t;
                int i6 = (int) (i5 * smartRefreshLayout10.z);
                float f = (iMax * 1.0f) / (i5 == 0 ? 1 : i5);
                if (smartRefreshLayout10.m24423break(smartRefreshLayout10.f20482finally) || (SmartRefreshLayout.this.f36259J == qm1.RefreshFinish && !z)) {
                    SmartRefreshLayout smartRefreshLayout11 = SmartRefreshLayout.this;
                    if (i4 != smartRefreshLayout11.f20485if) {
                        if (smartRefreshLayout11.D.getSpinnerStyle() == y02.f8078new) {
                            SmartRefreshLayout.this.D.getView().setTranslationY(SmartRefreshLayout.this.f20485if);
                            SmartRefreshLayout smartRefreshLayout12 = SmartRefreshLayout.this;
                            if (smartRefreshLayout12.M != 0 && smartRefreshLayout12.G != null && !smartRefreshLayout12.m24424catch(smartRefreshLayout12.f20476continue, smartRefreshLayout12.D)) {
                                smartRefreshLayout3.invalidate();
                            }
                        } else if (SmartRefreshLayout.this.D.getSpinnerStyle().f8082for) {
                            View view = SmartRefreshLayout.this.D.getView();
                            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : SmartRefreshLayout.c0;
                            view.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max((SmartRefreshLayout.this.f20485if - marginLayoutParams.bottomMargin) - marginLayoutParams.topMargin, 0), 1073741824));
                            int i7 = marginLayoutParams.leftMargin;
                            int i8 = marginLayoutParams.topMargin + SmartRefreshLayout.this.x;
                            view.layout(i7, i8, view.getMeasuredWidth() + i7, view.getMeasuredHeight() + i8);
                        }
                        i2 = i6;
                        SmartRefreshLayout.this.D.onMoving(z, f, iMax, i5, i6);
                    } else {
                        i2 = i6;
                    }
                    if (z && SmartRefreshLayout.this.D.isSupportHorizontalDrag()) {
                        int i9 = (int) SmartRefreshLayout.this.f20471break;
                        int width = smartRefreshLayout3.getWidth();
                        SmartRefreshLayout smartRefreshLayout13 = SmartRefreshLayout.this;
                        smartRefreshLayout13.D.onHorizontalDrag(smartRefreshLayout13.f20471break / (width == 0 ? 1 : width), i9, width);
                    }
                } else {
                    i2 = i6;
                }
                SmartRefreshLayout smartRefreshLayout14 = SmartRefreshLayout.this;
                if (i4 != smartRefreshLayout14.f20485if && (onMultiPurposeListener = smartRefreshLayout14.m) != null) {
                    RefreshInternal refreshInternal8 = smartRefreshLayout14.D;
                    if (refreshInternal8 instanceof RefreshHeader) {
                        onMultiPurposeListener.onHeaderMoving((RefreshHeader) refreshInternal8, z, f, iMax, i5, i2);
                    }
                }
            }
            if ((i <= 0 || i4 < 0) && SmartRefreshLayout.this.E != null) {
                int i10 = -Math.min(i, 0);
                SmartRefreshLayout smartRefreshLayout15 = SmartRefreshLayout.this;
                int i11 = smartRefreshLayout15.v;
                int i12 = (int) (i11 * smartRefreshLayout15.A);
                float f2 = (i10 * 1.0f) / (i11 == 0 ? 1 : i11);
                if (smartRefreshLayout15.m24423break(smartRefreshLayout15.f20492package) || (SmartRefreshLayout.this.f36259J == qm1.LoadFinish && !z)) {
                    SmartRefreshLayout smartRefreshLayout16 = SmartRefreshLayout.this;
                    if (i4 != smartRefreshLayout16.f20485if) {
                        if (smartRefreshLayout16.E.getSpinnerStyle() == y02.f8078new) {
                            SmartRefreshLayout.this.E.getView().setTranslationY(SmartRefreshLayout.this.f20485if);
                            SmartRefreshLayout smartRefreshLayout17 = SmartRefreshLayout.this;
                            if (smartRefreshLayout17.N != 0 && smartRefreshLayout17.G != null && !smartRefreshLayout17.m24424catch(smartRefreshLayout17.f20498strictfp, smartRefreshLayout17.E)) {
                                smartRefreshLayout3.invalidate();
                            }
                        } else if (SmartRefreshLayout.this.E.getSpinnerStyle().f8082for) {
                            View view2 = SmartRefreshLayout.this.E.getView();
                            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : SmartRefreshLayout.c0;
                            view2.measure(View.MeasureSpec.makeMeasureSpec(view2.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max(((-SmartRefreshLayout.this.f20485if) - marginLayoutParams2.bottomMargin) - marginLayoutParams2.topMargin, 0), 1073741824));
                            int i13 = marginLayoutParams2.leftMargin;
                            int measuredHeight = (marginLayoutParams2.topMargin + smartRefreshLayout3.getMeasuredHeight()) - SmartRefreshLayout.this.y;
                            view2.layout(i13, measuredHeight - view2.getMeasuredHeight(), view2.getMeasuredWidth() + i13, measuredHeight);
                        }
                        SmartRefreshLayout.this.E.onMoving(z, f2, i10, i11, i12);
                    }
                    if (z && SmartRefreshLayout.this.E.isSupportHorizontalDrag()) {
                        int i14 = (int) SmartRefreshLayout.this.f20471break;
                        int width2 = smartRefreshLayout3.getWidth();
                        SmartRefreshLayout smartRefreshLayout18 = SmartRefreshLayout.this;
                        smartRefreshLayout18.E.onHorizontalDrag(smartRefreshLayout18.f20471break / (width2 != 0 ? width2 : 1), i14, width2);
                    }
                }
                SmartRefreshLayout smartRefreshLayout19 = SmartRefreshLayout.this;
                if (i4 != smartRefreshLayout19.f20485if && (onMultiPurposeListener2 = smartRefreshLayout19.m) != null) {
                    RefreshInternal refreshInternal9 = smartRefreshLayout19.E;
                    if (refreshInternal9 instanceof RefreshFooter) {
                        onMultiPurposeListener2.onFooterMoving((RefreshFooter) refreshInternal9, z, f2, i10, i11, i12);
                    }
                }
            }
            return this;
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        public RefreshKernel requestDefaultTranslationContentFor(@NonNull RefreshInternal refreshInternal, boolean z) {
            if (refreshInternal.equals(SmartRefreshLayout.this.D)) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (!smartRefreshLayout.i) {
                    smartRefreshLayout.i = true;
                    smartRefreshLayout.f20476continue = z;
                }
            } else if (refreshInternal.equals(SmartRefreshLayout.this.E)) {
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                if (!smartRefreshLayout2.j) {
                    smartRefreshLayout2.j = true;
                    smartRefreshLayout2.f20498strictfp = z;
                }
            }
            return this;
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        public RefreshKernel requestDrawBackgroundFor(@NonNull RefreshInternal refreshInternal, int i) {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.G == null && i != 0) {
                smartRefreshLayout.G = new Paint();
            }
            if (refreshInternal.equals(SmartRefreshLayout.this.D)) {
                SmartRefreshLayout.this.M = i;
            } else if (refreshInternal.equals(SmartRefreshLayout.this.E)) {
                SmartRefreshLayout.this.N = i;
            }
            return this;
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        public RefreshKernel requestFloorDuration(int i) {
            SmartRefreshLayout.this.f20506try = i;
            return this;
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        public RefreshKernel requestNeedTouchEventFor(@NonNull RefreshInternal refreshInternal, boolean z) {
            if (refreshInternal.equals(SmartRefreshLayout.this.D)) {
                SmartRefreshLayout.this.O = z;
            } else if (refreshInternal.equals(SmartRefreshLayout.this.E)) {
                SmartRefreshLayout.this.P = z;
            }
            return this;
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        public RefreshKernel requestRemeasureHeightFor(@NonNull RefreshInternal refreshInternal) {
            if (refreshInternal.equals(SmartRefreshLayout.this.D)) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                e10 e10Var = smartRefreshLayout.u;
                if (e10Var.f1194if) {
                    smartRefreshLayout.u = e10Var.m1582for();
                }
            } else if (refreshInternal.equals(SmartRefreshLayout.this.E)) {
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                e10 e10Var2 = smartRefreshLayout2.w;
                if (e10Var2.f1194if) {
                    smartRefreshLayout2.w = e10Var2.m1582for();
                }
            }
            return this;
        }

        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        public RefreshKernel setState(@NonNull qm1 qm1Var) {
            switch (Cdo.f20533do[qm1Var.ordinal()]) {
                case 1:
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    qm1 qm1Var2 = smartRefreshLayout.f36259J;
                    qm1 qm1Var3 = qm1.None;
                    if (qm1Var2 != qm1Var3 && smartRefreshLayout.f20485if == 0) {
                        smartRefreshLayout.m24426const(qm1Var3);
                        break;
                    } else if (smartRefreshLayout.f20485if != 0) {
                        animSpinner(0);
                        break;
                    }
                    break;
                case 2:
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout2.f36259J.isOpening && smartRefreshLayout2.m24423break(smartRefreshLayout2.f20482finally)) {
                        SmartRefreshLayout.this.m24426const(qm1.PullDownToRefresh);
                        break;
                    } else {
                        SmartRefreshLayout.this.setViceState(qm1.PullDownToRefresh);
                        break;
                    }
                    break;
                case 3:
                    SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                    if (smartRefreshLayout3.m24423break(smartRefreshLayout3.f20492package)) {
                        SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                        qm1 qm1Var4 = smartRefreshLayout4.f36259J;
                        if (!qm1Var4.isOpening && !qm1Var4.isFinishing && (!smartRefreshLayout4.f || !smartRefreshLayout4.f20507volatile || !smartRefreshLayout4.g)) {
                            smartRefreshLayout4.m24426const(qm1.PullUpToLoad);
                            break;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(qm1.PullUpToLoad);
                    break;
                case 4:
                    SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout5.f36259J.isOpening && smartRefreshLayout5.m24423break(smartRefreshLayout5.f20482finally)) {
                        SmartRefreshLayout.this.m24426const(qm1.PullDownCanceled);
                        setState(qm1.None);
                        break;
                    } else {
                        SmartRefreshLayout.this.setViceState(qm1.PullDownCanceled);
                        break;
                    }
                    break;
                case 5:
                    SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                    if (smartRefreshLayout6.m24423break(smartRefreshLayout6.f20492package)) {
                        SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                        if (!smartRefreshLayout7.f36259J.isOpening && (!smartRefreshLayout7.f || !smartRefreshLayout7.f20507volatile || !smartRefreshLayout7.g)) {
                            smartRefreshLayout7.m24426const(qm1.PullUpCanceled);
                            setState(qm1.None);
                            break;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(qm1.PullUpCanceled);
                    break;
                case 6:
                    SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout8.f36259J.isOpening && smartRefreshLayout8.m24423break(smartRefreshLayout8.f20482finally)) {
                        SmartRefreshLayout.this.m24426const(qm1.ReleaseToRefresh);
                        break;
                    } else {
                        SmartRefreshLayout.this.setViceState(qm1.ReleaseToRefresh);
                        break;
                    }
                    break;
                case 7:
                    SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                    if (smartRefreshLayout9.m24423break(smartRefreshLayout9.f20492package)) {
                        SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                        qm1 qm1Var5 = smartRefreshLayout10.f36259J;
                        if (!qm1Var5.isOpening && !qm1Var5.isFinishing && (!smartRefreshLayout10.f || !smartRefreshLayout10.f20507volatile || !smartRefreshLayout10.g)) {
                            smartRefreshLayout10.m24426const(qm1.ReleaseToLoad);
                            break;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(qm1.ReleaseToLoad);
                    break;
                case 8:
                    SmartRefreshLayout smartRefreshLayout11 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout11.f36259J.isOpening && smartRefreshLayout11.m24423break(smartRefreshLayout11.f20482finally)) {
                        SmartRefreshLayout.this.m24426const(qm1.ReleaseToTwoLevel);
                        break;
                    } else {
                        SmartRefreshLayout.this.setViceState(qm1.ReleaseToTwoLevel);
                        break;
                    }
                case 9:
                    SmartRefreshLayout smartRefreshLayout12 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout12.f36259J.isOpening && smartRefreshLayout12.m24423break(smartRefreshLayout12.f20482finally)) {
                        SmartRefreshLayout.this.m24426const(qm1.RefreshReleased);
                        break;
                    } else {
                        SmartRefreshLayout.this.setViceState(qm1.RefreshReleased);
                        break;
                    }
                    break;
                case 10:
                    SmartRefreshLayout smartRefreshLayout13 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout13.f36259J.isOpening && smartRefreshLayout13.m24423break(smartRefreshLayout13.f20492package)) {
                        SmartRefreshLayout.this.m24426const(qm1.LoadReleased);
                        break;
                    } else {
                        SmartRefreshLayout.this.setViceState(qm1.LoadReleased);
                        break;
                    }
                    break;
                case 11:
                    SmartRefreshLayout.this.setStateRefreshing(true);
                    break;
                case 12:
                    SmartRefreshLayout.this.setStateLoading(true);
                    break;
                case 13:
                    SmartRefreshLayout smartRefreshLayout14 = SmartRefreshLayout.this;
                    if (smartRefreshLayout14.f36259J == qm1.Refreshing) {
                        smartRefreshLayout14.m24426const(qm1.RefreshFinish);
                        break;
                    }
                    break;
                case 14:
                    SmartRefreshLayout smartRefreshLayout15 = SmartRefreshLayout.this;
                    if (smartRefreshLayout15.f36259J == qm1.Loading) {
                        smartRefreshLayout15.m24426const(qm1.LoadFinish);
                        break;
                    }
                    break;
                case 15:
                    SmartRefreshLayout.this.m24426const(qm1.TwoLevelReleased);
                    break;
                case 16:
                    SmartRefreshLayout.this.m24426const(qm1.TwoLevelFinish);
                    break;
                case 17:
                    SmartRefreshLayout.this.m24426const(qm1.TwoLevel);
                    break;
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // com.scwang.smartrefresh.layout.api.RefreshKernel
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public RefreshKernel startTwoLevel(boolean z) {
            if (z) {
                Cdo cdo = new Cdo();
                ValueAnimator valueAnimatorAnimSpinner = animSpinner(SmartRefreshLayout.this.getMeasuredHeight());
                if (valueAnimatorAnimSpinner != null) {
                    if (valueAnimatorAnimSpinner == SmartRefreshLayout.this.V) {
                        valueAnimatorAnimSpinner.setDuration(r1.f20506try);
                        valueAnimatorAnimSpinner.addListener(cdo);
                    } else {
                        cdo.onAnimationEnd(null);
                    }
                }
            } else if (animSpinner(0) == null) {
                SmartRefreshLayout.this.m24426const(qm1.None);
            }
            return this;
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f20541do;

        public Cfor(boolean z) {
            this.f20541do = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SmartRefreshLayout.this.L = System.currentTimeMillis();
            SmartRefreshLayout.this.m24426const(qm1.Refreshing);
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            OnRefreshListener onRefreshListener = smartRefreshLayout.k;
            if (onRefreshListener != null) {
                if (this.f20541do) {
                    onRefreshListener.onRefresh(smartRefreshLayout);
                }
            } else if (smartRefreshLayout.m == null) {
                smartRefreshLayout.finishRefresh(PathInterpolatorCompat.MAX_NUM_POINTS);
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            RefreshInternal refreshInternal = smartRefreshLayout2.D;
            if (refreshInternal != null) {
                int i = smartRefreshLayout2.t;
                refreshInternal.onStartAnimator(smartRefreshLayout2, i, (int) (smartRefreshLayout2.z * i));
            }
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            OnMultiPurposeListener onMultiPurposeListener = smartRefreshLayout3.m;
            if (onMultiPurposeListener == null || !(smartRefreshLayout3.D instanceof RefreshHeader)) {
                return;
            }
            if (this.f20541do) {
                onMultiPurposeListener.onRefresh(smartRefreshLayout3);
            }
            SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
            OnMultiPurposeListener onMultiPurposeListener2 = smartRefreshLayout4.m;
            RefreshHeader refreshHeader = (RefreshHeader) smartRefreshLayout4.D;
            int i2 = smartRefreshLayout4.t;
            onMultiPurposeListener2.onHeaderStartAnimator(refreshHeader, i2, (int) (smartRefreshLayout4.z * i2));
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$goto, reason: invalid class name */
    public class Cgoto implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f20543do = 0;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f20544for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f20545if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ boolean f20546new;

        /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$goto$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f20548do;

            /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$goto$do$do, reason: invalid class name and collision with other inner class name */
            public class C0193do extends AnimatorListenerAdapter {
                public C0193do() {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Cgoto cgoto = Cgoto.this;
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    smartRefreshLayout.R = false;
                    if (cgoto.f20544for) {
                        smartRefreshLayout.setNoMoreData(true);
                    }
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (smartRefreshLayout2.f36259J == qm1.LoadFinish) {
                        smartRefreshLayout2.m24426const(qm1.None);
                    }
                }
            }

            public Cdo(int i) {
                this.f20548do = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator valueAnimatorAnimSpinner;
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                ValueAnimator.AnimatorUpdateListener animatorUpdateListenerScrollContentWhenFinished = (!smartRefreshLayout.f20501synchronized || this.f20548do >= 0) ? null : smartRefreshLayout.F.scrollContentWhenFinished(smartRefreshLayout.f20485if);
                if (animatorUpdateListenerScrollContentWhenFinished != null) {
                    animatorUpdateListenerScrollContentWhenFinished.onAnimationUpdate(ValueAnimator.ofInt(0, 0));
                }
                C0193do c0193do = new C0193do();
                Cgoto cgoto = Cgoto.this;
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                int i = smartRefreshLayout2.f20485if;
                if (i > 0) {
                    valueAnimatorAnimSpinner = smartRefreshLayout2.I.animSpinner(0);
                } else {
                    if (animatorUpdateListenerScrollContentWhenFinished != null || i == 0) {
                        ValueAnimator valueAnimator = smartRefreshLayout2.V;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                            SmartRefreshLayout.this.V = null;
                        }
                        SmartRefreshLayout.this.I.moveSpinner(0, false);
                        SmartRefreshLayout.this.I.setState(qm1.None);
                    } else if (cgoto.f20544for && smartRefreshLayout2.f20507volatile) {
                        int i2 = smartRefreshLayout2.v;
                        if (i >= (-i2)) {
                            smartRefreshLayout2.m24426const(qm1.None);
                        } else {
                            valueAnimatorAnimSpinner = smartRefreshLayout2.I.animSpinner(-i2);
                        }
                    } else {
                        valueAnimatorAnimSpinner = smartRefreshLayout2.I.animSpinner(0);
                    }
                    valueAnimatorAnimSpinner = null;
                }
                if (valueAnimatorAnimSpinner != null) {
                    valueAnimatorAnimSpinner.addListener(c0193do);
                } else {
                    c0193do.onAnimationEnd(null);
                }
            }
        }

        public Cgoto(int i, boolean z, boolean z2) {
            this.f20545if = i;
            this.f20544for = z;
            this.f20546new = z2;
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x0098  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            boolean z;
            int i = this.f20543do;
            if (i == 0) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                qm1 qm1Var = smartRefreshLayout.f36259J;
                qm1 qm1Var2 = qm1.None;
                if (qm1Var == qm1Var2 && smartRefreshLayout.K == qm1.Loading) {
                    smartRefreshLayout.K = qm1Var2;
                } else {
                    ValueAnimator valueAnimator = smartRefreshLayout.V;
                    if (valueAnimator != null && ((qm1Var.isDragging || qm1Var == qm1.LoadReleased) && qm1Var.isFooter)) {
                        smartRefreshLayout.V = null;
                        valueAnimator.cancel();
                        SmartRefreshLayout.this.I.setState(qm1Var2);
                    } else if (qm1Var == qm1.Loading && smartRefreshLayout.E != null && smartRefreshLayout.F != null) {
                        this.f20543do = i + 1;
                        smartRefreshLayout.H.postDelayed(this, this.f20545if);
                        SmartRefreshLayout.this.m24426const(qm1.LoadFinish);
                        return;
                    }
                }
                if (this.f20544for) {
                    SmartRefreshLayout.this.setNoMoreData(true);
                    return;
                }
                return;
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            int iOnFinish = smartRefreshLayout2.E.onFinish(smartRefreshLayout2, this.f20546new);
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            OnMultiPurposeListener onMultiPurposeListener = smartRefreshLayout3.m;
            if (onMultiPurposeListener != null) {
                RefreshInternal refreshInternal = smartRefreshLayout3.E;
                if (refreshInternal instanceof RefreshFooter) {
                    onMultiPurposeListener.onFooterFinish((RefreshFooter) refreshInternal, this.f20546new);
                }
            }
            if (iOnFinish < Integer.MAX_VALUE) {
                if (this.f20544for) {
                    SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                    z = smartRefreshLayout4.f20507volatile && smartRefreshLayout4.f20485if < 0 && smartRefreshLayout4.F.canLoadMore();
                }
                SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                int i2 = smartRefreshLayout5.f20485if;
                int iMax = i2 - (z ? Math.max(i2, -smartRefreshLayout5.v) : 0);
                SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                if (smartRefreshLayout6.f20481final || smartRefreshLayout6.p) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                    if (smartRefreshLayout7.f20481final) {
                        float f = smartRefreshLayout7.f20473catch;
                        smartRefreshLayout7.f20502this = f;
                        smartRefreshLayout7.f20491new = smartRefreshLayout7.f20485if - iMax;
                        smartRefreshLayout7.f20481final = false;
                        float f2 = smartRefreshLayout7.f20498strictfp ? iMax : 0;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 0, smartRefreshLayout7.f20471break, f + f2 + (smartRefreshLayout7.f20478do * 2), 0));
                        SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 2, smartRefreshLayout8.f20471break, smartRefreshLayout8.f20473catch + f2, 0));
                    }
                    SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                    if (smartRefreshLayout9.p) {
                        smartRefreshLayout9.o = 0;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(jCurrentTimeMillis, jCurrentTimeMillis, 1, smartRefreshLayout9.f20471break, smartRefreshLayout9.f20473catch, 0));
                        SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                        smartRefreshLayout10.p = false;
                        smartRefreshLayout10.f20491new = 0;
                    }
                }
                SmartRefreshLayout.this.H.postDelayed(new Cdo(iMax), SmartRefreshLayout.this.f20485if < 0 ? iOnFinish : 0L);
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f20551do;

        public Cif(boolean z) {
            this.f20551do = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SmartRefreshLayout.this.setStateDirectLoading(this.f20551do);
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$new, reason: invalid class name */
    public class Cnew extends AnimatorListenerAdapter {
        public Cnew() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            qm1 qm1Var;
            qm1 qm1Var2;
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            smartRefreshLayout.V = null;
            if (smartRefreshLayout.f20485if == 0 && (qm1Var = smartRefreshLayout.f36259J) != (qm1Var2 = qm1.None) && !qm1Var.isOpening && !qm1Var.isDragging) {
                smartRefreshLayout.m24426const(qm1Var2);
                return;
            }
            qm1 qm1Var3 = smartRefreshLayout.f36259J;
            if (qm1Var3 != smartRefreshLayout.K) {
                smartRefreshLayout.setViceState(qm1Var3);
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$this, reason: invalid class name */
    public class Cthis implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ float f20554do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f20555for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f20556if;

        /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$this$do, reason: invalid class name */
        public class Cdo implements ValueAnimator.AnimatorUpdateListener {
            public Cdo() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (smartRefreshLayout.V != null) {
                    smartRefreshLayout.I.moveSpinner(((Integer) valueAnimator.getAnimatedValue()).intValue(), true);
                }
            }
        }

        /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$this$if, reason: invalid class name */
        public class Cif extends AnimatorListenerAdapter {
            public Cif() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (smartRefreshLayout.V != null) {
                    smartRefreshLayout.V = null;
                    qm1 qm1Var = smartRefreshLayout.f36259J;
                    qm1 qm1Var2 = qm1.ReleaseToRefresh;
                    if (qm1Var != qm1Var2) {
                        smartRefreshLayout.I.setState(qm1Var2);
                    }
                    SmartRefreshLayout.this.setStateRefreshing(!r3.f20555for);
                }
            }
        }

        public Cthis(float f, int i, boolean z) {
            this.f20554do = f;
            this.f20556if = i;
            this.f20555for = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.K != qm1.Refreshing) {
                return;
            }
            ValueAnimator valueAnimator = smartRefreshLayout.V;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            SmartRefreshLayout.this.f20471break = r0.getMeasuredWidth() / 2.0f;
            SmartRefreshLayout.this.I.setState(qm1.PullDownToRefresh);
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            smartRefreshLayout2.V = ValueAnimator.ofInt(smartRefreshLayout2.f20485if, (int) (smartRefreshLayout2.t * this.f20554do));
            SmartRefreshLayout.this.V.setDuration(this.f20556if);
            SmartRefreshLayout.this.V.setInterpolator(new i02(i02.f2582if));
            SmartRefreshLayout.this.V.addUpdateListener(new Cdo());
            SmartRefreshLayout.this.V.addListener(new Cif());
            SmartRefreshLayout.this.V.start();
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$try, reason: invalid class name */
    public class Ctry implements ValueAnimator.AnimatorUpdateListener {
        public Ctry() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SmartRefreshLayout.this.I.moveSpinner(((Integer) valueAnimator.getAnimatedValue()).intValue(), false);
        }
    }

    public SmartRefreshLayout(Context context) {
        this(context, null);
    }

    public static void setDefaultRefreshFooterCreator(@NonNull DefaultRefreshFooterCreator defaultRefreshFooterCreator) {
        W = defaultRefreshFooterCreator;
    }

    public static void setDefaultRefreshHeaderCreator(@NonNull DefaultRefreshHeaderCreator defaultRefreshHeaderCreator) {
        a0 = defaultRefreshHeaderCreator;
    }

    public static void setDefaultRefreshInitializer(@NonNull DefaultRefreshInitializer defaultRefreshInitializer) {
        b0 = defaultRefreshInitializer;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public boolean autoLoadMore() {
        int i = this.f20472case;
        int i2 = this.v;
        float f = i2 * ((this.A / 2.0f) + 0.5f) * 1.0f;
        if (i2 == 0) {
            i2 = 1;
        }
        return autoLoadMore(0, i, f / i2, false);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public boolean autoLoadMoreAnimationOnly() {
        int i = this.f20472case;
        int i2 = this.v;
        float f = i2 * ((this.A / 2.0f) + 0.5f) * 1.0f;
        if (i2 == 0) {
            i2 = 1;
        }
        return autoLoadMore(0, i, f / i2, true);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public boolean autoRefresh() {
        int i = this.Q ? 0 : 400;
        int i2 = this.f20472case;
        float f = (this.z / 2.0f) + 0.5f;
        int i3 = this.t;
        float f2 = f * i3 * 1.0f;
        if (i3 == 0) {
            i3 = 1;
        }
        return autoRefresh(i, i2, f2 / i3, false);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public boolean autoRefreshAnimationOnly() {
        int i = this.Q ? 0 : 400;
        int i2 = this.f20472case;
        float f = (this.z / 2.0f) + 0.5f;
        int i3 = this.t;
        float f2 = f * i3 * 1.0f;
        if (i3 == 0) {
            i3 = 1;
        }
        return autoRefresh(i, i2, f2 / i3, true);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m24423break(boolean z) {
        return z && !this.f20488instanceof;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m24424catch(boolean z, RefreshInternal refreshInternal) {
        return z || this.f20488instanceof || refreshInternal == null || refreshInternal.getSpinnerStyle() == y02.f8075case;
    }

    /* renamed from: class, reason: not valid java name */
    public void m24425class(float f) {
        qm1 qm1Var;
        float f2 = (!this.p || this.b || f >= 0.0f || this.F.canLoadMore()) ? f : 0.0f;
        if (f2 > this.f20479else * 5 && getTag() == null) {
            Toast.makeText(getContext(), "你这么死拉，臣妾做不到啊！", 0).show();
            setTag("你这么死拉，臣妾做不到啊！");
        }
        qm1 qm1Var2 = this.f36259J;
        if (qm1Var2 == qm1.TwoLevel && f2 > 0.0f) {
            this.I.moveSpinner(Math.min((int) f2, getMeasuredHeight()), true);
        } else if (qm1Var2 == qm1.Refreshing && f2 >= 0.0f) {
            int i = this.t;
            if (f2 < i) {
                this.I.moveSpinner((int) f2, true);
            } else {
                double d = (this.z - 1.0f) * i;
                int iMax = Math.max((this.f20479else * 4) / 3, getHeight());
                int i2 = this.t;
                double d2 = iMax - i2;
                double dMax = Math.max(0.0f, (f2 - i2) * this.f20474class);
                Double.isNaN(dMax);
                double d3 = -dMax;
                if (d2 == 0.0d) {
                    d2 = 1.0d;
                }
                double dPow = 1.0d - Math.pow(100.0d, d3 / d2);
                Double.isNaN(d);
                this.I.moveSpinner(((int) Math.min(d * dPow, dMax)) + this.t, true);
            }
        } else if (f2 < 0.0f && (qm1Var2 == qm1.Loading || ((this.f20507volatile && this.f && this.g && m24423break(this.f20492package)) || (this.f20486implements && !this.f && m24423break(this.f20492package))))) {
            int i3 = this.v;
            if (f2 > (-i3)) {
                this.I.moveSpinner((int) f2, true);
            } else {
                double d4 = (this.A - 1.0f) * i3;
                int iMax2 = Math.max((this.f20479else * 4) / 3, getHeight());
                int i4 = this.v;
                double d5 = iMax2 - i4;
                double d6 = -Math.min(0.0f, (i4 + f2) * this.f20474class);
                Double.isNaN(d6);
                double d7 = -d6;
                if (d5 == 0.0d) {
                    d5 = 1.0d;
                }
                double dPow2 = 1.0d - Math.pow(100.0d, d7 / d5);
                Double.isNaN(d4);
                this.I.moveSpinner(((int) (-Math.min(d4 * dPow2, d6))) - this.v, true);
            }
        } else if (f2 >= 0.0f) {
            double d8 = this.z * this.t;
            double dMax2 = Math.max(this.f20479else / 2, getHeight());
            double dMax3 = Math.max(0.0f, this.f20474class * f2);
            Double.isNaN(dMax3);
            double d9 = -dMax3;
            if (dMax2 == 0.0d) {
                dMax2 = 1.0d;
            }
            double dPow3 = 1.0d - Math.pow(100.0d, d9 / dMax2);
            Double.isNaN(d8);
            this.I.moveSpinner((int) Math.min(d8 * dPow3, dMax3), true);
        } else {
            double d10 = this.A * this.v;
            double dMax4 = Math.max(this.f20479else / 2, getHeight());
            double d11 = -Math.min(0.0f, this.f20474class * f2);
            Double.isNaN(d11);
            double d12 = -d11;
            if (dMax4 == 0.0d) {
                dMax4 = 1.0d;
            }
            double dPow4 = 1.0d - Math.pow(100.0d, d12 / dMax4);
            Double.isNaN(d10);
            this.I.moveSpinner((int) (-Math.min(d10 * dPow4, d11)), true);
        }
        if (!this.f20486implements || this.f || !m24423break(this.f20492package) || f2 >= 0.0f || (qm1Var = this.f36259J) == qm1.Refreshing || qm1Var == qm1.Loading || qm1Var == qm1.LoadFinish) {
            return;
        }
        if (this.e) {
            this.U = null;
            this.I.animSpinner(-this.v);
        }
        setStateDirectLoading(false);
        this.H.postDelayed(new Ccase(), this.f20472case);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout closeHeaderOrFooter() {
        qm1 qm1Var = this.f36259J;
        if (qm1Var == qm1.Refreshing) {
            finishRefresh();
        } else if (qm1Var == qm1.Loading) {
            finishLoadMore();
        } else if (this.f20485if != 0) {
            m24427else(0, 0, this.f20477default, this.f20472case);
        }
        return this;
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f20500switch.getCurrY();
        if (this.f20500switch.computeScrollOffset()) {
            int finalY = this.f20500switch.getFinalY();
            if ((finalY >= 0 || !((this.f20482finally || this.f20505transient) && this.F.canRefresh())) && (finalY <= 0 || !((this.f20492package || this.f20505transient) && this.F.canLoadMore()))) {
                this.S = true;
                invalidate();
            } else {
                if (this.S) {
                    m24429goto(Build.VERSION.SDK_INT >= 14 ? finalY > 0 ? -this.f20500switch.getCurrVelocity() : this.f20500switch.getCurrVelocity() : ((this.f20500switch.getCurrY() - finalY) * 1.0f) / Math.max(this.f20500switch.getDuration() - this.f20500switch.timePassed(), 1));
                }
                this.f20500switch.forceFinished(true);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m24426const(qm1 qm1Var) {
        qm1 qm1Var2 = this.f36259J;
        if (qm1Var2 == qm1Var) {
            if (this.K != qm1Var2) {
                this.K = qm1Var2;
                return;
            }
            return;
        }
        this.f36259J = qm1Var;
        this.K = qm1Var;
        RefreshInternal refreshInternal = this.D;
        RefreshInternal refreshInternal2 = this.E;
        OnMultiPurposeListener onMultiPurposeListener = this.m;
        if (refreshInternal != null) {
            refreshInternal.onStateChanged(this, qm1Var2, qm1Var);
        }
        if (refreshInternal2 != null) {
            refreshInternal2.onStateChanged(this, qm1Var2, qm1Var);
        }
        if (onMultiPurposeListener != null) {
            onMultiPurposeListener.onStateChanged(this, qm1Var2, qm1Var);
        }
        if (qm1Var == qm1.LoadFinish) {
            this.R = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x00dc, code lost:
    
        if (r4.isFooter == false) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00cc  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        qm1 qm1Var;
        char c;
        RefreshInternal refreshInternal;
        RefreshInternal refreshInternal2;
        int actionMasked = motionEvent.getActionMasked();
        int i = 0;
        boolean z = actionMasked == 6;
        int actionIndex = z ? motionEvent.getActionIndex() : -1;
        int pointerCount = motionEvent.getPointerCount();
        float x = 0.0f;
        float y = 0.0f;
        for (int i2 = 0; i2 < pointerCount; i2++) {
            if (actionIndex != i2) {
                x += motionEvent.getX(i2);
                y += motionEvent.getY(i2);
            }
        }
        if (z) {
            pointerCount--;
        }
        float f = pointerCount;
        float f2 = x / f;
        float f3 = y / f;
        if ((actionMasked == 6 || actionMasked == 5) && this.f20481final) {
            this.f20502this += f3 - this.f20473catch;
        }
        this.f20471break = f2;
        this.f20473catch = f3;
        if (this.p) {
            int i3 = this.o;
            boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
            if (actionMasked == 2 && i3 == this.o) {
                int i4 = (int) this.f20471break;
                int width = getWidth();
                float f4 = this.f20471break / (width != 0 ? width : 1);
                if (m24423break(this.f20482finally) && this.f20485if > 0 && (refreshInternal2 = this.D) != null && refreshInternal2.isSupportHorizontalDrag()) {
                    this.D.onHorizontalDrag(f4, i4, width);
                } else if (m24423break(this.f20492package) && this.f20485if < 0 && (refreshInternal = this.E) != null && refreshInternal.isSupportHorizontalDrag()) {
                    this.E.onHorizontalDrag(f4, i4, width);
                }
            }
            return zDispatchTouchEvent;
        }
        if (isEnabled() && (this.f20482finally || this.f20492package || this.f20505transient)) {
            if (this.O) {
                qm1 qm1Var2 = this.f36259J;
                if ((!qm1Var2.isOpening && !qm1Var2.isFinishing) || !qm1Var2.isHeader) {
                    if (this.P) {
                        qm1 qm1Var3 = this.f36259J;
                        if (!qm1Var3.isOpening) {
                            if (qm1Var3.isFinishing) {
                            }
                        }
                    }
                    if (!m24431this(actionMasked)) {
                        qm1 qm1Var4 = this.f36259J;
                        if (!qm1Var4.isFinishing && ((qm1Var4 != (qm1Var = qm1.Loading) || !this.e) && (qm1Var4 != qm1.Refreshing || !this.d))) {
                            if (actionMasked == 0) {
                                this.f20497static = 0;
                                this.f20504throws.addMovement(motionEvent);
                                this.f20500switch.forceFinished(true);
                                this.f20484goto = f2;
                                this.f20502this = f3;
                                this.f20483for = 0;
                                this.f20491new = this.f20485if;
                                this.f20481final = false;
                                this.f20499super = super.dispatchTouchEvent(motionEvent);
                                if (this.f36259J == qm1.TwoLevel && this.f20502this < (getMeasuredHeight() * 5) / 6) {
                                    this.f20475const = 'h';
                                    return this.f20499super;
                                }
                                RefreshContent refreshContent = this.F;
                                if (refreshContent != null) {
                                    refreshContent.onActionDown(motionEvent);
                                }
                                return true;
                            }
                            if (actionMasked != 1) {
                                if (actionMasked == 2) {
                                    float f5 = f2 - this.f20484goto;
                                    float f6 = f3 - this.f20502this;
                                    this.f20504throws.addMovement(motionEvent);
                                    if (!this.f20481final && (c = this.f20475const) != 'h' && this.F != null) {
                                        if (c == 'v' || (Math.abs(f6) >= this.f20478do && Math.abs(f5) < Math.abs(f6))) {
                                            this.f20475const = 'v';
                                            if (f6 > 0.0f && (this.f20485if < 0 || ((this.f20505transient || this.f20482finally) && this.F.canRefresh()))) {
                                                this.f20481final = true;
                                                this.f20502this = f3 - this.f20478do;
                                            } else if (f6 < 0.0f && (this.f20485if > 0 || ((this.f20505transient || this.f20492package) && ((this.f36259J == qm1Var && this.R) || this.F.canLoadMore())))) {
                                                this.f20481final = true;
                                                this.f20502this = this.f20478do + f3;
                                            }
                                            if (this.f20481final) {
                                                f6 = f3 - this.f20502this;
                                                if (this.f20499super) {
                                                    motionEvent.setAction(3);
                                                    super.dispatchTouchEvent(motionEvent);
                                                }
                                                RefreshKernel refreshKernel = this.I;
                                                int i5 = this.f20485if;
                                                refreshKernel.setState((i5 > 0 || (i5 == 0 && f6 > 0.0f)) ? qm1.PullDownToRefresh : qm1.PullUpToLoad);
                                                ViewParent parent = getParent();
                                                if (parent instanceof ViewGroup) {
                                                    ((ViewGroup) parent).requestDisallowInterceptTouchEvent(true);
                                                }
                                            }
                                        } else if (Math.abs(f5) >= this.f20478do && Math.abs(f5) > Math.abs(f6) && this.f20475const != 'v') {
                                            this.f20475const = 'h';
                                        }
                                    }
                                    if (this.f20481final) {
                                        int i6 = ((int) f6) + this.f20491new;
                                        qm1 qm1Var5 = this.K;
                                        if ((qm1Var5.isHeader && (i6 < 0 || this.f20483for < 0)) || (qm1Var5.isFooter && (i6 > 0 || this.f20483for > 0))) {
                                            this.f20483for = i6;
                                            long eventTime = motionEvent.getEventTime();
                                            if (this.T == null) {
                                                MotionEvent motionEventObtain = MotionEvent.obtain(eventTime, eventTime, 0, this.f20484goto + f5, this.f20502this, 0);
                                                this.T = motionEventObtain;
                                                super.dispatchTouchEvent(motionEventObtain);
                                            }
                                            MotionEvent motionEventObtain2 = MotionEvent.obtain(eventTime, eventTime, 2, this.f20484goto + f5, this.f20502this + i6, 0);
                                            super.dispatchTouchEvent(motionEventObtain2);
                                            if (this.R && f6 > this.f20478do && this.f20485if < 0) {
                                                this.R = false;
                                            }
                                            if (i6 > 0 && ((this.f20505transient || this.f20482finally) && this.F.canRefresh())) {
                                                this.f20473catch = f3;
                                                this.f20502this = f3;
                                                this.f20491new = 0;
                                                this.I.setState(qm1.PullDownToRefresh);
                                            } else if (i6 >= 0 || !((this.f20505transient || this.f20492package) && this.F.canLoadMore())) {
                                                i = i6;
                                            } else {
                                                this.f20473catch = f3;
                                                this.f20502this = f3;
                                                this.f20491new = 0;
                                                this.I.setState(qm1.PullUpToLoad);
                                            }
                                            qm1 qm1Var6 = this.K;
                                            if ((qm1Var6.isHeader && i < 0) || (qm1Var6.isFooter && i > 0)) {
                                                if (this.f20485if != 0) {
                                                    m24425class(0.0f);
                                                }
                                                return true;
                                            }
                                            if (this.T != null) {
                                                this.T = null;
                                                motionEventObtain2.setAction(3);
                                                super.dispatchTouchEvent(motionEventObtain2);
                                            }
                                            motionEventObtain2.recycle();
                                            i6 = i;
                                        }
                                        m24425class(i6);
                                        return true;
                                    }
                                    if (this.R && f6 > this.f20478do && this.f20485if < 0) {
                                        this.R = false;
                                    }
                                } else if (actionMasked == 3) {
                                }
                                return super.dispatchTouchEvent(motionEvent);
                            }
                            this.f20504throws.addMovement(motionEvent);
                            this.f20504throws.computeCurrentVelocity(1000, this.f20496return);
                            this.f20497static = (int) this.f20504throws.getYVelocity();
                            m24430super(0.0f);
                            this.f20504throws.clear();
                            this.f20475const = 'n';
                            MotionEvent motionEvent2 = this.T;
                            if (motionEvent2 != null) {
                                motionEvent2.recycle();
                                this.T = null;
                                long eventTime2 = motionEvent.getEventTime();
                                MotionEvent motionEventObtain3 = MotionEvent.obtain(eventTime2, eventTime2, actionMasked, this.f20484goto, f3, 0);
                                super.dispatchTouchEvent(motionEventObtain3);
                                motionEventObtain3.recycle();
                            }
                            m24428final();
                            if (this.f20481final) {
                                this.f20481final = false;
                                return true;
                            }
                            return super.dispatchTouchEvent(motionEvent);
                        }
                    }
                    return false;
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        Paint paint;
        Paint paint2;
        RefreshContent refreshContent = this.F;
        View view2 = refreshContent != null ? refreshContent.getView() : null;
        RefreshInternal refreshInternal = this.D;
        if (refreshInternal != null && refreshInternal.getView() == view) {
            if (!m24423break(this.f20482finally) || (!this.f20489interface && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int iMax = Math.max(view2.getTop() + view2.getPaddingTop() + this.f20485if, view.getTop());
                int i = this.M;
                if (i != 0 && (paint2 = this.G) != null) {
                    paint2.setColor(i);
                    if (this.D.getSpinnerStyle().f8082for) {
                        iMax = view.getBottom();
                    } else if (this.D.getSpinnerStyle() == y02.f8078new) {
                        iMax = view.getBottom() + this.f20485if;
                    }
                    canvas.drawRect(0.0f, view.getTop(), getWidth(), iMax, this.G);
                }
                if (this.f20493private && this.D.getSpinnerStyle() == y02.f8075case) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), iMax);
                    boolean zDrawChild = super.drawChild(canvas, view, j);
                    canvas.restore();
                    return zDrawChild;
                }
            }
        }
        RefreshInternal refreshInternal2 = this.E;
        if (refreshInternal2 != null && refreshInternal2.getView() == view) {
            if (!m24423break(this.f20492package) || (!this.f20489interface && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int iMin = Math.min((view2.getBottom() - view2.getPaddingBottom()) + this.f20485if, view.getBottom());
                int i2 = this.N;
                if (i2 != 0 && (paint = this.G) != null) {
                    paint.setColor(i2);
                    if (this.E.getSpinnerStyle().f8082for) {
                        iMin = view.getTop();
                    } else if (this.E.getSpinnerStyle() == y02.f8078new) {
                        iMin = view.getTop() + this.f20485if;
                    }
                    canvas.drawRect(0.0f, iMin, getWidth(), view.getBottom(), this.G);
                }
                if (this.f20470abstract && this.E.getSpinnerStyle() == y02.f8075case) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), iMin, view.getRight(), view.getBottom());
                    boolean zDrawChild2 = super.drawChild(canvas, view, j);
                    canvas.restore();
                    return zDrawChild2;
                }
            }
        }
        return super.drawChild(canvas, view, j);
    }

    /* renamed from: else, reason: not valid java name */
    public ValueAnimator m24427else(int i, int i2, Interpolator interpolator, int i3) {
        if (this.f20485if == i) {
            return null;
        }
        ValueAnimator valueAnimator = this.V;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.U = null;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.f20485if, i);
        this.V = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(i3);
        this.V.setInterpolator(interpolator);
        this.V.addListener(new Cnew());
        this.V.addUpdateListener(new Ctry());
        this.V.setStartDelay(i2);
        this.V.start();
        return this.V;
    }

    /* renamed from: final, reason: not valid java name */
    public void m24428final() {
        qm1 qm1Var = this.f36259J;
        if (qm1Var == qm1.TwoLevel) {
            if (this.f20497static <= -1000 || this.f20485if <= getMeasuredHeight() / 2) {
                if (this.f20481final) {
                    this.I.finishTwoLevel();
                    return;
                }
                return;
            } else {
                ValueAnimator valueAnimatorAnimSpinner = this.I.animSpinner(getMeasuredHeight());
                if (valueAnimatorAnimSpinner != null) {
                    valueAnimatorAnimSpinner.setDuration(this.f20506try);
                    return;
                }
                return;
            }
        }
        qm1 qm1Var2 = qm1.Loading;
        if (qm1Var == qm1Var2 || (this.f20507volatile && this.f && this.g && this.f20485if < 0 && m24423break(this.f20492package))) {
            int i = this.f20485if;
            int i2 = this.v;
            if (i < (-i2)) {
                this.I.animSpinner(-i2);
                return;
            } else {
                if (i > 0) {
                    this.I.animSpinner(0);
                    return;
                }
                return;
            }
        }
        qm1 qm1Var3 = this.f36259J;
        qm1 qm1Var4 = qm1.Refreshing;
        if (qm1Var3 == qm1Var4) {
            int i3 = this.f20485if;
            int i4 = this.t;
            if (i3 > i4) {
                this.I.animSpinner(i4);
                return;
            } else {
                if (i3 < 0) {
                    this.I.animSpinner(0);
                    return;
                }
                return;
            }
        }
        if (qm1Var3 == qm1.PullDownToRefresh) {
            this.I.setState(qm1.PullDownCanceled);
            return;
        }
        if (qm1Var3 == qm1.PullUpToLoad) {
            this.I.setState(qm1.PullUpCanceled);
            return;
        }
        if (qm1Var3 == qm1.ReleaseToRefresh) {
            this.I.setState(qm1Var4);
            return;
        }
        if (qm1Var3 == qm1.ReleaseToLoad) {
            this.I.setState(qm1Var2);
            return;
        }
        if (qm1Var3 == qm1.ReleaseToTwoLevel) {
            this.I.setState(qm1.TwoLevelReleased);
            return;
        }
        if (qm1Var3 == qm1.RefreshReleased) {
            if (this.V == null) {
                this.I.animSpinner(this.t);
            }
        } else if (qm1Var3 == qm1.LoadReleased) {
            if (this.V == null) {
                this.I.animSpinner(-this.v);
            }
        } else if (this.f20485if != 0) {
            this.I.animSpinner(0);
        }
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishLoadMore() {
        return finishLoadMore(true);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishLoadMoreWithNoMoreData() {
        return finishLoadMore(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.L))), TaurusHeader.a) << 16, true, true);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishRefresh() {
        return finishRefresh(true);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishRefreshWithNoMoreData() {
        return finishRefresh(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.L))), TaurusHeader.a) << 16, true, Boolean.TRUE);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Cconst(getContext(), attributeSet);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    @NonNull
    public ViewGroup getLayout() {
        return this;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.s.getNestedScrollAxes();
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    @Nullable
    public RefreshFooter getRefreshFooter() {
        RefreshInternal refreshInternal = this.E;
        if (refreshInternal instanceof RefreshFooter) {
            return (RefreshFooter) refreshInternal;
        }
        return null;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    @Nullable
    public RefreshHeader getRefreshHeader() {
        RefreshInternal refreshInternal = this.D;
        if (refreshInternal instanceof RefreshHeader) {
            return (RefreshHeader) refreshInternal;
        }
        return null;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    @NonNull
    public qm1 getState() {
        return this.f36259J;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m24429goto(float f) {
        qm1 qm1Var;
        if (this.V == null) {
            if (f > 0.0f && ((qm1Var = this.f36259J) == qm1.Refreshing || qm1Var == qm1.TwoLevel)) {
                this.U = new Ccatch(f, this.t);
                return;
            }
            if (f < 0.0f && (this.f36259J == qm1.Loading || ((this.f20507volatile && this.f && this.g && m24423break(this.f20492package)) || (this.f20486implements && !this.f && m24423break(this.f20492package) && this.f36259J != qm1.Refreshing)))) {
                this.U = new Ccatch(f, -this.v);
            } else if (this.f20485if == 0 && this.f20494protected) {
                this.U = new Ccatch(f, 0);
            }
        }
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.c && (this.f20505transient || this.f20482finally || this.f20492package);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        RefreshInternal refreshInternal;
        super.onAttachedToWindow();
        boolean z = true;
        this.Q = true;
        if (!isInEditMode()) {
            if (this.D == null) {
                DefaultRefreshHeaderCreator defaultRefreshHeaderCreator = a0;
                if (defaultRefreshHeaderCreator != null) {
                    setRefreshHeader(defaultRefreshHeaderCreator.createRefreshHeader(getContext(), this));
                } else {
                    setRefreshHeader(new BezierRadarHeader(getContext()));
                }
            }
            if (this.E == null) {
                DefaultRefreshFooterCreator defaultRefreshFooterCreator = W;
                if (defaultRefreshFooterCreator != null) {
                    setRefreshFooter(defaultRefreshFooterCreator.createRefreshFooter(getContext(), this));
                } else {
                    boolean z2 = this.f20492package;
                    setRefreshFooter(new BallPulseFooter(getContext()));
                    this.f20492package = z2;
                }
            } else {
                if (!this.f20492package && this.h) {
                    z = false;
                }
                this.f20492package = z;
            }
            if (this.F == null) {
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    RefreshInternal refreshInternal2 = this.D;
                    if ((refreshInternal2 == null || childAt != refreshInternal2.getView()) && ((refreshInternal = this.E) == null || childAt != refreshInternal.getView())) {
                        this.F = new km1(childAt);
                    }
                }
            }
            if (this.F == null) {
                int iM3194new = i02.m3194new(20.0f);
                TextView textView = new TextView(getContext());
                textView.setTextColor(-39424);
                textView.setGravity(17);
                textView.setTextSize(20.0f);
                textView.setText(R.string.srl_content_empty);
                super.addView(textView, 0, new Cconst(-1, -1));
                km1 km1Var = new km1(textView);
                this.F = km1Var;
                km1Var.getView().setPadding(iM3194new, iM3194new, iM3194new, iM3194new);
            }
            View viewFindViewById = findViewById(this.f20503throw);
            View viewFindViewById2 = findViewById(this.f20508while);
            this.F.setScrollBoundaryDecider(this.n);
            this.F.setEnableLoadMoreWhenContentNotFull(this.b);
            this.F.setUpComponent(this.I, viewFindViewById, viewFindViewById2);
            if (this.f20485if != 0) {
                m24426const(qm1.None);
                RefreshContent refreshContent = this.F;
                this.f20485if = 0;
                refreshContent.moveSpinner(0, this.f20487import, this.f20490native);
            }
        }
        int[] iArr = this.f20480extends;
        if (iArr != null) {
            RefreshInternal refreshInternal3 = this.D;
            if (refreshInternal3 != null) {
                refreshInternal3.setPrimaryColors(iArr);
            }
            RefreshInternal refreshInternal4 = this.E;
            if (refreshInternal4 != null) {
                refreshInternal4.setPrimaryColors(this.f20480extends);
            }
        }
        RefreshContent refreshContent2 = this.F;
        if (refreshContent2 != null) {
            super.bringChildToFront(refreshContent2.getView());
        }
        RefreshInternal refreshInternal5 = this.D;
        if (refreshInternal5 != null && refreshInternal5.getSpinnerStyle().f8083if) {
            super.bringChildToFront(this.D.getView());
        }
        RefreshInternal refreshInternal6 = this.E;
        if (refreshInternal6 == null || !refreshInternal6.getSpinnerStyle().f8083if) {
            return;
        }
        super.bringChildToFront(this.E.getView());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.Q = false;
        this.I.moveSpinner(0, true);
        m24426const(qm1.None);
        Handler handler = this.H;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.h = true;
        this.U = null;
        ValueAnimator valueAnimator = this.V;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.V.removeAllUpdateListeners();
            this.V.cancel();
            this.V = null;
        }
        this.R = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public void onFinishInflate() {
        int i;
        int i2;
        super.onFinishInflate();
        int childCount = super.getChildCount();
        if (childCount > 3) {
            throw new RuntimeException("最多只支持3个子View，Most only support three sub view");
        }
        int i3 = 0;
        int i4 = -1;
        char c = 0;
        while (true) {
            i = 2;
            if (i3 >= childCount) {
                break;
            }
            View childAt = super.getChildAt(i3);
            if (i02.m3186case(childAt) && (c < 2 || i3 == 1)) {
                i4 = i3;
                c = 2;
            } else if (!(childAt instanceof RefreshInternal) && c < 1) {
                c = i3 > 0 ? (char) 1 : (char) 0;
                i4 = i3;
            }
            i3++;
        }
        if (i4 >= 0) {
            this.F = new km1(super.getChildAt(i4));
            if (i4 != 1) {
                if (childCount == 2) {
                    i2 = -1;
                    i = 1;
                }
                i2 = -1;
                i = -1;
            } else if (childCount == 3) {
                i2 = 0;
            } else {
                i2 = 0;
                i = -1;
            }
        } else {
            i2 = -1;
            i = -1;
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt2 = super.getChildAt(i5);
            if (i5 == i2 || (i5 != i && i2 == -1 && this.D == null && (childAt2 instanceof RefreshHeader))) {
                this.D = childAt2 instanceof RefreshHeader ? (RefreshHeader) childAt2 : new RefreshHeaderWrapper(childAt2);
            } else if (i5 == i || (i == -1 && (childAt2 instanceof RefreshFooter))) {
                this.f20492package = this.f20492package || !this.h;
                this.E = childAt2 instanceof RefreshFooter ? (RefreshFooter) childAt2 : new RefreshFooterWrapper(childAt2);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iMax;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        int childCount = super.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = super.getChildAt(i5);
            if (childAt.getVisibility() != 8 && childAt.getTag(R.string.srl_component_falsify) != childAt) {
                RefreshContent refreshContent = this.F;
                if (refreshContent != null && refreshContent.getView() == childAt) {
                    boolean z2 = isInEditMode() && this.f20489interface && m24423break(this.f20482finally) && this.D != null;
                    View view = this.F.getView();
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : c0;
                    int i6 = marginLayoutParams.leftMargin + paddingLeft;
                    int i7 = marginLayoutParams.topMargin + paddingTop;
                    int measuredWidth = view.getMeasuredWidth() + i6;
                    int measuredHeight = view.getMeasuredHeight() + i7;
                    if (z2 && m24424catch(this.f20476continue, this.D)) {
                        int i8 = this.t;
                        i7 += i8;
                        measuredHeight += i8;
                    }
                    view.layout(i6, i7, measuredWidth, measuredHeight);
                }
                RefreshInternal refreshInternal = this.D;
                if (refreshInternal != null && refreshInternal.getView() == childAt) {
                    boolean z3 = isInEditMode() && this.f20489interface && m24423break(this.f20482finally);
                    View view2 = this.D.getView();
                    ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : c0;
                    int i9 = marginLayoutParams2.leftMargin;
                    int i10 = marginLayoutParams2.topMargin + this.x;
                    int measuredWidth2 = view2.getMeasuredWidth() + i9;
                    int measuredHeight2 = view2.getMeasuredHeight() + i10;
                    if (!z3 && this.D.getSpinnerStyle() == y02.f8078new) {
                        int i11 = this.t;
                        i10 -= i11;
                        measuredHeight2 -= i11;
                    }
                    view2.layout(i9, i10, measuredWidth2, measuredHeight2);
                }
                RefreshInternal refreshInternal2 = this.E;
                if (refreshInternal2 != null && refreshInternal2.getView() == childAt) {
                    boolean z4 = isInEditMode() && this.f20489interface && m24423break(this.f20492package);
                    View view3 = this.E.getView();
                    ViewGroup.LayoutParams layoutParams3 = view3.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : c0;
                    y02 spinnerStyle = this.E.getSpinnerStyle();
                    int i12 = marginLayoutParams3.leftMargin;
                    int measuredHeight3 = (marginLayoutParams3.topMargin + getMeasuredHeight()) - this.y;
                    if (this.f && this.g && this.f20507volatile && this.F != null && this.E.getSpinnerStyle() == y02.f8078new && m24423break(this.f20492package)) {
                        View view4 = this.F.getView();
                        ViewGroup.LayoutParams layoutParams4 = view4.getLayoutParams();
                        measuredHeight3 = view4.getMeasuredHeight() + paddingTop + paddingTop + (layoutParams4 instanceof ViewGroup.MarginLayoutParams ? ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin : 0);
                    }
                    if (spinnerStyle == y02.f8077goto) {
                        measuredHeight3 = marginLayoutParams3.topMargin - this.y;
                    } else {
                        if (z4 || spinnerStyle == y02.f8076else || spinnerStyle == y02.f8075case) {
                            iMax = this.v;
                        } else if (spinnerStyle.f8082for && this.f20485if < 0) {
                            iMax = Math.max(m24423break(this.f20492package) ? -this.f20485if : 0, 0);
                        }
                        measuredHeight3 -= iMax;
                    }
                    view3.layout(i12, measuredHeight3, view3.getMeasuredWidth() + i12, view3.getMeasuredHeight() + measuredHeight3);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ec  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int iMax;
        int i3;
        e10 e10Var;
        int i4;
        int i5;
        boolean z = isInEditMode() && this.f20489interface;
        int childCount = super.getChildCount();
        int measuredHeight = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = super.getChildAt(i6);
            if (childAt.getVisibility() != 8 && childAt.getTag(R.string.srl_component_falsify) != childAt) {
                RefreshInternal refreshInternal = this.D;
                if (refreshInternal != null && refreshInternal.getView() == childAt) {
                    View view = this.D.getView();
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : c0;
                    int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, layoutParams.width);
                    int iMax2 = this.t;
                    e10 e10Var2 = this.u;
                    if (e10Var2.f1193do < e10.f1191this.f1193do) {
                        int i7 = layoutParams.height;
                        if (i7 > 0) {
                            int i8 = i7 + marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
                            e10 e10Var3 = e10.f1185else;
                            if (e10Var2.m1581do(e10Var3)) {
                                this.t = layoutParams.height + marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
                                this.u = e10Var3;
                            }
                            iMax2 = i8;
                        } else if (i7 == -2 && (this.D.getSpinnerStyle() != y02.f8077goto || !this.u.f1194if)) {
                            int iMax3 = Math.max((View.MeasureSpec.getSize(i2) - marginLayoutParams.bottomMargin) - marginLayoutParams.topMargin, 0);
                            view.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(iMax3, Integer.MIN_VALUE));
                            int measuredHeight2 = view.getMeasuredHeight();
                            if (measuredHeight2 > 0) {
                                if (measuredHeight2 != iMax3) {
                                    e10 e10Var4 = this.u;
                                    e10 e10Var5 = e10.f1192try;
                                    if (e10Var4.m1581do(e10Var5)) {
                                        this.t = measuredHeight2 + marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
                                        this.u = e10Var5;
                                    }
                                }
                                iMax2 = -1;
                            }
                        }
                    }
                    if (this.D.getSpinnerStyle() == y02.f8077goto) {
                        iMax2 = View.MeasureSpec.getSize(i2);
                        i5 = -1;
                        i4 = 0;
                    } else {
                        if (!this.D.getSpinnerStyle().f8082for || z) {
                            i4 = 0;
                        } else {
                            i4 = 0;
                            iMax2 = Math.max(0, m24423break(this.f20482finally) ? this.f20485if : 0);
                        }
                        i5 = -1;
                    }
                    if (iMax2 != i5) {
                        view.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(Math.max((iMax2 - marginLayoutParams.bottomMargin) - marginLayoutParams.topMargin, i4), 1073741824));
                    }
                    e10 e10Var6 = this.u;
                    if (!e10Var6.f1194if) {
                        this.u = e10Var6.m1583if();
                        RefreshInternal refreshInternal2 = this.D;
                        RefreshKernel refreshKernel = this.I;
                        int i9 = this.t;
                        refreshInternal2.onInitialized(refreshKernel, i9, (int) (this.z * i9));
                    }
                    if (z && m24423break(this.f20482finally)) {
                        measuredHeight += view.getMeasuredHeight();
                    }
                }
                RefreshInternal refreshInternal3 = this.E;
                if (refreshInternal3 != null && refreshInternal3.getView() == childAt) {
                    View view2 = this.E.getView();
                    ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : c0;
                    int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i, marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin, layoutParams2.width);
                    int i10 = this.v;
                    e10 e10Var7 = this.w;
                    if (e10Var7.f1193do >= e10.f1191this.f1193do) {
                        iMax = i10;
                        if (this.E.getSpinnerStyle() == y02.f8077goto) {
                            iMax = View.MeasureSpec.getSize(i2);
                        } else {
                            if (this.E.getSpinnerStyle().f8082for && !z) {
                                i3 = 0;
                                iMax = Math.max(0, m24423break(this.f20492package) ? -this.f20485if : 0);
                            }
                            if (iMax != -1) {
                                view2.measure(childMeasureSpec2, View.MeasureSpec.makeMeasureSpec(Math.max((iMax - marginLayoutParams2.bottomMargin) - marginLayoutParams2.topMargin, i3), 1073741824));
                            }
                            e10Var = this.w;
                            if (!e10Var.f1194if) {
                                this.w = e10Var.m1583if();
                                RefreshInternal refreshInternal4 = this.E;
                                RefreshKernel refreshKernel2 = this.I;
                                int i11 = this.v;
                                refreshInternal4.onInitialized(refreshKernel2, i11, (int) (this.A * i11));
                            }
                            if (z && m24423break(this.f20492package)) {
                                measuredHeight += view2.getMeasuredHeight();
                            }
                        }
                        i3 = 0;
                        if (iMax != -1) {
                        }
                        e10Var = this.w;
                        if (!e10Var.f1194if) {
                        }
                        if (z) {
                            measuredHeight += view2.getMeasuredHeight();
                        }
                    } else {
                        int i12 = layoutParams2.height;
                        if (i12 > 0) {
                            i10 = marginLayoutParams2.bottomMargin + i12 + marginLayoutParams2.topMargin;
                            e10 e10Var8 = e10.f1185else;
                            if (e10Var7.m1581do(e10Var8)) {
                                this.v = layoutParams2.height + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                                this.w = e10Var8;
                            }
                        } else if (i12 == -2 && (this.E.getSpinnerStyle() != y02.f8077goto || !this.w.f1194if)) {
                            int iMax4 = Math.max((View.MeasureSpec.getSize(i2) - marginLayoutParams2.bottomMargin) - marginLayoutParams2.topMargin, 0);
                            view2.measure(childMeasureSpec2, View.MeasureSpec.makeMeasureSpec(iMax4, Integer.MIN_VALUE));
                            int measuredHeight3 = view2.getMeasuredHeight();
                            if (measuredHeight3 > 0) {
                                if (measuredHeight3 != iMax4) {
                                    e10 e10Var9 = this.w;
                                    e10 e10Var10 = e10.f1192try;
                                    if (e10Var9.m1581do(e10Var10)) {
                                        this.v = measuredHeight3 + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                                        this.w = e10Var10;
                                    }
                                }
                                iMax = -1;
                            }
                            if (this.E.getSpinnerStyle() == y02.f8077goto) {
                            }
                            i3 = 0;
                            if (iMax != -1) {
                            }
                            e10Var = this.w;
                            if (!e10Var.f1194if) {
                            }
                            if (z) {
                            }
                        }
                        iMax = i10;
                        if (this.E.getSpinnerStyle() == y02.f8077goto) {
                        }
                        i3 = 0;
                        if (iMax != -1) {
                        }
                        e10Var = this.w;
                        if (!e10Var.f1194if) {
                        }
                        if (z) {
                        }
                    }
                }
                RefreshContent refreshContent = this.F;
                if (refreshContent != null && refreshContent.getView() == childAt) {
                    View view3 = this.F.getView();
                    ViewGroup.LayoutParams layoutParams3 = view3.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : c0;
                    view3.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams3.leftMargin + marginLayoutParams3.rightMargin, layoutParams3.width), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + marginLayoutParams3.topMargin + marginLayoutParams3.bottomMargin + ((z && (this.D != null && m24423break(this.f20482finally) && m24424catch(this.f20476continue, this.D))) ? this.t : 0) + ((z && (this.E != null && m24423break(this.f20492package) && m24424catch(this.f20498strictfp, this.E))) ? this.v : 0), layoutParams3.height));
                    measuredHeight += view3.getMeasuredHeight();
                }
            }
        }
        super.setMeasuredDimension(View.resolveSize(super.getSuggestedMinimumWidth(), i), View.resolveSize(measuredHeight, i2));
        this.f20471break = getMeasuredWidth() / 2.0f;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f, float f2, boolean z) {
        return this.r.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f, float f2) {
        return (this.R && f2 > 0.0f) || m24430super(-f2) || this.r.dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(@NonNull View view, int i, int i2, @NonNull int[] iArr) {
        int i3 = this.o;
        int i4 = 0;
        if (i2 * i3 > 0) {
            if (Math.abs(i2) > Math.abs(this.o)) {
                int i5 = this.o;
                this.o = 0;
                i4 = i5;
            } else {
                this.o -= i2;
                i4 = i2;
            }
            m24425class(this.o);
        } else if (i2 > 0 && this.R) {
            int i6 = i3 - i2;
            this.o = i6;
            m24425class(i6);
            i4 = i2;
        }
        this.r.dispatchNestedPreScroll(i, i2 - i4, iArr, null);
        iArr[1] = iArr[1] + i4;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(@NonNull View view, int i, int i2, int i3, int i4) {
        ScrollBoundaryDecider scrollBoundaryDecider;
        ScrollBoundaryDecider scrollBoundaryDecider2;
        boolean zDispatchNestedScroll = this.r.dispatchNestedScroll(i, i2, i3, i4, this.q);
        int i5 = i4 + this.q[1];
        if ((i5 < 0 && ((this.f20482finally || this.f20505transient) && (this.o != 0 || (scrollBoundaryDecider2 = this.n) == null || scrollBoundaryDecider2.canRefresh(this.F.getView())))) || (i5 > 0 && ((this.f20492package || this.f20505transient) && (this.o != 0 || (scrollBoundaryDecider = this.n) == null || scrollBoundaryDecider.canLoadMore(this.F.getView()))))) {
            qm1 qm1Var = this.K;
            if (qm1Var == qm1.None || qm1Var.isOpening) {
                this.I.setState(i5 > 0 ? qm1.PullUpToLoad : qm1.PullDownToRefresh);
                if (!zDispatchNestedScroll) {
                    ViewParent parent = getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).requestDisallowInterceptTouchEvent(true);
                    }
                }
            }
            int i6 = this.o - i5;
            this.o = i6;
            m24425class(i6);
        }
        if (!this.R || i2 >= 0) {
            return;
        }
        this.R = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i) {
        this.s.onNestedScrollAccepted(view, view2, i);
        this.r.startNestedScroll(i & 2);
        this.o = this.f20485if;
        this.p = true;
        m24431this(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i) {
        return (isEnabled() && isNestedScrollingEnabled() && (i & 2) != 0) && (this.f20505transient || this.f20482finally || this.f20492package);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(@NonNull View view) {
        this.s.onStopNestedScroll(view);
        this.p = false;
        this.o = 0;
        m24428final();
        this.r.stopNestedScroll();
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout resetNoMoreData() {
        return setNoMoreData(false);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setDisableContentWhenLoading(boolean z) {
        this.e = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setDisableContentWhenRefresh(boolean z) {
        this.d = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setDragRate(float f) {
        this.f20474class = f;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableAutoLoadMore(boolean z) {
        this.f20486implements = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableClipFooterWhenFixedBehind(boolean z) {
        this.f20470abstract = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableClipHeaderWhenFixedBehind(boolean z) {
        this.f20493private = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    @Deprecated
    public RefreshLayout setEnableFooterFollowWhenLoadFinished(boolean z) {
        this.f20507volatile = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableFooterFollowWhenNoMoreData(boolean z) {
        this.f20507volatile = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableFooterTranslationContent(boolean z) {
        this.f20498strictfp = z;
        this.j = true;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableHeaderTranslationContent(boolean z) {
        this.f20476continue = z;
        this.i = true;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableLoadMore(boolean z) {
        this.h = true;
        this.f20492package = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableLoadMoreWhenContentNotFull(boolean z) {
        this.b = z;
        RefreshContent refreshContent = this.F;
        if (refreshContent != null) {
            refreshContent.setEnableLoadMoreWhenContentNotFull(z);
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableNestedScroll(boolean z) {
        setNestedScrollingEnabled(z);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableOverScrollBounce(boolean z) {
        this.f20494protected = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableOverScrollDrag(boolean z) {
        this.f20505transient = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnablePureScrollMode(boolean z) {
        this.f20488instanceof = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableRefresh(boolean z) {
        this.f20482finally = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableScrollContentWhenLoaded(boolean z) {
        this.f20501synchronized = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setEnableScrollContentWhenRefreshed(boolean z) {
        this.a = z;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setFooterHeight(float f) {
        int iM3194new = i02.m3194new(f);
        if (iM3194new == this.v) {
            return this;
        }
        e10 e10Var = this.w;
        e10 e10Var2 = e10.f1183class;
        if (e10Var.m1581do(e10Var2)) {
            this.v = iM3194new;
            RefreshInternal refreshInternal = this.E;
            if (refreshInternal != null && this.Q && this.w.f1194if) {
                y02 spinnerStyle = refreshInternal.getSpinnerStyle();
                if (spinnerStyle != y02.f8077goto && !spinnerStyle.f8082for) {
                    View view = this.E.getView();
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : c0;
                    view.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max((this.v - marginLayoutParams.bottomMargin) - marginLayoutParams.topMargin, 0), 1073741824));
                    int i = marginLayoutParams.leftMargin;
                    int measuredHeight = ((marginLayoutParams.topMargin + getMeasuredHeight()) - this.y) - (spinnerStyle != y02.f8078new ? this.v : 0);
                    view.layout(i, measuredHeight, view.getMeasuredWidth() + i, view.getMeasuredHeight() + measuredHeight);
                }
                this.w = e10Var2;
                RefreshInternal refreshInternal2 = this.E;
                RefreshKernel refreshKernel = this.I;
                int i2 = this.v;
                refreshInternal2.onInitialized(refreshKernel, i2, (int) (this.A * i2));
            } else {
                this.w = e10.f1182catch;
            }
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setFooterInsetStart(float f) {
        this.y = i02.m3194new(f);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setFooterMaxDragRate(float f) {
        this.A = f;
        RefreshInternal refreshInternal = this.E;
        if (refreshInternal == null || !this.Q) {
            this.w = this.w.m1582for();
        } else {
            RefreshKernel refreshKernel = this.I;
            int i = this.v;
            refreshInternal.onInitialized(refreshKernel, i, (int) (i * f));
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setFooterTriggerRate(float f) {
        this.C = f;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setHeaderHeight(float f) {
        int iM3194new = i02.m3194new(f);
        if (iM3194new == this.t) {
            return this;
        }
        e10 e10Var = this.u;
        e10 e10Var2 = e10.f1183class;
        if (e10Var.m1581do(e10Var2)) {
            this.t = iM3194new;
            RefreshInternal refreshInternal = this.D;
            if (refreshInternal != null && this.Q && this.u.f1194if) {
                y02 spinnerStyle = refreshInternal.getSpinnerStyle();
                if (spinnerStyle != y02.f8077goto && !spinnerStyle.f8082for) {
                    View view = this.D.getView();
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : c0;
                    view.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max((this.t - marginLayoutParams.bottomMargin) - marginLayoutParams.topMargin, 0), 1073741824));
                    int i = marginLayoutParams.leftMargin;
                    int i2 = (marginLayoutParams.topMargin + this.x) - (spinnerStyle == y02.f8078new ? this.t : 0);
                    view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
                }
                this.u = e10Var2;
                RefreshInternal refreshInternal2 = this.D;
                RefreshKernel refreshKernel = this.I;
                int i3 = this.t;
                refreshInternal2.onInitialized(refreshKernel, i3, (int) (this.z * i3));
            } else {
                this.u = e10.f1182catch;
            }
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setHeaderInsetStart(float f) {
        this.x = i02.m3194new(f);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setHeaderMaxDragRate(float f) {
        this.z = f;
        RefreshInternal refreshInternal = this.D;
        if (refreshInternal == null || !this.Q) {
            this.u = this.u.m1582for();
        } else {
            RefreshKernel refreshKernel = this.I;
            int i = this.t;
            refreshInternal.onInitialized(refreshKernel, i, (int) (f * i));
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setHeaderTriggerRate(float f) {
        this.B = f;
        return this;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.c = z;
        this.r.setNestedScrollingEnabled(z);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setNoMoreData(boolean z) {
        if (this.f36259J == qm1.Loading && z) {
            finishLoadMoreWithNoMoreData();
            return this;
        }
        if (this.f != z) {
            this.f = z;
            RefreshInternal refreshInternal = this.E;
            if (refreshInternal instanceof RefreshFooter) {
                if (((RefreshFooter) refreshInternal).setNoMoreData(z)) {
                    this.g = true;
                    if (this.f && this.f20507volatile && this.f20485if > 0 && this.E.getSpinnerStyle() == y02.f8078new && m24423break(this.f20492package) && m24424catch(this.f20482finally, this.D)) {
                        this.E.getView().setTranslationY(this.f20485if);
                    }
                } else {
                    this.g = false;
                    new RuntimeException("Footer:" + this.E + " NoMoreData is not supported.(不支持NoMoreData，请使用[ClassicsFooter]或者[自定义Footer并实现setNoMoreData方法且返回true])").printStackTrace();
                }
            }
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setOnLoadMoreListener(OnLoadMoreListener onLoadMoreListener) {
        this.l = onLoadMoreListener;
        this.f20492package = this.f20492package || !(this.h || onLoadMoreListener == null);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setOnMultiPurposeListener(OnMultiPurposeListener onMultiPurposeListener) {
        this.m = onMultiPurposeListener;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setOnRefreshListener(OnRefreshListener onRefreshListener) {
        this.k = onRefreshListener;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setOnRefreshLoadMoreListener(OnRefreshLoadMoreListener onRefreshLoadMoreListener) {
        this.k = onRefreshLoadMoreListener;
        this.l = onRefreshLoadMoreListener;
        this.f20492package = this.f20492package || !(this.h || onRefreshLoadMoreListener == null);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setPrimaryColors(@ColorInt int... iArr) {
        RefreshInternal refreshInternal = this.D;
        if (refreshInternal != null) {
            refreshInternal.setPrimaryColors(iArr);
        }
        RefreshInternal refreshInternal2 = this.E;
        if (refreshInternal2 != null) {
            refreshInternal2.setPrimaryColors(iArr);
        }
        this.f20480extends = iArr;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setPrimaryColorsId(@ColorRes int... iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = ContextCompat.getColor(getContext(), iArr[i]);
        }
        setPrimaryColors(iArr2);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setReboundDuration(int i) {
        this.f20472case = i;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setReboundInterpolator(@NonNull Interpolator interpolator) {
        this.f20477default = interpolator;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setRefreshContent(@NonNull View view) {
        return setRefreshContent(view, -1, -1);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setRefreshFooter(@NonNull RefreshFooter refreshFooter) {
        return setRefreshFooter(refreshFooter, -1, -2);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setRefreshHeader(@NonNull RefreshHeader refreshHeader) {
        return setRefreshHeader(refreshHeader, -1, -2);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setScrollBoundaryDecider(ScrollBoundaryDecider scrollBoundaryDecider) {
        this.n = scrollBoundaryDecider;
        RefreshContent refreshContent = this.F;
        if (refreshContent != null) {
            refreshContent.setScrollBoundaryDecider(scrollBoundaryDecider);
        }
        return this;
    }

    public void setStateDirectLoading(boolean z) {
        qm1 qm1Var = this.f36259J;
        qm1 qm1Var2 = qm1.Loading;
        if (qm1Var != qm1Var2) {
            this.L = System.currentTimeMillis();
            this.R = true;
            m24426const(qm1Var2);
            OnLoadMoreListener onLoadMoreListener = this.l;
            if (onLoadMoreListener != null) {
                if (z) {
                    onLoadMoreListener.onLoadMore(this);
                }
            } else if (this.m == null) {
                finishLoadMore(2000);
            }
            RefreshInternal refreshInternal = this.E;
            if (refreshInternal != null) {
                int i = this.v;
                refreshInternal.onStartAnimator(this, i, (int) (this.A * i));
            }
            OnMultiPurposeListener onMultiPurposeListener = this.m;
            if (onMultiPurposeListener == null || !(this.E instanceof RefreshFooter)) {
                return;
            }
            if (z) {
                onMultiPurposeListener.onLoadMore(this);
            }
            OnMultiPurposeListener onMultiPurposeListener2 = this.m;
            RefreshFooter refreshFooter = (RefreshFooter) this.E;
            int i2 = this.v;
            onMultiPurposeListener2.onFooterStartAnimator(refreshFooter, i2, (int) (this.A * i2));
        }
    }

    public void setStateLoading(boolean z) {
        Cif cif = new Cif(z);
        m24426const(qm1.LoadReleased);
        ValueAnimator valueAnimatorAnimSpinner = this.I.animSpinner(-this.v);
        if (valueAnimatorAnimSpinner != null) {
            valueAnimatorAnimSpinner.addListener(cif);
        }
        RefreshInternal refreshInternal = this.E;
        if (refreshInternal != null) {
            int i = this.v;
            refreshInternal.onReleased(this, i, (int) (this.A * i));
        }
        OnMultiPurposeListener onMultiPurposeListener = this.m;
        if (onMultiPurposeListener != null) {
            RefreshInternal refreshInternal2 = this.E;
            if (refreshInternal2 instanceof RefreshFooter) {
                int i2 = this.v;
                onMultiPurposeListener.onFooterReleased((RefreshFooter) refreshInternal2, i2, (int) (this.A * i2));
            }
        }
        if (valueAnimatorAnimSpinner == null) {
            cif.onAnimationEnd(null);
        }
    }

    public void setStateRefreshing(boolean z) {
        Cfor cfor = new Cfor(z);
        m24426const(qm1.RefreshReleased);
        ValueAnimator valueAnimatorAnimSpinner = this.I.animSpinner(this.t);
        if (valueAnimatorAnimSpinner != null) {
            valueAnimatorAnimSpinner.addListener(cfor);
        }
        RefreshInternal refreshInternal = this.D;
        if (refreshInternal != null) {
            int i = this.t;
            refreshInternal.onReleased(this, i, (int) (this.z * i));
        }
        OnMultiPurposeListener onMultiPurposeListener = this.m;
        if (onMultiPurposeListener != null) {
            RefreshInternal refreshInternal2 = this.D;
            if (refreshInternal2 instanceof RefreshHeader) {
                int i2 = this.t;
                onMultiPurposeListener.onHeaderReleased((RefreshHeader) refreshInternal2, i2, (int) (this.z * i2));
            }
        }
        if (valueAnimatorAnimSpinner == null) {
            cfor.onAnimationEnd(null);
        }
    }

    public void setViceState(qm1 qm1Var) {
        qm1 qm1Var2 = this.f36259J;
        if (qm1Var2.isDragging && qm1Var2.isHeader != qm1Var.isHeader) {
            m24426const(qm1.None);
        }
        if (this.K != qm1Var) {
            this.K = qm1Var;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m24430super(float f) {
        if (f == 0.0f) {
            f = this.f20497static;
        }
        if (Build.VERSION.SDK_INT > 27 && this.F != null) {
            getScaleY();
            View view = this.F.getView();
            if (getScaleY() == -1.0f && view.getScaleY() == -1.0f) {
                f = -f;
            }
        }
        if (Math.abs(f) > this.f20495public) {
            int i = this.f20485if;
            if (i * f < 0.0f) {
                qm1 qm1Var = this.f36259J;
                if (qm1Var == qm1.Refreshing || qm1Var == qm1.Loading || (i < 0 && this.f)) {
                    this.U = new Cclass(f).m24432do();
                    return true;
                }
                if (qm1Var.isReleaseToOpening) {
                    return true;
                }
            }
            if ((f < 0.0f && ((this.f20494protected && (this.f20492package || this.f20505transient)) || ((this.f36259J == qm1.Loading && i >= 0) || (this.f20486implements && m24423break(this.f20492package))))) || (f > 0.0f && ((this.f20494protected && this.f20482finally) || this.f20505transient || (this.f36259J == qm1.Refreshing && this.f20485if <= 0)))) {
                this.S = false;
                this.f20500switch.fling(0, 0, 0, (int) (-f), 0, 0, -2147483647, Integer.MAX_VALUE);
                this.f20500switch.computeScrollOffset();
                invalidate();
            }
        }
        return false;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m24431this(int i) {
        if (i == 0) {
            if (this.V != null) {
                qm1 qm1Var = this.f36259J;
                if (qm1Var.isFinishing || qm1Var == qm1.TwoLevelReleased) {
                    return true;
                }
                if (qm1Var == qm1.PullDownCanceled) {
                    this.I.setState(qm1.PullDownToRefresh);
                } else if (qm1Var == qm1.PullUpCanceled) {
                    this.I.setState(qm1.PullUpToLoad);
                }
                this.V.cancel();
                this.V = null;
            }
            this.U = null;
        }
        return this.V != null;
    }

    public SmartRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20506try = TaurusHeader.a;
        this.f20472case = TaurusHeader.a;
        this.f20474class = 0.5f;
        this.f20475const = 'n';
        this.f20503throw = -1;
        this.f20508while = -1;
        this.f20487import = -1;
        this.f20490native = -1;
        this.f20482finally = true;
        this.f20492package = false;
        this.f20493private = true;
        this.f20470abstract = true;
        this.f20476continue = true;
        this.f20498strictfp = true;
        this.f20507volatile = false;
        this.f20489interface = true;
        this.f20494protected = true;
        this.f20505transient = false;
        this.f20486implements = true;
        this.f20488instanceof = false;
        this.f20501synchronized = true;
        this.a = true;
        this.b = true;
        this.c = true;
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = false;
        this.h = false;
        this.i = false;
        this.j = false;
        this.q = new int[2];
        this.r = new NestedScrollingChildHelper(this);
        this.s = new NestedScrollingParentHelper(this);
        e10 e10Var = e10.f1187for;
        this.u = e10Var;
        this.w = e10Var;
        this.z = 2.5f;
        this.A = 2.5f;
        this.B = 1.0f;
        this.C = 1.0f;
        this.I = new Cfinal();
        qm1 qm1Var = qm1.None;
        this.f36259J = qm1Var;
        this.K = qm1Var;
        this.L = 0L;
        this.M = 0;
        this.N = 0;
        this.R = false;
        this.S = false;
        this.T = null;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.H = new Handler();
        this.f20500switch = new Scroller(context);
        this.f20504throws = VelocityTracker.obtain();
        this.f20479else = context.getResources().getDisplayMetrics().heightPixels;
        this.f20477default = new i02(i02.f2582if);
        this.f20478do = viewConfiguration.getScaledTouchSlop();
        this.f20495public = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f20496return = viewConfiguration.getScaledMaximumFlingVelocity();
        this.v = i02.m3194new(60.0f);
        this.t = i02.m3194new(100.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SmartRefreshLayout);
        if (!typedArrayObtainStyledAttributes.hasValue(R.styleable.SmartRefreshLayout_android_clipToPadding)) {
            super.setClipToPadding(false);
        }
        if (!typedArrayObtainStyledAttributes.hasValue(R.styleable.SmartRefreshLayout_android_clipChildren)) {
            super.setClipChildren(false);
        }
        DefaultRefreshInitializer defaultRefreshInitializer = b0;
        if (defaultRefreshInitializer != null) {
            defaultRefreshInitializer.initialize(context, this);
        }
        this.f20474class = typedArrayObtainStyledAttributes.getFloat(R.styleable.SmartRefreshLayout_srlDragRate, this.f20474class);
        this.z = typedArrayObtainStyledAttributes.getFloat(R.styleable.SmartRefreshLayout_srlHeaderMaxDragRate, this.z);
        this.A = typedArrayObtainStyledAttributes.getFloat(R.styleable.SmartRefreshLayout_srlFooterMaxDragRate, this.A);
        this.B = typedArrayObtainStyledAttributes.getFloat(R.styleable.SmartRefreshLayout_srlHeaderTriggerRate, this.B);
        this.C = typedArrayObtainStyledAttributes.getFloat(R.styleable.SmartRefreshLayout_srlFooterTriggerRate, this.C);
        this.f20482finally = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableRefresh, this.f20482finally);
        this.f20472case = typedArrayObtainStyledAttributes.getInt(R.styleable.SmartRefreshLayout_srlReboundDuration, this.f20472case);
        int i = R.styleable.SmartRefreshLayout_srlEnableLoadMore;
        this.f20492package = typedArrayObtainStyledAttributes.getBoolean(i, this.f20492package);
        int i2 = R.styleable.SmartRefreshLayout_srlHeaderHeight;
        this.t = typedArrayObtainStyledAttributes.getDimensionPixelOffset(i2, this.t);
        int i3 = R.styleable.SmartRefreshLayout_srlFooterHeight;
        this.v = typedArrayObtainStyledAttributes.getDimensionPixelOffset(i3, this.v);
        this.x = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.SmartRefreshLayout_srlHeaderInsetStart, this.x);
        this.y = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.SmartRefreshLayout_srlFooterInsetStart, this.y);
        this.d = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlDisableContentWhenRefresh, this.d);
        this.e = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlDisableContentWhenLoading, this.e);
        int i4 = R.styleable.SmartRefreshLayout_srlEnableHeaderTranslationContent;
        this.f20476continue = typedArrayObtainStyledAttributes.getBoolean(i4, this.f20476continue);
        int i5 = R.styleable.SmartRefreshLayout_srlEnableFooterTranslationContent;
        this.f20498strictfp = typedArrayObtainStyledAttributes.getBoolean(i5, this.f20498strictfp);
        this.f20489interface = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnablePreviewInEditMode, this.f20489interface);
        this.f20486implements = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableAutoLoadMore, this.f20486implements);
        this.f20494protected = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableOverScrollBounce, this.f20494protected);
        this.f20488instanceof = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnablePureScrollMode, this.f20488instanceof);
        this.f20501synchronized = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableScrollContentWhenLoaded, this.f20501synchronized);
        this.a = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableScrollContentWhenRefreshed, this.a);
        this.b = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull, this.b);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished, this.f20507volatile);
        this.f20507volatile = z;
        this.f20507volatile = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData, z);
        this.f20493private = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind, this.f20493private);
        this.f20470abstract = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind, this.f20470abstract);
        this.f20505transient = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableOverScrollDrag, this.f20505transient);
        this.f20503throw = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SmartRefreshLayout_srlFixedHeaderViewId, this.f20503throw);
        this.f20508while = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SmartRefreshLayout_srlFixedFooterViewId, this.f20508while);
        this.f20487import = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SmartRefreshLayout_srlHeaderTranslationViewId, this.f20487import);
        this.f20490native = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SmartRefreshLayout_srlFooterTranslationViewId, this.f20490native);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SmartRefreshLayout_srlEnableNestedScrolling, this.c);
        this.c = z2;
        this.r.setNestedScrollingEnabled(z2);
        this.h = this.h || typedArrayObtainStyledAttributes.hasValue(i);
        this.i = this.i || typedArrayObtainStyledAttributes.hasValue(i4);
        this.j = this.j || typedArrayObtainStyledAttributes.hasValue(i5);
        this.u = typedArrayObtainStyledAttributes.hasValue(i2) ? e10.f1191this : this.u;
        this.w = typedArrayObtainStyledAttributes.hasValue(i3) ? e10.f1191this : this.w;
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.SmartRefreshLayout_srlAccentColor, 0);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.SmartRefreshLayout_srlPrimaryColor, 0);
        if (color2 != 0) {
            if (color != 0) {
                this.f20480extends = new int[]{color2, color};
            } else {
                this.f20480extends = new int[]{color2};
            }
        } else if (color != 0) {
            this.f20480extends = new int[]{0, color};
        }
        if (this.f20488instanceof && !this.h && !this.f20492package) {
            this.f20492package = true;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public boolean autoLoadMore(int i, int i2, float f, boolean z) {
        if (this.f36259J != qm1.None || !m24423break(this.f20492package) || this.f) {
            return false;
        }
        Cbreak cbreak = new Cbreak(f, i2, z);
        setViceState(qm1.Loading);
        if (i > 0) {
            this.H.postDelayed(cbreak, i);
            return true;
        }
        cbreak.run();
        return true;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    @Deprecated
    public boolean autoRefresh(int i) {
        int i2 = this.f20472case;
        float f = (this.z / 2.0f) + 0.5f;
        int i3 = this.t;
        float f2 = f * i3 * 1.0f;
        if (i3 == 0) {
            i3 = 1;
        }
        return autoRefresh(i, i2, f2 / i3, false);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishLoadMore(int i) {
        return finishLoadMore(i, true, false);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishRefresh(int i) {
        return finishRefresh(i, true, Boolean.FALSE);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setRefreshContent(@NonNull View view, int i, int i2) {
        RefreshContent refreshContent = this.F;
        if (refreshContent != null) {
            super.removeView(refreshContent.getView());
        }
        super.addView(view, getChildCount(), new Cconst(i, i2));
        this.F = new km1(view);
        if (this.Q) {
            View viewFindViewById = findViewById(this.f20503throw);
            View viewFindViewById2 = findViewById(this.f20508while);
            this.F.setScrollBoundaryDecider(this.n);
            this.F.setEnableLoadMoreWhenContentNotFull(this.b);
            this.F.setUpComponent(this.I, viewFindViewById, viewFindViewById2);
        }
        RefreshInternal refreshInternal = this.D;
        if (refreshInternal != null && refreshInternal.getSpinnerStyle().f8083if) {
            super.bringChildToFront(this.D.getView());
        }
        RefreshInternal refreshInternal2 = this.E;
        if (refreshInternal2 != null && refreshInternal2.getSpinnerStyle().f8083if) {
            super.bringChildToFront(this.E.getView());
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setRefreshFooter(@NonNull RefreshFooter refreshFooter, int i, int i2) {
        RefreshInternal refreshInternal;
        RefreshInternal refreshInternal2 = this.E;
        if (refreshInternal2 != null) {
            super.removeView(refreshInternal2.getView());
        }
        this.E = refreshFooter;
        this.R = false;
        this.N = 0;
        this.g = false;
        this.P = false;
        this.w = this.w.m1582for();
        this.f20492package = !this.h || this.f20492package;
        if (this.E.getSpinnerStyle().f8083if) {
            super.addView(this.E.getView(), getChildCount(), new Cconst(i, i2));
        } else {
            super.addView(this.E.getView(), 0, new Cconst(i, i2));
        }
        int[] iArr = this.f20480extends;
        if (iArr != null && (refreshInternal = this.E) != null) {
            refreshInternal.setPrimaryColors(iArr);
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout setRefreshHeader(@NonNull RefreshHeader refreshHeader, int i, int i2) {
        RefreshInternal refreshInternal;
        RefreshInternal refreshInternal2 = this.D;
        if (refreshInternal2 != null) {
            super.removeView(refreshInternal2.getView());
        }
        this.D = refreshHeader;
        this.M = 0;
        this.O = false;
        this.u = this.u.m1582for();
        if (this.D.getSpinnerStyle().f8083if) {
            super.addView(this.D.getView(), getChildCount(), new Cconst(i, i2));
        } else {
            super.addView(this.D.getView(), 0, new Cconst(i, i2));
        }
        int[] iArr = this.f20480extends;
        if (iArr != null && (refreshInternal = this.D) != null) {
            refreshInternal.setPrimaryColors(iArr);
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public boolean autoRefresh(int i, int i2, float f, boolean z) {
        if (this.f36259J != qm1.None || !m24423break(this.f20482finally)) {
            return false;
        }
        Cthis cthis = new Cthis(f, i2, z);
        setViceState(qm1.Refreshing);
        if (i > 0) {
            this.H.postDelayed(cthis, i);
            return true;
        }
        cthis.run();
        return true;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishLoadMore(boolean z) {
        return finishLoadMore(z ? Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.L))), TaurusHeader.a) << 16 : 0, z, false);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishRefresh(boolean z) {
        if (z) {
            return finishRefresh(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.L))), TaurusHeader.a) << 16, true, Boolean.FALSE);
        }
        return finishRefresh(0, false, null);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishLoadMore(int i, boolean z, boolean z2) {
        int i2 = i >> 16;
        int i3 = (i << 16) >> 16;
        Cgoto cgoto = new Cgoto(i2, z2, z);
        if (i3 > 0) {
            this.H.postDelayed(cgoto, i3);
        } else {
            cgoto.run();
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishRefresh(int i, boolean z, Boolean bool) {
        int i2 = i >> 16;
        int i3 = (i << 16) >> 16;
        Celse celse = new Celse(i2, bool, z);
        if (i3 > 0) {
            this.H.postDelayed(celse, i3);
        } else {
            celse.run();
        }
        return this;
    }

    /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$const, reason: invalid class name */
    public static class Cconst extends ViewGroup.MarginLayoutParams {

        /* renamed from: do, reason: not valid java name */
        public int f20531do;

        /* renamed from: if, reason: not valid java name */
        public y02 f20532if;

        public Cconst(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f20531do = 0;
            this.f20532if = null;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SmartRefreshLayout_Layout);
            this.f20531do = typedArrayObtainStyledAttributes.getColor(R.styleable.SmartRefreshLayout_Layout_layout_srlBackgroundColor, this.f20531do);
            int i = R.styleable.SmartRefreshLayout_Layout_layout_srlSpinnerStyle;
            if (typedArrayObtainStyledAttributes.hasValue(i)) {
                this.f20532if = y02.f8079this[typedArrayObtainStyledAttributes.getInt(i, y02.f8078new.f8081do)];
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public Cconst(int i, int i2) {
            super(i, i2);
            this.f20531do = 0;
            this.f20532if = null;
        }
    }
}
