package com.qmuiteam.qmui.widget;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.eh1;
import android.support.v4.kh1;
import android.support.v4.zh1;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleRes;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.qmuiteam.qmui.R;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class QMUICollapsingTopBarLayout extends FrameLayout implements IWindowInsetLayout {

    /* renamed from: switch, reason: not valid java name */
    private static final int f19377switch = 600;

    /* renamed from: break, reason: not valid java name */
    public final eh1 f19378break;

    /* renamed from: case, reason: not valid java name */
    private int f19379case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f19380catch;

    /* renamed from: class, reason: not valid java name */
    private Drawable f19381class;

    /* renamed from: const, reason: not valid java name */
    public Drawable f19382const;

    /* renamed from: do, reason: not valid java name */
    private boolean f19383do;

    /* renamed from: else, reason: not valid java name */
    private int f19384else;

    /* renamed from: final, reason: not valid java name */
    private int f19385final;

    /* renamed from: for, reason: not valid java name */
    private QMUITopBar f19386for;

    /* renamed from: goto, reason: not valid java name */
    private int f19387goto;

    /* renamed from: if, reason: not valid java name */
    private int f19388if;

    /* renamed from: import, reason: not valid java name */
    private int f19389import;

    /* renamed from: native, reason: not valid java name */
    private AppBarLayout.OnOffsetChangedListener f19390native;

    /* renamed from: new, reason: not valid java name */
    private View f19391new;

    /* renamed from: public, reason: not valid java name */
    private ValueAnimator.AnimatorUpdateListener f19392public;

    /* renamed from: return, reason: not valid java name */
    public int f19393return;

    /* renamed from: static, reason: not valid java name */
    public Object f19394static;

    /* renamed from: super, reason: not valid java name */
    private boolean f19395super;

    /* renamed from: this, reason: not valid java name */
    private final Rect f19396this;

    /* renamed from: throw, reason: not valid java name */
    private ValueAnimator f19397throw;

    /* renamed from: try, reason: not valid java name */
    private int f19398try;

    /* renamed from: while, reason: not valid java name */
    private long f19399while;

    /* renamed from: com.qmuiteam.qmui.widget.QMUICollapsingTopBarLayout$do, reason: invalid class name */
    public class Cdo implements OnApplyWindowInsetsListener {
        public Cdo() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return QMUICollapsingTopBarLayout.this.m23731super(windowInsetsCompat);
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUICollapsingTopBarLayout$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            QMUICollapsingTopBarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUICollapsingTopBarLayout$new, reason: invalid class name */
    public class Cnew implements AppBarLayout.OnOffsetChangedListener {
        public Cnew() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            QMUICollapsingTopBarLayout qMUICollapsingTopBarLayout = QMUICollapsingTopBarLayout.this;
            qMUICollapsingTopBarLayout.f19393return = i;
            int windowInsetTop = qMUICollapsingTopBarLayout.getWindowInsetTop();
            int childCount = QMUICollapsingTopBarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = QMUICollapsingTopBarLayout.this.getChildAt(i2);
                Cfor cfor = (Cfor) childAt.getLayoutParams();
                zh1 zh1VarM23724break = QMUICollapsingTopBarLayout.m23724break(childAt);
                int i3 = cfor.f19405do;
                if (i3 == 1) {
                    zh1VarM23724break.m10204catch(kh1.m4405for(-i, 0, QMUICollapsingTopBarLayout.this.m23738this(childAt, false)));
                } else if (i3 == 2) {
                    zh1VarM23724break.m10204catch(Math.round((-i) * cfor.f19406if));
                }
            }
            QMUICollapsingTopBarLayout.this.m23739throw();
            QMUICollapsingTopBarLayout qMUICollapsingTopBarLayout2 = QMUICollapsingTopBarLayout.this;
            if (qMUICollapsingTopBarLayout2.f19382const != null && windowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(qMUICollapsingTopBarLayout2);
            }
            QMUICollapsingTopBarLayout.this.f19378break.c(Math.abs(i) / ((QMUICollapsingTopBarLayout.this.getHeight() - ViewCompat.getMinimumHeight(QMUICollapsingTopBarLayout.this)) - windowInsetTop));
        }
    }

    public QMUICollapsingTopBarLayout(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    public static zh1 m23724break(View view) {
        int i = R.id.qmui_view_offset_helper;
        zh1 zh1Var = (zh1) view.getTag(i);
        if (zh1Var != null) {
            return zh1Var;
        }
        zh1 zh1Var2 = new zh1(view);
        view.setTag(i, zh1Var2);
        return zh1Var2;
    }

    /* renamed from: class, reason: not valid java name */
    private boolean m23725class(View view) {
        View view2 = this.f19391new;
        if (view2 == null || view2 == this) {
            if (view == this.f19386for) {
                return true;
            }
        } else if (view == view2) {
            return true;
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    private void m23727for(int i) {
        m23730new();
        ValueAnimator valueAnimator = this.f19397throw;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f19397throw = valueAnimator2;
            valueAnimator2.setDuration(this.f19399while);
            this.f19397throw.setInterpolator(i > this.f19385final ? com.qmuiteam.qmui.Cdo.f19015for : com.qmuiteam.qmui.Cdo.f19017new);
            this.f19397throw.addUpdateListener(new Cif());
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f19392public;
            if (animatorUpdateListener != null) {
                this.f19397throw.addUpdateListener(animatorUpdateListener);
            }
        } else if (valueAnimator.isRunning()) {
            this.f19397throw.cancel();
        }
        this.f19397throw.setIntValues(this.f19385final, i);
        this.f19397throw.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWindowInsetTop() {
        Object obj = this.f19394static;
        if (obj == null) {
            return 0;
        }
        if (obj instanceof WindowInsetsCompat) {
            return ((WindowInsetsCompat) obj).getSystemWindowInsetTop();
        }
        if (obj instanceof Rect) {
            return ((Rect) obj).top;
        }
        return 0;
    }

    /* renamed from: goto, reason: not valid java name */
    private static int m23728goto(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: new, reason: not valid java name */
    private void m23730new() {
        if (this.f19383do) {
            QMUITopBar qMUITopBar = null;
            this.f19386for = null;
            this.f19391new = null;
            int i = this.f19388if;
            if (i != -1) {
                QMUITopBar qMUITopBar2 = (QMUITopBar) findViewById(i);
                this.f19386for = qMUITopBar2;
                if (qMUITopBar2 != null) {
                    this.f19391new = m23732try(qMUITopBar2);
                }
            }
            if (this.f19386for == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if (childAt instanceof QMUITopBar) {
                        qMUITopBar = (QMUITopBar) childAt;
                        break;
                    }
                    i2++;
                }
                this.f19386for = qMUITopBar;
            }
            this.f19383do = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public WindowInsetsCompat m23731super(WindowInsetsCompat windowInsetsCompat) {
        return (Build.VERSION.SDK_INT < 21 || !applySystemWindowInsets21(windowInsetsCompat)) ? windowInsetsCompat : windowInsetsCompat.consumeSystemWindowInsets();
    }

    /* renamed from: try, reason: not valid java name */
    private View m23732try(View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets19(Rect rect) {
        if (!ViewCompat.getFitsSystemWindows(this)) {
            rect = null;
        }
        if (kh1.m4404else(this.f19394static, rect)) {
            return true;
        }
        this.f19394static = rect;
        requestLayout();
        return true;
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets21(Object obj) {
        if (!ViewCompat.getFitsSystemWindows(this)) {
            obj = null;
        }
        if (kh1.m4404else(this.f19394static, obj)) {
            return true;
        }
        this.f19394static = obj;
        requestLayout();
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cfor generateDefaultLayoutParams() {
        return new Cfor(-1, -1);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m23734catch() {
        return this.f19380catch;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Cfor;
    }

    /* renamed from: const, reason: not valid java name */
    public void m23735const(int i, int i2, int i3, int i4) {
        this.f19398try = i;
        this.f19379case = i2;
        this.f19384else = i3;
        this.f19387goto = i4;
        requestLayout();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int windowInsetTop;
        Drawable drawable;
        super.draw(canvas);
        m23730new();
        if (this.f19386for == null && (drawable = this.f19381class) != null && this.f19385final > 0) {
            drawable.mutate().setAlpha(this.f19385final);
            this.f19381class.draw(canvas);
        }
        if (this.f19380catch) {
            this.f19378break.m1904goto(canvas);
        }
        if (this.f19382const == null || this.f19385final <= 0 || (windowInsetTop = getWindowInsetTop()) <= 0) {
            return;
        }
        this.f19382const.setBounds(0, -this.f19393return, getWidth(), windowInsetTop - this.f19393return);
        this.f19382const.mutate().setAlpha(this.f19385final);
        this.f19382const.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.f19381class == null || this.f19385final <= 0 || !m23725class(view)) {
            z = false;
        } else {
            this.f19381class.mutate().setAlpha(this.f19385final);
            this.f19381class.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j) || z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f19382const;
        boolean zF = false;
        if (drawable != null && drawable.isStateful()) {
            zF = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f19381class;
        if (drawable2 != null && drawable2.isStateful()) {
            zF |= drawable2.setState(drawableState);
        }
        eh1 eh1Var = this.f19378break;
        if (eh1Var != null) {
            zF |= eh1Var.f(drawableState);
        }
        if (zF) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Cfor(layoutParams);
    }

    /* renamed from: final, reason: not valid java name */
    public void m23737final(boolean z, boolean z2) {
        if (this.f19395super != z) {
            if (z2) {
                m23727for(z ? 255 : 0);
            } else {
                setScrimAlpha(z ? 255 : 0);
            }
            this.f19395super = z;
        }
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        return applySystemWindowInsets19(rect);
    }

    public int getCollapsedTitleGravity() {
        return this.f19378break.m1899catch();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.f19378break.m1901const();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.f19381class;
    }

    public int getExpandedTitleGravity() {
        return this.f19378break.m1920while();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f19387goto;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f19384else;
    }

    public int getExpandedTitleMarginStart() {
        return this.f19398try;
    }

    public int getExpandedTitleMarginTop() {
        return this.f19379case;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.f19378break.m1909native();
    }

    public int getScrimAlpha() {
        return this.f19385final;
    }

    public long getScrimAnimationDuration() {
        return this.f19399while;
    }

    public int getScrimVisibleHeightTrigger() throws NoSuchFieldException {
        int i = this.f19389import;
        if (i >= 0) {
            return i;
        }
        int windowInsetTop = getWindowInsetTop();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + windowInsetTop, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.f19382const;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.f19380catch) {
            return this.f19378break.m1913return();
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object parent = getParent();
        if (parent instanceof AppBarLayout) {
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows((View) parent));
            if (this.f19390native == null) {
                this.f19390native = new Cnew();
            }
            ((AppBarLayout) parent).addOnOffsetChangedListener(this.f19390native);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.OnOffsetChangedListener onOffsetChangedListener = this.f19390native;
        if (onOffsetChangedListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(onOffsetChangedListener);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f19394static != null) {
            int windowInsetTop = getWindowInsetTop();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < windowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, windowInsetTop);
                }
            }
        }
        if (this.f19380catch) {
            View view = this.f19391new;
            if (view == null) {
                view = this.f19386for;
            }
            int iM23738this = m23738this(view, true);
            com.qmuiteam.qmui.util.Cfor.m23630catch(this, this.f19386for, this.f19396this);
            Rect titleContainerRect = this.f19386for.getTitleContainerRect();
            eh1 eh1Var = this.f19378break;
            Rect rect = this.f19396this;
            int i6 = rect.left;
            int i7 = titleContainerRect.left + i6;
            int i8 = rect.top;
            eh1Var.m1897abstract(i7, i8 + iM23738this + titleContainerRect.top, i6 + titleContainerRect.right, i8 + iM23738this + titleContainerRect.bottom);
            this.f19378break.m1918transient(this.f19398try, this.f19396this.top + this.f19379case, (i3 - i) - this.f19384else, (i4 - i2) - this.f19387goto);
            this.f19378break.m1910package();
        }
        int childCount2 = getChildCount();
        for (int i9 = 0; i9 < childCount2; i9++) {
            m23724break(getChildAt(i9)).m10207else();
        }
        if (this.f19386for != null) {
            if (this.f19380catch && TextUtils.isEmpty(this.f19378break.m1913return())) {
                this.f19378break.g(this.f19386for.getTitle());
            }
            View view2 = this.f19391new;
            if (view2 == null || view2 == this) {
                setMinimumHeight(m23728goto(this.f19386for));
            } else {
                setMinimumHeight(m23728goto(view2));
            }
        }
        m23739throw();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m23730new();
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f19381class;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.f19378break.m1919volatile(i);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i) {
        this.f19378break.m1902continue(i);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.f19378break.m1911protected(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f19381class;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f19381class = drawableMutate;
            if (drawableMutate != null) {
                drawableMutate.setBounds(0, 0, getWidth(), getHeight());
                this.f19381class.setCallback(this);
                this.f19381class.setAlpha(this.f19385final);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(@DrawableRes int i) {
        setContentScrim(ContextCompat.getDrawable(getContext(), i));
    }

    public void setExpandedTitleColor(@ColorInt int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.f19378break.m1915synchronized(i);
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f19387goto = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f19384else = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f19398try = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f19379case = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i) {
        this.f19378break.m1905implements(i);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f19378break.m1907instanceof(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.f19378break.b(typeface);
    }

    public void setScrimAlpha(int i) {
        QMUITopBar qMUITopBar;
        if (i != this.f19385final) {
            if (this.f19381class != null && (qMUITopBar = this.f19386for) != null) {
                ViewCompat.postInvalidateOnAnimation(qMUITopBar);
            }
            this.f19385final = i;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j) {
        this.f19399while = j;
    }

    public void setScrimUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener2 = this.f19392public;
        if (animatorUpdateListener2 != animatorUpdateListener) {
            ValueAnimator valueAnimator = this.f19397throw;
            if (valueAnimator == null) {
                this.f19392public = animatorUpdateListener;
                return;
            }
            if (animatorUpdateListener2 != null) {
                valueAnimator.removeUpdateListener(animatorUpdateListener2);
            }
            this.f19392public = animatorUpdateListener;
            if (animatorUpdateListener != null) {
                this.f19397throw.addUpdateListener(animatorUpdateListener);
            }
        }
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i) {
        if (this.f19389import != i) {
            this.f19389import = i;
            m23739throw();
        }
    }

    public void setScrimsShown(boolean z) {
        m23737final(z, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.f19382const;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f19382const = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f19382const.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f19382const, ViewCompat.getLayoutDirection(this));
                this.f19382const.setVisible(getVisibility() == 0, false);
                this.f19382const.setCallback(this);
                this.f19382const.setAlpha(this.f19385final);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(@DrawableRes int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarScrim(ContextCompat.getDrawable(getContext(), i));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.f19378break.g(charSequence);
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f19380catch) {
            this.f19380catch = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f19382const;
        if (drawable != null && drawable.isVisible() != z) {
            this.f19382const.setVisible(z, false);
        }
        Drawable drawable2 = this.f19381class;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f19381class.setVisible(z, false);
    }

    /* renamed from: this, reason: not valid java name */
    public final int m23738this(View view, boolean z) {
        int top = view.getTop();
        if (!z) {
            top = m23724break(view).m10210if();
        }
        return ((getHeight() - top) - view.getHeight()) - ((FrameLayout.LayoutParams) ((Cfor) view.getLayoutParams())).bottomMargin;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m23739throw() {
        if (this.f19381class == null && this.f19382const == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f19393return < getScrimVisibleHeightTrigger());
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f19381class || drawable == this.f19382const;
    }

    public QMUICollapsingTopBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f19378break.m1914strictfp(colorStateList);
    }

    public QMUICollapsingTopBarLayout(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super(context, attributeSet, i);
        this.f19383do = true;
        this.f19396this = new Rect();
        this.f19389import = -1;
        eh1 eh1Var = new eh1(this);
        this.f19378break = eh1Var;
        eh1Var.h(com.qmuiteam.qmui.Cdo.f19018try);
        com.qmuiteam.qmui.util.Cfor.m23642if(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUICollapsingTopBarLayout, i, 0);
        eh1Var.m1915synchronized(typedArrayObtainStyledAttributes.getInt(R.styleable.QMUICollapsingTopBarLayout_qmui_expandedTitleGravity, 81));
        eh1Var.m1919volatile(typedArrayObtainStyledAttributes.getInt(R.styleable.QMUICollapsingTopBarLayout_qmui_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUICollapsingTopBarLayout_qmui_expandedTitleMargin, 0);
        this.f19387goto = dimensionPixelSize;
        this.f19384else = dimensionPixelSize;
        this.f19379case = dimensionPixelSize;
        this.f19398try = dimensionPixelSize;
        int i2 = R.styleable.QMUICollapsingTopBarLayout_qmui_expandedTitleMarginStart;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            this.f19398try = typedArrayObtainStyledAttributes.getDimensionPixelSize(i2, 0);
        }
        int i3 = R.styleable.QMUICollapsingTopBarLayout_qmui_expandedTitleMarginEnd;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            this.f19384else = typedArrayObtainStyledAttributes.getDimensionPixelSize(i3, 0);
        }
        int i4 = R.styleable.QMUICollapsingTopBarLayout_qmui_expandedTitleMarginTop;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            this.f19379case = typedArrayObtainStyledAttributes.getDimensionPixelSize(i4, 0);
        }
        int i5 = R.styleable.QMUICollapsingTopBarLayout_qmui_expandedTitleMarginBottom;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            this.f19387goto = typedArrayObtainStyledAttributes.getDimensionPixelSize(i5, 0);
        }
        this.f19380catch = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUICollapsingTopBarLayout_qmui_titleEnabled, true);
        setTitle(typedArrayObtainStyledAttributes.getText(R.styleable.QMUICollapsingTopBarLayout_qmui_title));
        eh1Var.m1905implements(R.style.QMUI_CollapsingTopBarLayoutExpanded);
        eh1Var.m1902continue(R.style.QMUI_CollapsingTopBarLayoutCollapsed);
        int i6 = R.styleable.QMUICollapsingTopBarLayout_qmui_expandedTitleTextAppearance;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            eh1Var.m1905implements(typedArrayObtainStyledAttributes.getResourceId(i6, 0));
        }
        int i7 = R.styleable.QMUICollapsingTopBarLayout_qmui_collapsedTitleTextAppearance;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            eh1Var.m1902continue(typedArrayObtainStyledAttributes.getResourceId(i7, 0));
        }
        this.f19389import = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUICollapsingTopBarLayout_qmui_scrimVisibleHeightTrigger, -1);
        this.f19399while = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUICollapsingTopBarLayout_qmui_scrimAnimationDuration, 600);
        setContentScrim(typedArrayObtainStyledAttributes.getDrawable(R.styleable.QMUICollapsingTopBarLayout_qmui_contentScrim));
        setStatusBarScrim(typedArrayObtainStyledAttributes.getDrawable(R.styleable.QMUICollapsingTopBarLayout_qmui_statusBarScrim));
        this.f19388if = typedArrayObtainStyledAttributes.getResourceId(R.styleable.QMUICollapsingTopBarLayout_qmui_topBarId, -1);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new Cdo());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Cfor(getContext(), attributeSet);
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUICollapsingTopBarLayout$for, reason: invalid class name */
    public static class Cfor extends FrameLayout.LayoutParams {

        /* renamed from: case, reason: not valid java name */
        public static final int f19401case = 2;

        /* renamed from: for, reason: not valid java name */
        private static final float f19402for = 0.5f;

        /* renamed from: new, reason: not valid java name */
        public static final int f19403new = 0;

        /* renamed from: try, reason: not valid java name */
        public static final int f19404try = 1;

        /* renamed from: do, reason: not valid java name */
        public int f19405do;

        /* renamed from: if, reason: not valid java name */
        public float f19406if;

        public Cfor(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f19405do = 0;
            this.f19406if = 0.5f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUICollapsingTopBarLayout_Layout);
            this.f19405do = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUICollapsingTopBarLayout_Layout_qmui_layout_collapseMode, 0);
            m23743new(typedArrayObtainStyledAttributes.getFloat(R.styleable.QMUICollapsingTopBarLayout_Layout_qmui_layout_collapseParallaxMultiplier, 0.5f));
            typedArrayObtainStyledAttributes.recycle();
        }

        /* renamed from: do, reason: not valid java name */
        public int m23740do() {
            return this.f19405do;
        }

        /* renamed from: for, reason: not valid java name */
        public void m23741for(int i) {
            this.f19405do = i;
        }

        /* renamed from: if, reason: not valid java name */
        public float m23742if() {
            return this.f19406if;
        }

        /* renamed from: new, reason: not valid java name */
        public void m23743new(float f) {
            this.f19406if = f;
        }

        public Cfor(int i, int i2) {
            super(i, i2);
            this.f19405do = 0;
            this.f19406if = 0.5f;
        }

        public Cfor(int i, int i2, int i3) {
            super(i, i2, i3);
            this.f19405do = 0;
            this.f19406if = 0.5f;
        }

        public Cfor(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19405do = 0;
            this.f19406if = 0.5f;
        }

        public Cfor(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f19405do = 0;
            this.f19406if = 0.5f;
        }

        @RequiresApi(19)
        @TargetApi(19)
        public Cfor(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19405do = 0;
            this.f19406if = 0.5f;
        }
    }
}
