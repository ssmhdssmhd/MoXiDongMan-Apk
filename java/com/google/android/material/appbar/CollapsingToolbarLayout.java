package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.iz;
import android.support.v4.k62;
import android.support.v4.r60;
import android.support.v4.vx0;
import android.support.v4.w1;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.badge.BadgeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: abstract, reason: not valid java name */
    private static final int f11209abstract = R.style.Widget_Design_CollapsingToolbar;

    /* renamed from: continue, reason: not valid java name */
    private static final int f11210continue = 600;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f11211strictfp = 0;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f11212volatile = 1;

    /* renamed from: break, reason: not valid java name */
    private final Rect f11213break;

    /* renamed from: case, reason: not valid java name */
    private int f11214case;

    /* renamed from: catch, reason: not valid java name */
    @NonNull
    public final com.google.android.material.internal.Cdo f11215catch;

    /* renamed from: class, reason: not valid java name */
    @NonNull
    public final r60 f11216class;

    /* renamed from: const, reason: not valid java name */
    private boolean f11217const;

    /* renamed from: default, reason: not valid java name */
    @Nullable
    public WindowInsetsCompat f11218default;

    /* renamed from: do, reason: not valid java name */
    private boolean f11219do;

    /* renamed from: else, reason: not valid java name */
    private int f11220else;

    /* renamed from: extends, reason: not valid java name */
    private int f11221extends;

    /* renamed from: final, reason: not valid java name */
    private boolean f11222final;

    /* renamed from: finally, reason: not valid java name */
    private boolean f11223finally;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private ViewGroup f11224for;

    /* renamed from: goto, reason: not valid java name */
    private int f11225goto;

    /* renamed from: if, reason: not valid java name */
    private int f11226if;

    /* renamed from: import, reason: not valid java name */
    private boolean f11227import;

    /* renamed from: native, reason: not valid java name */
    private ValueAnimator f11228native;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private View f11229new;

    /* renamed from: package, reason: not valid java name */
    private int f11230package;

    /* renamed from: private, reason: not valid java name */
    private boolean f11231private;

    /* renamed from: public, reason: not valid java name */
    private long f11232public;

    /* renamed from: return, reason: not valid java name */
    private int f11233return;

    /* renamed from: static, reason: not valid java name */
    private AppBarLayout.OnOffsetChangedListener f11234static;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private Drawable f11235super;

    /* renamed from: switch, reason: not valid java name */
    public int f11236switch;

    /* renamed from: this, reason: not valid java name */
    private int f11237this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    public Drawable f11238throw;

    /* renamed from: throws, reason: not valid java name */
    private int f11239throws;

    /* renamed from: try, reason: not valid java name */
    private View f11240try;

    /* renamed from: while, reason: not valid java name */
    private int f11241while;

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$do, reason: invalid class name */
    public class Cdo implements OnApplyWindowInsetsListener {
        public Cdo() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return CollapsingToolbarLayout.this.m12659import(windowInsetsCompat);
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$new, reason: invalid class name */
    public class Cnew implements AppBarLayout.OnOffsetChangedListener {
        public Cnew() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f11236switch = i;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.f11218default;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                Cfor cfor = (Cfor) childAt.getLayoutParams();
                com.google.android.material.appbar.Cnew cnewM12636break = CollapsingToolbarLayout.m12636break(childAt);
                int i3 = cfor.f11247do;
                if (i3 == 1) {
                    cnewM12636break.m12683catch(MathUtils.clamp(-i, 0, CollapsingToolbarLayout.this.m12658goto(childAt)));
                } else if (i3 == 2) {
                    cnewM12636break.m12683catch(Math.round((-i) * cfor.f11248if));
                }
            }
            CollapsingToolbarLayout.this.m12657extends();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.f11238throw != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(collapsingToolbarLayout2);
            }
            int height = (CollapsingToolbarLayout.this.getHeight() - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop;
            float f = height;
            CollapsingToolbarLayout.this.f11215catch.J(Math.min(1.0f, (r0 - CollapsingToolbarLayout.this.getScrimVisibleHeightTrigger()) / f));
            CollapsingToolbarLayout collapsingToolbarLayout3 = CollapsingToolbarLayout.this;
            collapsingToolbarLayout3.f11215catch.x(collapsingToolbarLayout3.f11236switch + height);
            CollapsingToolbarLayout.this.f11215catch.H(Math.abs(i) / f);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$try, reason: invalid class name */
    public @interface Ctry {
    }

    public CollapsingToolbarLayout(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public static com.google.android.material.appbar.Cnew m12636break(@NonNull View view) {
        int i = R.id.view_offset_helper;
        com.google.android.material.appbar.Cnew cnew = (com.google.android.material.appbar.Cnew) view.getTag(i);
        if (cnew != null) {
            return cnew;
        }
        com.google.android.material.appbar.Cnew cnew2 = new com.google.android.material.appbar.Cnew(view);
        view.setTag(i, cnew2);
        return cnew2;
    }

    /* renamed from: default, reason: not valid java name */
    private void m12637default() {
        View view;
        if (!this.f11217const && (view = this.f11240try) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f11240try);
            }
        }
        if (!this.f11217const || this.f11224for == null) {
            return;
        }
        if (this.f11240try == null) {
            this.f11240try = new View(getContext());
        }
        if (this.f11240try.getParent() == null) {
            this.f11224for.addView(this.f11240try, -1, -1);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m12638do(int i) {
        m12642for();
        ValueAnimator valueAnimator = this.f11228native;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f11228native = valueAnimator2;
            valueAnimator2.setDuration(this.f11232public);
            this.f11228native.setInterpolator(i > this.f11241while ? w1.f7370for : w1.f7372new);
            this.f11228native.addUpdateListener(new Cif());
        } else if (valueAnimator.isRunning()) {
            this.f11228native.cancel();
        }
        this.f11228native.setIntValues(this.f11241while, i);
        this.f11228native.start();
    }

    /* renamed from: else, reason: not valid java name */
    private static int m12639else(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getMeasuredHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: final, reason: not valid java name */
    private boolean m12640final() {
        return this.f11239throws == 1;
    }

    /* renamed from: finally, reason: not valid java name */
    private void m12641finally(int i, int i2, int i3, int i4, boolean z) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        View view;
        if (!this.f11217const || (view = this.f11240try) == null) {
            return;
        }
        boolean z2 = ViewCompat.isAttachedToWindow(view) && this.f11240try.getVisibility() == 0;
        this.f11222final = z2;
        if (z2 || z) {
            boolean z3 = ViewCompat.getLayoutDirection(this) == 1;
            m12646return(z3);
            this.f11215catch.y(z3 ? this.f11225goto : this.f11214case, this.f11213break.top + this.f11220else, (i3 - i) - (z3 ? this.f11214case : this.f11225goto), (i4 - i2) - this.f11237this);
            this.f11215catch.m(z);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m12642for() {
        if (this.f11219do) {
            ViewGroup viewGroup = null;
            this.f11224for = null;
            this.f11229new = null;
            int i = this.f11226if;
            if (i != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
                this.f11224for = viewGroup2;
                if (viewGroup2 != null) {
                    this.f11229new = m12644new(viewGroup2);
                }
            }
            if (this.f11224for == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if (m12650throw(childAt)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                    i2++;
                }
                this.f11224for = viewGroup;
            }
            m12637default();
            this.f11219do = false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m12643if(AppBarLayout appBarLayout) {
        if (m12640final()) {
            appBarLayout.setLiftOnScroll(false);
        }
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    private View m12644new(@NonNull View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    /* renamed from: package, reason: not valid java name */
    private void m12645package() {
        if (this.f11224for != null && this.f11217const && TextUtils.isEmpty(this.f11215catch.a())) {
            setTitle(m12649this(this.f11224for));
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m12646return(boolean z) {
        int titleMarginBottom;
        int titleMarginEnd;
        int titleMarginTop;
        View view = this.f11229new;
        if (view == null) {
            view = this.f11224for;
        }
        int iM12658goto = m12658goto(view);
        iz.m3636do(this, this.f11240try, this.f11213break);
        ViewGroup viewGroup = this.f11224for;
        int titleMarginStart = 0;
        if (viewGroup instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup;
            titleMarginStart = toolbar.getTitleMarginStart();
            titleMarginEnd = toolbar.getTitleMarginEnd();
            titleMarginTop = toolbar.getTitleMarginTop();
            titleMarginBottom = toolbar.getTitleMarginBottom();
        } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
            titleMarginBottom = 0;
            titleMarginEnd = 0;
            titleMarginTop = 0;
        } else {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
            titleMarginStart = toolbar2.getTitleMarginStart();
            titleMarginEnd = toolbar2.getTitleMarginEnd();
            titleMarginTop = toolbar2.getTitleMarginTop();
            titleMarginBottom = toolbar2.getTitleMarginBottom();
        }
        com.google.android.material.internal.Cdo cdo = this.f11215catch;
        Rect rect = this.f11213break;
        int i = rect.left + (z ? titleMarginEnd : titleMarginStart);
        int i2 = rect.top + iM12658goto + titleMarginTop;
        int i3 = rect.right;
        if (!z) {
            titleMarginStart = titleMarginEnd;
        }
        cdo.o(i, i2, i3 - titleMarginStart, (rect.bottom + iM12658goto) - titleMarginBottom);
    }

    /* renamed from: static, reason: not valid java name */
    private void m12647static() {
        setContentDescription(getTitle());
    }

    /* renamed from: switch, reason: not valid java name */
    private void m12648switch(@NonNull Drawable drawable, int i, int i2) {
        m12651throws(drawable, this.f11224for, i, i2);
    }

    /* renamed from: this, reason: not valid java name */
    private static CharSequence m12649this(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (Build.VERSION.SDK_INT < 21 || !(view instanceof android.widget.Toolbar)) {
            return null;
        }
        return ((android.widget.Toolbar) view).getTitle();
    }

    /* renamed from: throw, reason: not valid java name */
    private static boolean m12650throw(View view) {
        return (view instanceof Toolbar) || (Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar));
    }

    /* renamed from: throws, reason: not valid java name */
    private void m12651throws(@NonNull Drawable drawable, @Nullable View view, int i, int i2) {
        if (m12640final() && view != null && this.f11217const) {
            i2 = view.getBottom();
        }
        drawable.setBounds(0, 0, i, i2);
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m12652while(View view) {
        View view2 = this.f11229new;
        if (view2 == null || view2 == this) {
            if (view == this.f11224for) {
                return true;
            }
        } else if (view == view2) {
            return true;
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Cfor(layoutParams);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: catch, reason: not valid java name */
    public boolean m12654catch() {
        return this.f11231private;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Cfor;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: class, reason: not valid java name */
    public boolean m12655class() {
        return this.f11223finally;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: const, reason: not valid java name */
    public boolean m12656const() {
        return this.f11215catch.g();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m12642for();
        if (this.f11224for == null && (drawable = this.f11235super) != null && this.f11241while > 0) {
            drawable.mutate().setAlpha(this.f11241while);
            this.f11235super.draw(canvas);
        }
        if (this.f11217const && this.f11222final) {
            if (this.f11224for == null || this.f11235super == null || this.f11241while <= 0 || !m12640final() || this.f11215catch.m13664volatile() >= this.f11215catch.m13652interface()) {
                this.f11215catch.m13645const(canvas);
            } else {
                int iSave = canvas.save();
                canvas.clipRect(this.f11235super.getBounds(), Region.Op.DIFFERENCE);
                this.f11215catch.m13645const(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        if (this.f11238throw == null || this.f11241while <= 0) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.f11218default;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f11238throw.setBounds(0, -this.f11236switch, getWidth(), systemWindowInsetTop - this.f11236switch);
            this.f11238throw.mutate().setAlpha(this.f11241while);
            this.f11238throw.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.f11235super == null || this.f11241while <= 0 || !m12652while(view)) {
            z = false;
        } else {
            m12651throws(this.f11235super, view, getWidth(), getHeight());
            this.f11235super.mutate().setAlpha(this.f11241while);
            this.f11235super.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j) || z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f11238throw;
        boolean zR = false;
        if (drawable != null && drawable.isStateful()) {
            zR = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f11235super;
        if (drawable2 != null && drawable2.isStateful()) {
            zR |= drawable2.setState(drawableState);
        }
        com.google.android.material.internal.Cdo cdo = this.f11215catch;
        if (cdo != null) {
            zR |= cdo.R(drawableState);
        }
        if (zR) {
            invalidate();
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m12657extends() {
        if (this.f11235super == null && this.f11238throw == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f11236switch < getScrimVisibleHeightTrigger());
    }

    public int getCollapsedTitleGravity() {
        return this.f11215catch.m13650import();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.f11215catch.m13659switch();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.f11235super;
    }

    public int getExpandedTitleGravity() {
        return this.f11215catch.m13655private();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f11237this;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f11225goto;
    }

    public int getExpandedTitleMarginStart() {
        return this.f11214case;
    }

    public int getExpandedTitleMarginTop() {
        return this.f11220else;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.f11215catch.m13658strictfp();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getHyphenationFrequency() {
        return this.f11215catch.m13656protected();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getLineCount() {
        return this.f11215catch.m13663transient();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getLineSpacingAdd() {
        return this.f11215catch.m13649implements();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getLineSpacingMultiplier() {
        return this.f11215catch.m13651instanceof();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getMaxLines() {
        return this.f11215catch.m13660synchronized();
    }

    public int getScrimAlpha() {
        return this.f11241while;
    }

    public long getScrimAnimationDuration() {
        return this.f11232public;
    }

    public int getScrimVisibleHeightTrigger() throws NoSuchFieldException {
        int i = this.f11233return;
        if (i >= 0) {
            return i + this.f11221extends + this.f11230package;
        }
        WindowInsetsCompat windowInsetsCompat = this.f11218default;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.f11238throw;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.f11217const) {
            return this.f11215catch.a();
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.f11239throws;
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m12658goto(@NonNull View view) {
        return ((getHeight() - m12636break(view).m12687for()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((Cfor) view.getLayoutParams())).bottomMargin;
    }

    /* renamed from: import, reason: not valid java name */
    public WindowInsetsCompat m12659import(@NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.f11218default, windowInsetsCompat2)) {
            this.f11218default = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    /* renamed from: native, reason: not valid java name */
    public void m12660native(int i, int i2, int i3, int i4) {
        this.f11214case = i;
        this.f11220else = i2;
        this.f11225goto = i3;
        this.f11237this = i4;
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            m12643if(appBarLayout);
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows(appBarLayout));
            if (this.f11234static == null) {
                this.f11234static = new Cnew();
            }
            appBarLayout.addOnOffsetChangedListener(this.f11234static);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.OnOffsetChangedListener onOffsetChangedListener = this.f11234static;
        if (onOffsetChangedListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(onOffsetChangedListener);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        super.onLayout(z, i, i2, i3, i4);
        WindowInsetsCompat windowInsetsCompat = this.f11218default;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            m12636break(getChildAt(i6)).m12688goto();
        }
        m12641finally(i, i2, i3, i4, false);
        m12645package();
        m12657extends();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            m12636break(getChildAt(i7)).m12685do();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        m12642for();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        WindowInsetsCompat windowInsetsCompat = this.f11218default;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if ((mode == 0 || this.f11223finally) && systemWindowInsetTop > 0) {
            this.f11221extends = systemWindowInsetTop;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
        if (this.f11231private && this.f11215catch.m13660synchronized() > 1) {
            m12645package();
            m12641finally(0, 0, getMeasuredWidth(), getMeasuredHeight(), true);
            int iM13663transient = this.f11215catch.m13663transient();
            if (iM13663transient > 1) {
                this.f11230package = Math.round(this.f11215catch.m13654package()) * (iM13663transient - 1);
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.f11230package, 1073741824));
            }
        }
        ViewGroup viewGroup = this.f11224for;
        if (viewGroup != null) {
            View view = this.f11229new;
            if (view == null || view == this) {
                setMinimumHeight(m12639else(viewGroup));
            } else {
                setMinimumHeight(m12639else(view));
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f11235super;
        if (drawable != null) {
            m12648switch(drawable, i, i2);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m12661public(boolean z, boolean z2) {
        if (this.f11227import != z) {
            if (z2) {
                m12638do(z ? 255 : 0);
            } else {
                setScrimAlpha(z ? 255 : 0);
            }
            this.f11227import = z;
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.f11215catch.t(i);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i) {
        this.f11215catch.q(i);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.f11215catch.v(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f11235super;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f11235super = drawableMutate;
            if (drawableMutate != null) {
                m12648switch(drawableMutate, getWidth(), getHeight());
                this.f11235super.setCallback(this);
                this.f11235super.setAlpha(this.f11241while);
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
        this.f11215catch.D(i);
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f11237this = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f11225goto = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f11214case = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f11220else = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i) {
        this.f11215catch.A(i);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f11215catch.C(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.f11215catch.F(typeface);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setExtraMultilineHeightEnabled(boolean z) {
        this.f11231private = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setForceApplySystemWindowInsetTop(boolean z) {
        this.f11223finally = z;
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setHyphenationFrequency(int i) {
        this.f11215catch.K(i);
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLineSpacingAdd(float f) {
        this.f11215catch.M(f);
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLineSpacingMultiplier(@FloatRange(from = 0.0d) float f) {
        this.f11215catch.N(f);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setMaxLines(int i) {
        this.f11215catch.O(i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        this.f11215catch.Q(z);
    }

    public void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.f11241while) {
            if (this.f11235super != null && (viewGroup = this.f11224for) != null) {
                ViewCompat.postInvalidateOnAnimation(viewGroup);
            }
            this.f11241while = i;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j) {
        this.f11232public = j;
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i) {
        if (this.f11233return != i) {
            this.f11233return = i;
            m12657extends();
        }
    }

    public void setScrimsShown(boolean z) {
        m12661public(z, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.f11238throw;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f11238throw = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f11238throw.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f11238throw, ViewCompat.getLayoutDirection(this));
                this.f11238throw.setVisible(getVisibility() == 0, false);
                this.f11238throw.setCallback(this);
                this.f11238throw.setAlpha(this.f11241while);
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
        this.f11215catch.S(charSequence);
        m12647static();
    }

    public void setTitleCollapseMode(int i) throws Resources.NotFoundException {
        this.f11239throws = i;
        boolean zM12640final = m12640final();
        this.f11215catch.I(zM12640final);
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            m12643if((AppBarLayout) parent);
        }
        if (zM12640final && this.f11235super == null) {
            setContentScrimColor(this.f11216class.m6786else(getResources().getDimension(R.dimen.design_appbar_elevation)));
        }
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f11217const) {
            this.f11217const = z;
            m12647static();
            m12637default();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f11238throw;
        if (drawable != null && drawable.isVisible() != z) {
            this.f11238throw.setVisible(z, false);
        }
        Drawable drawable2 = this.f11235super;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f11235super.setVisible(z, false);
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m12662super() {
        return this.f11217const;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cfor generateDefaultLayoutParams() {
        return new Cfor(-1, -1);
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f11235super || drawable == this.f11238throw;
    }

    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.collapsingToolbarLayoutStyle);
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f11215catch.s(colorStateList);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws IllegalAccessException, NoSuchMethodException, Resources.NotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i2 = f11209abstract;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11219do = true;
        this.f11213break = new Rect();
        this.f11233return = -1;
        this.f11221extends = 0;
        this.f11230package = 0;
        Context context2 = getContext();
        com.google.android.material.internal.Cdo cdo = new com.google.android.material.internal.Cdo(this);
        this.f11215catch = cdo;
        cdo.T(w1.f7373try);
        cdo.Q(false);
        this.f11216class = new r60(context2);
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.CollapsingToolbarLayout, i, i2, new int[0]);
        cdo.D(typedArrayM4267break.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, BadgeDrawable.f11274public));
        cdo.t(typedArrayM4267break.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = typedArrayM4267break.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.f11237this = dimensionPixelSize;
        this.f11225goto = dimensionPixelSize;
        this.f11220else = dimensionPixelSize;
        this.f11214case = dimensionPixelSize;
        int i3 = R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart;
        if (typedArrayM4267break.hasValue(i3)) {
            this.f11214case = typedArrayM4267break.getDimensionPixelSize(i3, 0);
        }
        int i4 = R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd;
        if (typedArrayM4267break.hasValue(i4)) {
            this.f11225goto = typedArrayM4267break.getDimensionPixelSize(i4, 0);
        }
        int i5 = R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop;
        if (typedArrayM4267break.hasValue(i5)) {
            this.f11220else = typedArrayM4267break.getDimensionPixelSize(i5, 0);
        }
        int i6 = R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom;
        if (typedArrayM4267break.hasValue(i6)) {
            this.f11237this = typedArrayM4267break.getDimensionPixelSize(i6, 0);
        }
        this.f11217const = typedArrayM4267break.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(typedArrayM4267break.getText(R.styleable.CollapsingToolbarLayout_title));
        cdo.A(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        cdo.q(androidx.appcompat.R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        int i7 = R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance;
        if (typedArrayM4267break.hasValue(i7)) {
            cdo.A(typedArrayM4267break.getResourceId(i7, 0));
        }
        int i8 = R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance;
        if (typedArrayM4267break.hasValue(i8)) {
            cdo.q(typedArrayM4267break.getResourceId(i8, 0));
        }
        this.f11233return = typedArrayM4267break.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        int i9 = R.styleable.CollapsingToolbarLayout_maxLines;
        if (typedArrayM4267break.hasValue(i9)) {
            cdo.O(typedArrayM4267break.getInt(i9, 1));
        }
        this.f11232public = typedArrayM4267break.getInt(R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        setContentScrim(typedArrayM4267break.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(typedArrayM4267break.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
        setTitleCollapseMode(typedArrayM4267break.getInt(R.styleable.CollapsingToolbarLayout_titleCollapseMode, 0));
        this.f11226if = typedArrayM4267break.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
        this.f11223finally = typedArrayM4267break.getBoolean(R.styleable.CollapsingToolbarLayout_forceApplySystemWindowInsetTop, false);
        this.f11231private = typedArrayM4267break.getBoolean(R.styleable.CollapsingToolbarLayout_extraMultilineHeightEnabled, false);
        typedArrayM4267break.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new Cdo());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Cfor(getContext(), attributeSet);
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$for, reason: invalid class name */
    public static class Cfor extends FrameLayout.LayoutParams {

        /* renamed from: case, reason: not valid java name */
        public static final int f11243case = 2;

        /* renamed from: for, reason: not valid java name */
        private static final float f11244for = 0.5f;

        /* renamed from: new, reason: not valid java name */
        public static final int f11245new = 0;

        /* renamed from: try, reason: not valid java name */
        public static final int f11246try = 1;

        /* renamed from: do, reason: not valid java name */
        public int f11247do;

        /* renamed from: if, reason: not valid java name */
        public float f11248if;

        public Cfor(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11247do = 0;
            this.f11248if = 0.5f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout_Layout);
            this.f11247do = typedArrayObtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            m12667new(typedArrayObtainStyledAttributes.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            typedArrayObtainStyledAttributes.recycle();
        }

        /* renamed from: do, reason: not valid java name */
        public int m12664do() {
            return this.f11247do;
        }

        /* renamed from: for, reason: not valid java name */
        public void m12665for(int i) {
            this.f11247do = i;
        }

        /* renamed from: if, reason: not valid java name */
        public float m12666if() {
            return this.f11248if;
        }

        /* renamed from: new, reason: not valid java name */
        public void m12667new(float f) {
            this.f11248if = f;
        }

        public Cfor(int i, int i2) {
            super(i, i2);
            this.f11247do = 0;
            this.f11248if = 0.5f;
        }

        public Cfor(int i, int i2, int i3) {
            super(i, i2, i3);
            this.f11247do = 0;
            this.f11248if = 0.5f;
        }

        public Cfor(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11247do = 0;
            this.f11248if = 0.5f;
        }

        public Cfor(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f11247do = 0;
            this.f11248if = 0.5f;
        }

        @RequiresApi(19)
        public Cfor(@NonNull FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11247do = 0;
            this.f11248if = 0.5f;
        }
    }
}
