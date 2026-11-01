package com.scwang.smartrefresh.layout.internal;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.i02;
import android.support.v4.nb1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.scwang.smartrefresh.layout.R;
import com.scwang.smartrefresh.layout.api.RefreshInternal;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalClassics;

/* loaded from: classes2.dex */
public abstract class InternalClassics<T extends InternalClassics> extends InternalAbstract implements RefreshInternal {

    /* renamed from: break, reason: not valid java name */
    public boolean f20658break;

    /* renamed from: case, reason: not valid java name */
    public ImageView f20659case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f20660catch;

    /* renamed from: class, reason: not valid java name */
    public int f20661class;

    /* renamed from: const, reason: not valid java name */
    public int f20662const;

    /* renamed from: else, reason: not valid java name */
    public RefreshKernel f20663else;

    /* renamed from: final, reason: not valid java name */
    public int f20664final;

    /* renamed from: goto, reason: not valid java name */
    public nb1 f20665goto;

    /* renamed from: new, reason: not valid java name */
    public TextView f20666new;

    /* renamed from: super, reason: not valid java name */
    public int f20667super;

    /* renamed from: this, reason: not valid java name */
    public nb1 f20668this;

    /* renamed from: throw, reason: not valid java name */
    public int f20669throw;

    /* renamed from: try, reason: not valid java name */
    public ImageView f20670try;

    /* renamed from: while, reason: not valid java name */
    public static final int f20657while = R.id.srl_classics_title;

    /* renamed from: import, reason: not valid java name */
    public static final int f20655import = R.id.srl_classics_arrow;

    /* renamed from: native, reason: not valid java name */
    public static final int f20656native = R.id.srl_classics_progress;

    public InternalClassics(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20662const = 500;
        this.f20664final = 20;
        this.f20667super = 20;
        this.f20669throw = 0;
        this.f20654if = y02.f8078new;
    }

    /* renamed from: break, reason: not valid java name */
    public T m24465break(int i) {
        this.f20662const = i;
        return (T) m24470do();
    }

    /* renamed from: case, reason: not valid java name */
    public T m24466case(float f) {
        ImageView imageView = this.f20670try;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int iM3194new = i02.m3194new(f);
        layoutParams.width = iM3194new;
        layoutParams.height = iM3194new;
        imageView.setLayoutParams(layoutParams);
        return (T) m24470do();
    }

    /* renamed from: catch, reason: not valid java name */
    public T m24467catch(@ColorInt int i) {
        this.f20660catch = true;
        this.f20661class = i;
        RefreshKernel refreshKernel = this.f20663else;
        if (refreshKernel != null) {
            refreshKernel.requestDrawBackgroundFor(this, i);
        }
        return (T) m24470do();
    }

    /* renamed from: class, reason: not valid java name */
    public T m24468class(@ColorRes int i) {
        m24467catch(ContextCompat.getColor(getContext(), i));
        return (T) m24470do();
    }

    /* renamed from: const, reason: not valid java name */
    public T m24469const(Drawable drawable) {
        this.f20668this = null;
        this.f20659case.setImageDrawable(drawable);
        return (T) m24470do();
    }

    /* renamed from: do, reason: not valid java name */
    public T m24470do() {
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public T m24471else(float f) {
        ImageView imageView = this.f20670try;
        ImageView imageView2 = this.f20659case;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) imageView2.getLayoutParams();
        int iM3194new = i02.m3194new(f);
        marginLayoutParams2.rightMargin = iM3194new;
        marginLayoutParams.rightMargin = iM3194new;
        imageView.setLayoutParams(marginLayoutParams);
        imageView2.setLayoutParams(marginLayoutParams2);
        return (T) m24470do();
    }

    /* renamed from: final, reason: not valid java name */
    public T m24472final(@DrawableRes int i) {
        this.f20668this = null;
        this.f20659case.setImageResource(i);
        return (T) m24470do();
    }

    /* renamed from: for, reason: not valid java name */
    public T m24473for(@ColorRes int i) {
        mo24445if(ContextCompat.getColor(getContext(), i));
        return (T) m24470do();
    }

    /* renamed from: goto, reason: not valid java name */
    public T m24474goto(float f) {
        ImageView imageView = this.f20659case;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int iM3194new = i02.m3194new(f);
        layoutParams.width = iM3194new;
        layoutParams.height = iM3194new;
        imageView.setLayoutParams(layoutParams);
        return (T) m24470do();
    }

    /* renamed from: if */
    public T mo24445if(@ColorInt int i) {
        this.f20658break = true;
        this.f20666new.setTextColor(i);
        nb1 nb1Var = this.f20665goto;
        if (nb1Var != null) {
            nb1Var.m5148do(i);
            this.f20670try.invalidateDrawable(this.f20665goto);
        }
        nb1 nb1Var2 = this.f20668this;
        if (nb1Var2 != null) {
            nb1Var2.m5148do(i);
            this.f20659case.invalidateDrawable(this.f20668this);
        }
        return (T) m24470do();
    }

    /* renamed from: new, reason: not valid java name */
    public T m24475new(Drawable drawable) {
        this.f20665goto = null;
        this.f20670try.setImageDrawable(drawable);
        return (T) m24470do();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT >= 14) {
            ImageView imageView = this.f20670try;
            ImageView imageView2 = this.f20659case;
            imageView.animate().cancel();
            imageView2.animate().cancel();
        }
        Object drawable = this.f20659case.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        ImageView imageView = this.f20659case;
        Object drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        } else {
            imageView.animate().rotation(0.0f).setDuration(0L);
        }
        imageView.setVisibility(8);
        return this.f20662const;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20663else = refreshKernel;
        refreshKernel.requestDrawBackgroundFor(this, this.f20661class);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f20669throw == 0) {
            this.f20664final = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            this.f20667super = paddingBottom;
            if (this.f20664final == 0 || paddingBottom == 0) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int iM3194new = this.f20664final;
                if (iM3194new == 0) {
                    iM3194new = i02.m3194new(20.0f);
                }
                this.f20664final = iM3194new;
                int iM3194new2 = this.f20667super;
                if (iM3194new2 == 0) {
                    iM3194new2 = i02.m3194new(20.0f);
                }
                this.f20667super = iM3194new2;
                setPadding(paddingLeft, this.f20664final, paddingRight, iM3194new2);
            }
            setClipToPadding(false);
        }
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            int size = View.MeasureSpec.getSize(i2);
            int i3 = this.f20669throw;
            if (size < i3) {
                int i4 = (size - i3) / 2;
                setPadding(getPaddingLeft(), i4, getPaddingRight(), i4);
            } else {
                setPadding(getPaddingLeft(), 0, getPaddingRight(), 0);
            }
        } else {
            setPadding(getPaddingLeft(), this.f20664final, getPaddingRight(), this.f20667super);
        }
        super.onMeasure(i, i2);
        if (this.f20669throw == 0) {
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                int measuredHeight = getChildAt(i5).getMeasuredHeight();
                if (this.f20669throw < measuredHeight) {
                    this.f20669throw = measuredHeight;
                }
            }
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        onStartAnimator(refreshLayout, i, i2);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        ImageView imageView = this.f20659case;
        if (imageView.getVisibility() != 0) {
            imageView.setVisibility(0);
            Object drawable = this.f20659case.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).start();
            } else {
                imageView.animate().rotation(36000.0f).setDuration(100000L);
            }
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            if (!(getBackground() instanceof BitmapDrawable) && !this.f20660catch) {
                m24467catch(iArr[0]);
                this.f20660catch = false;
            }
            if (this.f20658break) {
                return;
            }
            if (iArr.length > 1) {
                mo24445if(iArr[1]);
            } else {
                mo24445if(iArr[0] == -1 ? -10066330 : -1);
            }
            this.f20658break = false;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public T m24476super(y02 y02Var) {
        this.f20654if = y02Var;
        return (T) m24470do();
    }

    /* renamed from: this, reason: not valid java name */
    public T m24477this(float f) {
        ImageView imageView = this.f20670try;
        ImageView imageView2 = this.f20659case;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
        int iM3194new = i02.m3194new(f);
        layoutParams2.width = iM3194new;
        layoutParams.width = iM3194new;
        int iM3194new2 = i02.m3194new(f);
        layoutParams2.height = iM3194new2;
        layoutParams.height = iM3194new2;
        imageView.setLayoutParams(layoutParams);
        imageView2.setLayoutParams(layoutParams2);
        return (T) m24470do();
    }

    /* renamed from: throw, reason: not valid java name */
    public T m24478throw(float f) {
        this.f20666new.setTextSize(f);
        RefreshKernel refreshKernel = this.f20663else;
        if (refreshKernel != null) {
            refreshKernel.requestRemeasureHeightFor(this);
        }
        return (T) m24470do();
    }

    /* renamed from: try, reason: not valid java name */
    public T m24479try(@DrawableRes int i) {
        this.f20665goto = null;
        this.f20670try.setImageResource(i);
        return (T) m24470do();
    }
}
