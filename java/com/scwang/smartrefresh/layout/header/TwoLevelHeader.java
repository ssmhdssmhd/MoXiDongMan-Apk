package com.scwang.smartrefresh.layout.header;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.scwang.smartrefresh.layout.R;
import com.scwang.smartrefresh.layout.api.OnTwoLevelListener;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshInternal;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

/* loaded from: classes2.dex */
public class TwoLevelHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: break, reason: not valid java name */
    public boolean f20639break;

    /* renamed from: case, reason: not valid java name */
    public float f20640case;

    /* renamed from: catch, reason: not valid java name */
    public int f20641catch;

    /* renamed from: class, reason: not valid java name */
    public int f20642class;

    /* renamed from: const, reason: not valid java name */
    public RefreshInternal f20643const;

    /* renamed from: else, reason: not valid java name */
    public float f20644else;

    /* renamed from: final, reason: not valid java name */
    public RefreshKernel f20645final;

    /* renamed from: goto, reason: not valid java name */
    public float f20646goto;

    /* renamed from: new, reason: not valid java name */
    public int f20647new;

    /* renamed from: super, reason: not valid java name */
    public OnTwoLevelListener f20648super;

    /* renamed from: this, reason: not valid java name */
    public boolean f20649this;

    /* renamed from: try, reason: not valid java name */
    public float f20650try;

    /* renamed from: com.scwang.smartrefresh.layout.header.TwoLevelHeader$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20651do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20651do = iArr;
            try {
                iArr[qm1.TwoLevelReleased.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20651do[qm1.TwoLevel.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20651do[qm1.TwoLevelFinish.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20651do[qm1.PullDownToRefresh.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public TwoLevelHeader(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    public TwoLevelHeader m24453break(RefreshHeader refreshHeader) {
        return m24455catch(refreshHeader, -1, -2);
    }

    /* renamed from: case, reason: not valid java name */
    public TwoLevelHeader m24454case(int i) {
        this.f20641catch = i;
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public TwoLevelHeader m24455catch(RefreshHeader refreshHeader, int i, int i2) {
        if (refreshHeader != null) {
            RefreshInternal refreshInternal = this.f20643const;
            if (refreshInternal != null) {
                removeView(refreshInternal.getView());
            }
            if (refreshHeader.getSpinnerStyle() == y02.f8075case) {
                addView(refreshHeader.getView(), 0, new RelativeLayout.LayoutParams(i, i2));
            } else {
                addView(refreshHeader.getView(), getChildCount(), new RelativeLayout.LayoutParams(i, i2));
            }
            this.f20643const = refreshHeader;
            this.f20653for = refreshHeader;
        }
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public TwoLevelHeader m24456class(float f) {
        this.f20646goto = f;
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public TwoLevelHeader m24457do() {
        RefreshKernel refreshKernel = this.f20645final;
        if (refreshKernel != null) {
            refreshKernel.finishTwoLevel();
        }
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public TwoLevelHeader m24458else(float f) {
        this.f20644else = f;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract
    public boolean equals(Object obj) {
        RefreshInternal refreshInternal = this.f20643const;
        return (refreshInternal != null && refreshInternal.equals(obj)) || super.equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public TwoLevelHeader m24459for(boolean z) {
        RefreshKernel refreshKernel = this.f20645final;
        if (refreshKernel != null) {
            OnTwoLevelListener onTwoLevelListener = this.f20648super;
            refreshKernel.startTwoLevel(!z || onTwoLevelListener == null || onTwoLevelListener.onTwoLevel(refreshKernel.getRefreshLayout()));
        }
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public TwoLevelHeader m24460goto(float f) {
        if (this.f20640case != f) {
            this.f20640case = f;
            RefreshKernel refreshKernel = this.f20645final;
            if (refreshKernel != null) {
                this.f20642class = 0;
                refreshKernel.getRefreshLayout().setHeaderMaxDragRate(this.f20640case);
            }
        }
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public void m24461if(int i) {
        RefreshInternal refreshInternal = this.f20643const;
        if (this.f20647new == i || refreshInternal == null) {
            return;
        }
        this.f20647new = i;
        y02 spinnerStyle = refreshInternal.getSpinnerStyle();
        if (spinnerStyle == y02.f8078new) {
            refreshInternal.getView().setTranslationY(i);
        } else if (spinnerStyle.f8082for) {
            View view = refreshInternal.getView();
            view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getTop() + Math.max(0, i));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public TwoLevelHeader m24462new(boolean z) {
        RefreshKernel refreshKernel = this.f20645final;
        this.f20639break = z;
        if (refreshKernel != null) {
            refreshKernel.requestNeedTouchEventFor(this, !z);
        }
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f20654if = y02.f8077goto;
        if (this.f20643const == null) {
            m24453break(new ClassicsHeader(getContext()));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f20654if = y02.f8075case;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            if (childAt instanceof RefreshHeader) {
                this.f20643const = (RefreshHeader) childAt;
                this.f20653for = (RefreshInternal) childAt;
                bringChildToFront(childAt);
                break;
            }
            i++;
        }
        if (this.f20643const == null) {
            m24453break(new ClassicsHeader(getContext()));
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        RefreshInternal refreshInternal = this.f20643const;
        if (refreshInternal == null) {
            return;
        }
        if (((i2 + i) * 1.0f) / i != this.f20640case && this.f20642class == 0) {
            this.f20642class = i;
            this.f20643const = null;
            refreshKernel.getRefreshLayout().setHeaderMaxDragRate(this.f20640case);
            this.f20643const = refreshInternal;
        }
        if (this.f20645final == null && refreshInternal.getSpinnerStyle() == y02.f8078new && !isInEditMode()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) refreshInternal.getView().getLayoutParams();
            marginLayoutParams.topMargin -= i;
            refreshInternal.getView().setLayoutParams(marginLayoutParams);
        }
        this.f20642class = i;
        this.f20645final = refreshKernel;
        refreshKernel.requestFloorDuration(this.f20641catch);
        refreshKernel.requestNeedTouchEventFor(this, !this.f20639break);
        refreshInternal.onInitialized(refreshKernel, i, i2);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        RefreshInternal refreshInternal = this.f20643const;
        if (refreshInternal == null) {
            super.onMeasure(i, i2);
        } else {
            if (View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
                super.onMeasure(i, i2);
                return;
            }
            refreshInternal.getView().measure(i, i2);
            super.setMeasuredDimension(View.resolveSize(super.getSuggestedMinimumWidth(), i), refreshInternal.getView().getMeasuredHeight());
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        m24461if(i);
        RefreshInternal refreshInternal = this.f20643const;
        RefreshKernel refreshKernel = this.f20645final;
        if (refreshInternal != null) {
            refreshInternal.onMoving(z, f, i, i2, i3);
        }
        if (z) {
            float f2 = this.f20650try;
            float f3 = this.f20644else;
            if (f2 < f3 && f >= f3 && this.f20649this) {
                refreshKernel.setState(qm1.ReleaseToTwoLevel);
            } else if (f2 >= f3 && f < this.f20646goto) {
                refreshKernel.setState(qm1.PullDownToRefresh);
            } else if (f2 >= f3 && f < f3) {
                refreshKernel.setState(qm1.ReleaseToRefresh);
            }
            this.f20650try = f;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        RefreshInternal refreshInternal = this.f20643const;
        if (refreshInternal != null) {
            refreshInternal.onStateChanged(refreshLayout, qm1Var, qm1Var2);
            int i = Cdo.f20651do[qm1Var2.ordinal()];
            boolean z = true;
            if (i != 1) {
                if (i == 3) {
                    if (refreshInternal.getView() != this) {
                        refreshInternal.getView().animate().alpha(1.0f).setDuration(this.f20641catch / 2);
                        return;
                    }
                    return;
                } else {
                    if (i == 4 && refreshInternal.getView().getAlpha() == 0.0f && refreshInternal.getView() != this) {
                        refreshInternal.getView().setAlpha(1.0f);
                        return;
                    }
                    return;
                }
            }
            if (refreshInternal.getView() != this) {
                refreshInternal.getView().animate().alpha(0.0f).setDuration(this.f20641catch / 2);
            }
            RefreshKernel refreshKernel = this.f20645final;
            if (refreshKernel != null) {
                OnTwoLevelListener onTwoLevelListener = this.f20648super;
                if (onTwoLevelListener != null && !onTwoLevelListener.onTwoLevel(refreshLayout)) {
                    z = false;
                }
                refreshKernel.startTwoLevel(z);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public TwoLevelHeader m24463this(OnTwoLevelListener onTwoLevelListener) {
        this.f20648super = onTwoLevelListener;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public TwoLevelHeader m24464try(boolean z) {
        this.f20649this = z;
        return this;
    }

    public TwoLevelHeader(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20650try = 0.0f;
        this.f20640case = 2.5f;
        this.f20644else = 1.9f;
        this.f20646goto = 1.0f;
        this.f20649this = true;
        this.f20639break = true;
        this.f20641catch = 1000;
        this.f20654if = y02.f8075case;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TwoLevelHeader);
        this.f20640case = typedArrayObtainStyledAttributes.getFloat(R.styleable.TwoLevelHeader_srlMaxRage, this.f20640case);
        this.f20644else = typedArrayObtainStyledAttributes.getFloat(R.styleable.TwoLevelHeader_srlFloorRage, this.f20644else);
        this.f20646goto = typedArrayObtainStyledAttributes.getFloat(R.styleable.TwoLevelHeader_srlRefreshRage, this.f20646goto);
        this.f20641catch = typedArrayObtainStyledAttributes.getInt(R.styleable.TwoLevelHeader_srlFloorDuration, this.f20641catch);
        this.f20649this = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TwoLevelHeader_srlEnableTwoLevel, this.f20649this);
        this.f20639break = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TwoLevelHeader_srlEnablePullToCloseTwoLevel, this.f20639break);
        typedArrayObtainStyledAttributes.recycle();
    }
}
