package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.v4.k62;
import android.support.v4.no1;
import android.support.v4.sx0;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.support.v4.w1;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.DecorView
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {
    public static final int A = 1;

    @Dimension(unit = 0)
    private static final int e = 72;

    @Dimension(unit = 0)
    public static final int f = 8;

    @Dimension(unit = 0)
    private static final int g = 48;

    @Dimension(unit = 0)
    private static final int h = 56;

    @Dimension(unit = 0)
    public static final int i = 16;
    private static final int j = -1;
    private static final int k = 300;
    private static final String m = "TabLayout";
    public static final int n = 0;
    public static final int o = 1;
    public static final int p = 2;
    public static final int q = 0;
    public static final int r = 1;
    public static final int s = 0;
    public static final int t = 1;
    public static final int u = 2;
    public static final int v = 0;
    public static final int w = 1;
    public static final int x = 2;
    public static final int y = 3;
    public static final int z = 0;
    private Cif a;

    /* renamed from: abstract, reason: not valid java name */
    public boolean f12798abstract;
    private boolean b;

    /* renamed from: break, reason: not valid java name */
    public ColorStateList f12799break;
    private final Pools.Pool<TabView> c;

    /* renamed from: case, reason: not valid java name */
    public int f12800case;

    /* renamed from: catch, reason: not valid java name */
    public ColorStateList f12801catch;

    /* renamed from: class, reason: not valid java name */
    @NonNull
    public Drawable f12802class;

    /* renamed from: const, reason: not valid java name */
    private int f12803const;

    /* renamed from: continue, reason: not valid java name */
    private com.google.android.material.tabs.Cif f12804continue;

    /* renamed from: default, reason: not valid java name */
    public int f12805default;

    /* renamed from: do, reason: not valid java name */
    private final ArrayList<Celse> f12806do;

    /* renamed from: else, reason: not valid java name */
    public int f12807else;

    /* renamed from: extends, reason: not valid java name */
    public int f12808extends;

    /* renamed from: final, reason: not valid java name */
    public PorterDuff.Mode f12809final;

    /* renamed from: finally, reason: not valid java name */
    public boolean f12810finally;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    public final Ccase f12811for;

    /* renamed from: goto, reason: not valid java name */
    public int f12812goto;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private Celse f12813if;

    /* renamed from: implements, reason: not valid java name */
    @Nullable
    private PagerAdapter f12814implements;

    /* renamed from: import, reason: not valid java name */
    public int f12815import;

    /* renamed from: instanceof, reason: not valid java name */
    private DataSetObserver f12816instanceof;

    /* renamed from: interface, reason: not valid java name */
    @Nullable
    private BaseOnTabSelectedListener f12817interface;

    /* renamed from: native, reason: not valid java name */
    private final int f12818native;

    /* renamed from: new, reason: not valid java name */
    public int f12819new;

    /* renamed from: package, reason: not valid java name */
    public boolean f12820package;

    /* renamed from: private, reason: not valid java name */
    public int f12821private;

    /* renamed from: protected, reason: not valid java name */
    private ValueAnimator f12822protected;

    /* renamed from: public, reason: not valid java name */
    private final int f12823public;

    /* renamed from: return, reason: not valid java name */
    private final int f12824return;

    /* renamed from: static, reason: not valid java name */
    private int f12825static;

    /* renamed from: strictfp, reason: not valid java name */
    @Nullable
    private BaseOnTabSelectedListener f12826strictfp;

    /* renamed from: super, reason: not valid java name */
    public float f12827super;

    /* renamed from: switch, reason: not valid java name */
    public int f12828switch;

    /* renamed from: synchronized, reason: not valid java name */
    private TabLayoutOnPageChangeListener f12829synchronized;

    /* renamed from: this, reason: not valid java name */
    public ColorStateList f12830this;

    /* renamed from: throw, reason: not valid java name */
    public float f12831throw;

    /* renamed from: throws, reason: not valid java name */
    public int f12832throws;

    /* renamed from: transient, reason: not valid java name */
    @Nullable
    public ViewPager f12833transient;

    /* renamed from: try, reason: not valid java name */
    public int f12834try;

    /* renamed from: volatile, reason: not valid java name */
    private final ArrayList<BaseOnTabSelectedListener> f12835volatile;

    /* renamed from: while, reason: not valid java name */
    public final int f12836while;
    private static final int d = R.style.Widget_Design_TabLayout;
    private static final Pools.Pool<Celse> l = new Pools.SynchronizedPool(16);

    @Deprecated
    public interface BaseOnTabSelectedListener<T extends Celse> {
        void onTabReselected(T t);

        void onTabSelected(T t);

        void onTabUnselected(T t);
    }

    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Celse> {
    }

    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final WeakReference<TabLayout> f12837do;

        /* renamed from: for, reason: not valid java name */
        private int f12838for;

        /* renamed from: if, reason: not valid java name */
        private int f12839if;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.f12837do = new WeakReference<>(tabLayout);
        }

        /* renamed from: do, reason: not valid java name */
        public void m14283do() {
            this.f12838for = 0;
            this.f12839if = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f12839if = this.f12838for;
            this.f12838for = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f12837do.get();
            if (tabLayout != null) {
                int i3 = this.f12838for;
                tabLayout.m14278synchronized(i, f, i3 != 2 || this.f12839if == 1, (i3 == 2 && this.f12839if == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            TabLayout tabLayout = this.f12837do.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.f12838for;
            tabLayout.m14280transient(tabLayout.m14279throws(i), i2 == 0 || (i2 == 2 && this.f12839if == 0));
        }
    }

    public final class TabView extends LinearLayout {

        /* renamed from: break, reason: not valid java name */
        private int f12840break;

        /* renamed from: case, reason: not valid java name */
        @Nullable
        private View f12841case;

        /* renamed from: do, reason: not valid java name */
        private Celse f12843do;

        /* renamed from: else, reason: not valid java name */
        @Nullable
        private TextView f12844else;

        /* renamed from: for, reason: not valid java name */
        private ImageView f12845for;

        /* renamed from: goto, reason: not valid java name */
        @Nullable
        private ImageView f12846goto;

        /* renamed from: if, reason: not valid java name */
        private TextView f12847if;

        /* renamed from: new, reason: not valid java name */
        @Nullable
        private View f12848new;

        /* renamed from: this, reason: not valid java name */
        @Nullable
        private Drawable f12849this;

        /* renamed from: try, reason: not valid java name */
        @Nullable
        private BadgeDrawable f12850try;

        /* renamed from: com.google.android.material.tabs.TabLayout$TabView$do, reason: invalid class name */
        public class Cdo implements View.OnLayoutChangeListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ View f12851do;

            public Cdo(View view) {
                this.f12851do = view;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
                if (this.f12851do.getVisibility() == 0) {
                    TabView.this.m14303switch(this.f12851do);
                }
            }
        }

        public TabView(@NonNull Context context) {
            super(context);
            this.f12840break = 2;
            m14289default(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.f12819new, TabLayout.this.f12834try, TabLayout.this.f12800case, TabLayout.this.f12807else);
            setGravity(17);
            setOrientation(!TabLayout.this.f12810finally ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        /* renamed from: break, reason: not valid java name */
        private float m14284break(@NonNull Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }

        /* renamed from: catch, reason: not valid java name */
        private void m14286catch(boolean z) {
            setClipChildren(z);
            setClipToPadding(z);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z);
                viewGroup.setClipToPadding(z);
            }
        }

        @NonNull
        /* renamed from: class, reason: not valid java name */
        private FrameLayout m14287class() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: const, reason: not valid java name */
        public void m14288const(@NonNull Canvas canvas) {
            Drawable drawable = this.f12849this;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f12849this.draw(canvas);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.RippleDrawable] */
        /* JADX WARN: Type inference failed for: r2v3, types: [android.graphics.drawable.LayerDrawable] */
        /* renamed from: default, reason: not valid java name */
        public void m14289default(Context context) {
            int i = TabLayout.this.f12836while;
            if (i != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, i);
                this.f12849this = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.f12849this.setState(getDrawableState());
                }
            } else {
                this.f12849this = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            if (TabLayout.this.f12801catch != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList colorStateListM5291do = no1.m5291do(TabLayout.this.f12801catch);
                if (Build.VERSION.SDK_INT >= 21) {
                    boolean z = TabLayout.this.f12798abstract;
                    if (z) {
                        gradientDrawable = null;
                    }
                    gradientDrawable = new RippleDrawable(colorStateListM5291do, gradientDrawable, z ? null : gradientDrawable2);
                } else {
                    Drawable drawableWrap = DrawableCompat.wrap(gradientDrawable2);
                    DrawableCompat.setTintList(drawableWrap, colorStateListM5291do);
                    gradientDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, drawableWrap});
                }
            }
            ViewCompat.setBackground(this, gradientDrawable);
            TabLayout.this.invalidate();
        }

        @Nullable
        /* renamed from: final, reason: not valid java name */
        private FrameLayout m14292final(@NonNull View view) {
            if ((view == this.f12845for || view == this.f12847if) && com.google.android.material.badge.Cdo.f11313do) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        /* renamed from: finally, reason: not valid java name */
        private void m14293finally(@Nullable TextView textView, @Nullable ImageView imageView) {
            Celse celse = this.f12843do;
            Drawable drawableMutate = (celse == null || celse.m14336goto() == null) ? null : DrawableCompat.wrap(this.f12843do.m14336goto()).mutate();
            Celse celse2 = this.f12843do;
            CharSequence charSequenceM14334final = celse2 != null ? celse2.m14334final() : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequenceM14334final);
            if (textView != null) {
                if (z) {
                    textView.setText(charSequenceM14334final);
                    if (this.f12843do.f12869else == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iM13624try = (z && imageView.getVisibility() == 0) ? (int) ViewUtils.m13624try(getContext(), 8) : 0;
                if (TabLayout.this.f12810finally) {
                    if (iM13624try != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, iM13624try);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iM13624try != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iM13624try;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Celse celse3 = this.f12843do;
            CharSequence charSequence = celse3 != null ? celse3.f12873new : null;
            int i = Build.VERSION.SDK_INT;
            if (i < 21 || i > 23) {
                if (!z) {
                    charSequenceM14334final = charSequence;
                }
                TooltipCompat.setTooltipText(this, charSequenceM14334final);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public BadgeDrawable getBadge() {
            return this.f12850try;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        public BadgeDrawable getOrCreateBadge() throws Resources.NotFoundException {
            if (this.f12850try == null) {
                this.f12850try = BadgeDrawable.m12700for(getContext());
            }
            m14301static();
            BadgeDrawable badgeDrawable = this.f12850try;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: import, reason: not valid java name */
        public void m14297import() {
            if (this.f12848new != null) {
                m14300return();
            }
            this.f12850try = null;
        }

        /* renamed from: public, reason: not valid java name */
        private void m14299public(@Nullable View view) throws Resources.NotFoundException {
            if (m14302super() && view != null) {
                m14286catch(false);
                com.google.android.material.badge.Cdo.m12773if(this.f12850try, view, m14292final(view));
                this.f12848new = view;
            }
        }

        /* renamed from: return, reason: not valid java name */
        private void m14300return() {
            if (m14302super()) {
                m14286catch(true);
                View view = this.f12848new;
                if (view != null) {
                    com.google.android.material.badge.Cdo.m12770else(this.f12850try, view);
                    this.f12848new = null;
                }
            }
        }

        /* renamed from: static, reason: not valid java name */
        private void m14301static() throws Resources.NotFoundException {
            Celse celse;
            Celse celse2;
            if (m14302super()) {
                if (this.f12841case != null) {
                    m14300return();
                    return;
                }
                if (this.f12845for != null && (celse2 = this.f12843do) != null && celse2.m14336goto() != null) {
                    View view = this.f12848new;
                    ImageView imageView = this.f12845for;
                    if (view == imageView) {
                        m14303switch(imageView);
                        return;
                    } else {
                        m14300return();
                        m14299public(this.f12845for);
                        return;
                    }
                }
                if (this.f12847if == null || (celse = this.f12843do) == null || celse.m14328class() != 1) {
                    m14300return();
                    return;
                }
                View view2 = this.f12848new;
                TextView textView = this.f12847if;
                if (view2 == textView) {
                    m14303switch(textView);
                } else {
                    m14300return();
                    m14299public(this.f12847if);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public boolean m14302super() {
            return this.f12850try != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: switch, reason: not valid java name */
        public void m14303switch(@NonNull View view) throws Resources.NotFoundException {
            if (m14302super() && view == this.f12848new) {
                com.google.android.material.badge.Cdo.m12765break(this.f12850try, view, m14292final(view));
            }
        }

        /* renamed from: this, reason: not valid java name */
        private void m14304this(@Nullable View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new Cdo(view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: throw, reason: not valid java name */
        private void m14305throw() {
            FrameLayout frameLayoutM14287class;
            if (com.google.android.material.badge.Cdo.f11313do) {
                frameLayoutM14287class = m14287class();
                addView(frameLayoutM14287class, 0);
            } else {
                frameLayoutM14287class = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) frameLayoutM14287class, false);
            this.f12845for = imageView;
            frameLayoutM14287class.addView(imageView, 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: while, reason: not valid java name */
        private void m14307while() {
            FrameLayout frameLayoutM14287class;
            if (com.google.android.material.badge.Cdo.f11313do) {
                frameLayoutM14287class = m14287class();
                addView(frameLayoutM14287class);
            } else {
                frameLayoutM14287class = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) frameLayoutM14287class, false);
            this.f12847if = textView;
            frameLayoutM14287class.addView(textView);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f12849this;
            boolean state = false;
            if (drawable != null && drawable.isStateful()) {
                state = false | this.f12849this.setState(drawableState);
            }
            if (state) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        /* renamed from: extends, reason: not valid java name */
        public final void m14308extends() {
            setOrientation(!TabLayout.this.f12810finally ? 1 : 0);
            TextView textView = this.f12844else;
            if (textView == null && this.f12846goto == null) {
                m14293finally(this.f12847if, this.f12845for);
            } else {
                m14293finally(textView, this.f12846goto);
            }
        }

        public int getContentHeight() {
            View[] viewArr = {this.f12847if, this.f12845for, this.f12841case};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i = 0; i < 3; i++) {
                View view = viewArr[i];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getTop()) : view.getTop();
                    iMax = z ? Math.max(iMax, view.getBottom()) : view.getBottom();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        public int getContentWidth() {
            View[] viewArr = {this.f12847if, this.f12845for, this.f12841case};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i = 0; i < 3; i++) {
                View view = viewArr[i];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z ? Math.max(iMax, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        @Nullable
        public Celse getTab() {
            return this.f12843do;
        }

        /* renamed from: native, reason: not valid java name */
        public void m14309native() throws Resources.NotFoundException {
            setTab(null);
            setSelected(false);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f12850try;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.f12850try.m12715final()));
            }
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.f12843do.m14327catch(), 1, false, isSelected()));
            if (isSelected()) {
                accessibilityNodeInfoCompatWrap.setClickable(false);
                accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.f12815import, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.f12847if != null) {
                float f = TabLayout.this.f12827super;
                int i3 = this.f12840break;
                ImageView imageView = this.f12845for;
                boolean z = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f12847if;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = TabLayout.this.f12831throw;
                    }
                } else {
                    i3 = 1;
                }
                float textSize = this.f12847if.getTextSize();
                int lineCount = this.f12847if.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.f12847if);
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    if (TabLayout.this.f12808extends == 1 && f > textSize && lineCount == 1 && ((layout = this.f12847if.getLayout()) == null || m14284break(layout, 0, f) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.f12847if.setTextSize(0, f);
                        this.f12847if.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.f12843do == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.f12843do.m14337import();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f12847if;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f12845for;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f12841case;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(@Nullable Celse celse) throws Resources.NotFoundException {
            if (celse != this.f12843do) {
                this.f12843do = celse;
                m14310throws();
            }
        }

        /* renamed from: throws, reason: not valid java name */
        public final void m14310throws() throws Resources.NotFoundException {
            Celse celse = this.f12843do;
            Drawable drawableMutate = null;
            View viewM14332else = celse != null ? celse.m14332else() : null;
            if (viewM14332else != null) {
                ViewParent parent = viewM14332else.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewM14332else);
                    }
                    addView(viewM14332else);
                }
                this.f12841case = viewM14332else;
                TextView textView = this.f12847if;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f12845for;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f12845for.setImageDrawable(null);
                }
                TextView textView2 = (TextView) viewM14332else.findViewById(android.R.id.text1);
                this.f12844else = textView2;
                if (textView2 != null) {
                    this.f12840break = TextViewCompat.getMaxLines(textView2);
                }
                this.f12846goto = (ImageView) viewM14332else.findViewById(android.R.id.icon);
            } else {
                View view = this.f12841case;
                if (view != null) {
                    removeView(view);
                    this.f12841case = null;
                }
                this.f12844else = null;
                this.f12846goto = null;
            }
            if (this.f12841case == null) {
                if (this.f12845for == null) {
                    m14305throw();
                }
                if (celse != null && celse.m14336goto() != null) {
                    drawableMutate = DrawableCompat.wrap(celse.m14336goto()).mutate();
                }
                if (drawableMutate != null) {
                    DrawableCompat.setTintList(drawableMutate, TabLayout.this.f12799break);
                    PorterDuff.Mode mode = TabLayout.this.f12809final;
                    if (mode != null) {
                        DrawableCompat.setTintMode(drawableMutate, mode);
                    }
                }
                if (this.f12847if == null) {
                    m14307while();
                    this.f12840break = TextViewCompat.getMaxLines(this.f12847if);
                }
                TextViewCompat.setTextAppearance(this.f12847if, TabLayout.this.f12812goto);
                ColorStateList colorStateList = TabLayout.this.f12830this;
                if (colorStateList != null) {
                    this.f12847if.setTextColor(colorStateList);
                }
                m14293finally(this.f12847if, this.f12845for);
                m14301static();
                m14304this(this.f12845for);
                m14304this(this.f12847if);
            } else {
                TextView textView3 = this.f12844else;
                if (textView3 != null || this.f12846goto != null) {
                    m14293finally(textView3, this.f12846goto);
                }
            }
            if (celse != null && !TextUtils.isEmpty(celse.f12873new)) {
                setContentDescription(celse.f12873new);
            }
            setSelected(celse != null && celse.m14344super());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.tabs.TabLayout$break, reason: invalid class name */
    public @interface Cbreak {
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$case, reason: invalid class name */
    public class Ccase extends LinearLayout {

        /* renamed from: do, reason: not valid java name */
        public ValueAnimator f12853do;

        /* renamed from: for, reason: not valid java name */
        public float f12854for;

        /* renamed from: if, reason: not valid java name */
        public int f12855if;

        /* renamed from: new, reason: not valid java name */
        private int f12856new;

        /* renamed from: com.google.android.material.tabs.TabLayout$case$do, reason: invalid class name */
        public class Cdo implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ View f12858do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ View f12860if;

            public Cdo(View view, View view2) {
                this.f12858do = view;
                this.f12860if = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                Ccase.this.m14312goto(this.f12858do, this.f12860if, valueAnimator.getAnimatedFraction());
            }
        }

        /* renamed from: com.google.android.material.tabs.TabLayout$case$if, reason: invalid class name */
        public class Cif extends AnimatorListenerAdapter {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f12861do;

            public Cif(int i) {
                this.f12861do = i;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Ccase.this.f12855if = this.f12861do;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                Ccase.this.f12855if = this.f12861do;
            }
        }

        public Ccase(Context context) {
            super(context);
            this.f12855if = -1;
            this.f12856new = -1;
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public void m14312goto(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                com.google.android.material.tabs.Cif cif = TabLayout.this.f12804continue;
                TabLayout tabLayout = TabLayout.this;
                cif.mo14359for(tabLayout, view, view2, f, tabLayout.f12802class);
            } else {
                Drawable drawable = TabLayout.this.f12802class;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f12802class.getBounds().bottom);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }

        /* renamed from: this, reason: not valid java name */
        private void m14313this(boolean z, int i, int i2) {
            View childAt = getChildAt(this.f12855if);
            View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                m14314try();
                return;
            }
            Cdo cdo = new Cdo(childAt, childAt2);
            if (!z) {
                this.f12853do.removeAllUpdateListeners();
                this.f12853do.addUpdateListener(cdo);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f12853do = valueAnimator;
            valueAnimator.setInterpolator(w1.f7371if);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(cdo);
            valueAnimator.addListener(new Cif(i));
            valueAnimator.start();
        }

        /* renamed from: try, reason: not valid java name */
        private void m14314try() {
            View childAt = getChildAt(this.f12855if);
            com.google.android.material.tabs.Cif cif = TabLayout.this.f12804continue;
            TabLayout tabLayout = TabLayout.this;
            cif.m14362new(tabLayout, childAt, tabLayout.f12802class);
        }

        /* renamed from: case, reason: not valid java name */
        public void m14315case(int i, float f) {
            ValueAnimator valueAnimator = this.f12853do;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f12853do.cancel();
            }
            this.f12855if = i;
            this.f12854for = f;
            m14312goto(getChildAt(i), getChildAt(this.f12855if + 1), this.f12854for);
        }

        @Override // android.view.View
        public void draw(@NonNull Canvas canvas) {
            int iHeight = TabLayout.this.f12802class.getBounds().height();
            if (iHeight < 0) {
                iHeight = TabLayout.this.f12802class.getIntrinsicHeight();
            }
            int i = TabLayout.this.f12805default;
            int height = 0;
            if (i == 0) {
                height = getHeight() - iHeight;
                iHeight = getHeight();
            } else if (i == 1) {
                height = (getHeight() - iHeight) / 2;
                iHeight = (getHeight() + iHeight) / 2;
            } else if (i != 2) {
                iHeight = i != 3 ? 0 : getHeight();
            }
            if (TabLayout.this.f12802class.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f12802class.getBounds();
                TabLayout.this.f12802class.setBounds(bounds.left, height, bounds.right, iHeight);
                TabLayout tabLayout = TabLayout.this;
                Drawable drawableWrap = tabLayout.f12802class;
                if (tabLayout.f12803const != 0) {
                    drawableWrap = DrawableCompat.wrap(drawableWrap);
                    if (Build.VERSION.SDK_INT == 21) {
                        drawableWrap.setColorFilter(TabLayout.this.f12803const, PorterDuff.Mode.SRC_IN);
                    } else {
                        DrawableCompat.setTint(drawableWrap, TabLayout.this.f12803const);
                    }
                }
                drawableWrap.draw(canvas);
            }
            super.draw(canvas);
        }

        /* renamed from: else, reason: not valid java name */
        public void m14316else(int i) {
            Rect bounds = TabLayout.this.f12802class.getBounds();
            TabLayout.this.f12802class.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m14317for() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: if, reason: not valid java name */
        public void m14318if(int i, int i2) {
            ValueAnimator valueAnimator = this.f12853do;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f12853do.cancel();
            }
            m14313this(true, i, i2);
        }

        /* renamed from: new, reason: not valid java name */
        public float m14319new() {
            return this.f12855if + this.f12854for;
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f12853do;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                m14314try();
            } else {
                m14313this(false, this.f12855if, -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.f12828switch == 1 || tabLayout.f12808extends == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) ViewUtils.m13624try(getContext(), 16)) * 2)) {
                    boolean z2 = false;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.f12828switch = 0;
                    tabLayout2.f(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.f12856new == i) {
                return;
            }
            requestLayout();
            this.f12856new = i;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$catch, reason: invalid class name */
    public static class Ccatch implements OnTabSelectedListener {

        /* renamed from: do, reason: not valid java name */
        private final ViewPager f12863do;

        public Ccatch(ViewPager viewPager) {
            this.f12863do = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(Celse celse) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@NonNull Celse celse) throws Resources.NotFoundException {
            this.f12863do.setCurrentItem(celse.m14327catch());
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(Celse celse) {
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$else, reason: invalid class name */
    public static class Celse {

        /* renamed from: catch, reason: not valid java name */
        public static final int f12865catch = -1;

        /* renamed from: case, reason: not valid java name */
        @Nullable
        private View f12867case;

        /* renamed from: do, reason: not valid java name */
        @Nullable
        private Object f12868do;

        /* renamed from: for, reason: not valid java name */
        @Nullable
        private CharSequence f12870for;

        /* renamed from: goto, reason: not valid java name */
        @Nullable
        public TabLayout f12871goto;

        /* renamed from: if, reason: not valid java name */
        @Nullable
        private Drawable f12872if;

        /* renamed from: new, reason: not valid java name */
        @Nullable
        private CharSequence f12873new;

        /* renamed from: this, reason: not valid java name */
        @NonNull
        public TabView f12874this;

        /* renamed from: try, reason: not valid java name */
        private int f12875try = -1;

        /* renamed from: else, reason: not valid java name */
        @Cfor
        private int f12869else = 1;

        /* renamed from: break, reason: not valid java name */
        private int f12866break = -1;

        @NonNull
        /* renamed from: abstract, reason: not valid java name */
        public Celse m14324abstract(@Nullable CharSequence charSequence) throws Resources.NotFoundException {
            if (TextUtils.isEmpty(this.f12873new) && !TextUtils.isEmpty(charSequence)) {
                this.f12874this.setContentDescription(charSequence);
            }
            this.f12870for = charSequence;
            m14330continue();
            return this;
        }

        @NonNull
        /* renamed from: break, reason: not valid java name */
        public BadgeDrawable m14325break() {
            return this.f12874this.getOrCreateBadge();
        }

        @Nullable
        /* renamed from: case, reason: not valid java name */
        public CharSequence m14326case() {
            TabView tabView = this.f12874this;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        /* renamed from: catch, reason: not valid java name */
        public int m14327catch() {
            return this.f12875try;
        }

        @Cfor
        /* renamed from: class, reason: not valid java name */
        public int m14328class() {
            return this.f12869else;
        }

        @Nullable
        /* renamed from: const, reason: not valid java name */
        public Object m14329const() {
            return this.f12868do;
        }

        /* renamed from: continue, reason: not valid java name */
        public void m14330continue() throws Resources.NotFoundException {
            TabView tabView = this.f12874this;
            if (tabView != null) {
                tabView.m14310throws();
            }
        }

        @NonNull
        /* renamed from: default, reason: not valid java name */
        public Celse m14331default(int i) {
            this.f12866break = i;
            TabView tabView = this.f12874this;
            if (tabView != null) {
                tabView.setId(i);
            }
            return this;
        }

        @Nullable
        /* renamed from: else, reason: not valid java name */
        public View m14332else() {
            return this.f12867case;
        }

        /* renamed from: extends, reason: not valid java name */
        public void m14333extends(int i) {
            this.f12875try = i;
        }

        @Nullable
        /* renamed from: final, reason: not valid java name */
        public CharSequence m14334final() {
            return this.f12870for;
        }

        @NonNull
        /* renamed from: finally, reason: not valid java name */
        public Celse m14335finally(@Cfor int i) throws Resources.NotFoundException {
            this.f12869else = i;
            TabLayout tabLayout = this.f12871goto;
            if (tabLayout.f12828switch == 1 || tabLayout.f12808extends == 2) {
                tabLayout.f(true);
            }
            m14330continue();
            if (com.google.android.material.badge.Cdo.f11313do && this.f12874this.m14302super() && this.f12874this.f12850try.isVisible()) {
                this.f12874this.invalidate();
            }
            return this;
        }

        @Nullable
        /* renamed from: goto, reason: not valid java name */
        public Drawable m14336goto() {
            return this.f12872if;
        }

        /* renamed from: import, reason: not valid java name */
        public void m14337import() {
            TabLayout tabLayout = this.f12871goto;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.m14276protected(this);
        }

        @NonNull
        /* renamed from: native, reason: not valid java name */
        public Celse m14338native(@StringRes int i) {
            TabLayout tabLayout = this.f12871goto;
            if (tabLayout != null) {
                return m14341public(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        /* renamed from: package, reason: not valid java name */
        public Celse m14339package(@Nullable Object obj) {
            this.f12868do = obj;
            return this;
        }

        @NonNull
        /* renamed from: private, reason: not valid java name */
        public Celse m14340private(@StringRes int i) {
            TabLayout tabLayout = this.f12871goto;
            if (tabLayout != null) {
                return m14324abstract(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        /* renamed from: public, reason: not valid java name */
        public Celse m14341public(@Nullable CharSequence charSequence) throws Resources.NotFoundException {
            this.f12873new = charSequence;
            m14330continue();
            return this;
        }

        @NonNull
        /* renamed from: return, reason: not valid java name */
        public Celse m14342return(@LayoutRes int i) {
            return m14343static(LayoutInflater.from(this.f12874this.getContext()).inflate(i, (ViewGroup) this.f12874this, false));
        }

        @NonNull
        /* renamed from: static, reason: not valid java name */
        public Celse m14343static(@Nullable View view) throws Resources.NotFoundException {
            this.f12867case = view;
            m14330continue();
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public boolean m14344super() {
            TabLayout tabLayout = this.f12871goto;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.f12875try;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        /* renamed from: switch, reason: not valid java name */
        public Celse m14345switch(@DrawableRes int i) {
            TabLayout tabLayout = this.f12871goto;
            if (tabLayout != null) {
                return m14348throws(AppCompatResources.getDrawable(tabLayout.getContext(), i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: this, reason: not valid java name */
        public int m14346this() {
            return this.f12866break;
        }

        /* renamed from: throw, reason: not valid java name */
        public void m14347throw() {
            this.f12874this.m14297import();
        }

        @NonNull
        /* renamed from: throws, reason: not valid java name */
        public Celse m14348throws(@Nullable Drawable drawable) throws Resources.NotFoundException {
            this.f12872if = drawable;
            TabLayout tabLayout = this.f12871goto;
            if (tabLayout.f12828switch == 1 || tabLayout.f12808extends == 2) {
                tabLayout.f(true);
            }
            m14330continue();
            if (com.google.android.material.badge.Cdo.f11313do && this.f12874this.m14302super() && this.f12874this.f12850try.isVisible()) {
                this.f12874this.invalidate();
            }
            return this;
        }

        @Nullable
        /* renamed from: try, reason: not valid java name */
        public BadgeDrawable m14349try() {
            return this.f12874this.getBadge();
        }

        /* renamed from: while, reason: not valid java name */
        public void m14350while() {
            this.f12871goto = null;
            this.f12874this = null;
            this.f12868do = null;
            this.f12872if = null;
            this.f12866break = -1;
            this.f12870for = null;
            this.f12873new = null;
            this.f12875try = -1;
            this.f12867case = null;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$for, reason: invalid class name */
    public @interface Cfor {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.tabs.TabLayout$goto, reason: invalid class name */
    public @interface Cgoto {
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$if, reason: invalid class name */
    public class Cif implements ViewPager.OnAdapterChangeListener {

        /* renamed from: do, reason: not valid java name */
        private boolean f12876do;

        public Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m14351do(boolean z) {
            this.f12876do = z;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) throws Resources.NotFoundException {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f12833transient == viewPager) {
                tabLayout.m14270implements(pagerAdapter2, this.f12876do);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.tabs.TabLayout$new, reason: invalid class name */
    public @interface Cnew {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.tabs.TabLayout$this, reason: invalid class name */
    public @interface Cthis {
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$try, reason: invalid class name */
    public class Ctry extends DataSetObserver {
        public Ctry() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() throws Resources.NotFoundException {
            TabLayout.this.m14275private();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() throws Resources.NotFoundException {
            TabLayout.this.m14275private();
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m14244break(int i2) {
        if (i2 == -1) {
            return;
        }
        if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.f12811for.m14317for()) {
            m14272instanceof(i2, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iM14247const = m14247const(i2, 0.0f);
        if (scrollX != iM14247const) {
            m14258switch();
            this.f12822protected.setIntValues(scrollX, iM14247const);
            this.f12822protected.start();
        }
        this.f12811for.m14318if(i2, this.f12832throws);
    }

    private void c(@Nullable ViewPager viewPager, boolean z2, boolean z3) throws Resources.NotFoundException {
        ViewPager viewPager2 = this.f12833transient;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.f12829synchronized;
            if (tabLayoutOnPageChangeListener != null) {
                viewPager2.removeOnPageChangeListener(tabLayoutOnPageChangeListener);
            }
            Cif cif = this.a;
            if (cif != null) {
                this.f12833transient.removeOnAdapterChangeListener(cif);
            }
        }
        BaseOnTabSelectedListener baseOnTabSelectedListener = this.f12817interface;
        if (baseOnTabSelectedListener != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener);
            this.f12817interface = null;
        }
        if (viewPager != null) {
            this.f12833transient = viewPager;
            if (this.f12829synchronized == null) {
                this.f12829synchronized = new TabLayoutOnPageChangeListener(this);
            }
            this.f12829synchronized.m14283do();
            viewPager.addOnPageChangeListener(this.f12829synchronized);
            Ccatch ccatch = new Ccatch(viewPager);
            this.f12817interface = ccatch;
            addOnTabSelectedListener((BaseOnTabSelectedListener) ccatch);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                m14270implements(adapter, z2);
            }
            if (this.a == null) {
                this.a = new Cif();
            }
            this.a.m14351do(z2);
            viewPager.addOnAdapterChangeListener(this.a);
            m14272instanceof(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.f12833transient = null;
            m14270implements(null, false);
        }
        this.b = z3;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m14245catch(int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                this.f12811for.setGravity(1);
                return;
            } else if (i2 != 2) {
                return;
            }
        }
        this.f12811for.setGravity(GravityCompat.START);
    }

    /* renamed from: class, reason: not valid java name */
    private void m14246class() {
        int i2 = this.f12808extends;
        ViewCompat.setPaddingRelative(this.f12811for, (i2 == 0 || i2 == 2) ? Math.max(0, this.f12825static - this.f12819new) : 0, 0, 0, 0);
        int i3 = this.f12808extends;
        if (i3 == 0) {
            m14245catch(this.f12828switch);
        } else if (i3 == 1 || i3 == 2) {
            this.f12811for.setGravity(1);
        }
        f(true);
    }

    /* renamed from: const, reason: not valid java name */
    private int m14247const(int i2, float f2) {
        int i3 = this.f12808extends;
        if (i3 != 0 && i3 != 2) {
            return 0;
        }
        View childAt = this.f12811for.getChildAt(i2);
        int i4 = i2 + 1;
        View childAt2 = i4 < this.f12811for.getChildCount() ? this.f12811for.getChildAt(i4) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i5 = (int) ((width + width2) * 0.5f * f2);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i5 : left - i5;
    }

    private void d() throws Resources.NotFoundException {
        int size = this.f12806do.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f12806do.get(i2).m14330continue();
        }
    }

    private void e(@NonNull LinearLayout.LayoutParams layoutParams) {
        if (this.f12808extends == 1 && this.f12828switch == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m14249else(@NonNull TabItem tabItem) throws Resources.NotFoundException {
        Celse celseM14274package = m14274package();
        CharSequence charSequence = tabItem.f12795do;
        if (charSequence != null) {
            celseM14274package.m14324abstract(charSequence);
        }
        Drawable drawable = tabItem.f12797if;
        if (drawable != null) {
            celseM14274package.m14348throws(drawable);
        }
        int i2 = tabItem.f12796for;
        if (i2 != 0) {
            celseM14274package.m14342return(i2);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            celseM14274package.m14341public(tabItem.getContentDescription());
        }
        m14269for(celseM14274package);
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.f12806do.size();
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                Celse celse = this.f12806do.get(i2);
                if (celse != null && celse.m14336goto() != null && !TextUtils.isEmpty(celse.m14334final())) {
                    z2 = true;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        return (!z2 || this.f12810finally) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i2 = this.f12818native;
        if (i2 != -1) {
            return i2;
        }
        int i3 = this.f12808extends;
        if (i3 == 0 || i3 == 2) {
            return this.f12824return;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f12811for.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* renamed from: goto, reason: not valid java name */
    private void m14250goto(@NonNull Celse celse) {
        TabView tabView = celse.f12874this;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.f12811for.addView(tabView, celse.m14327catch(), m14261while());
    }

    /* renamed from: interface, reason: not valid java name */
    private void m14252interface(int i2) throws Resources.NotFoundException {
        TabView tabView = (TabView) this.f12811for.getChildAt(i2);
        this.f12811for.removeViewAt(i2);
        if (tabView != null) {
            tabView.m14309native();
            this.c.release(tabView);
        }
        requestLayout();
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    private TabView m14253native(@NonNull Celse celse) throws Resources.NotFoundException {
        Pools.Pool<TabView> pool = this.c;
        TabView tabViewAcquire = pool != null ? pool.acquire() : null;
        if (tabViewAcquire == null) {
            tabViewAcquire = new TabView(getContext());
        }
        tabViewAcquire.setTab(celse);
        tabViewAcquire.setFocusable(true);
        tabViewAcquire.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(celse.f12873new)) {
            tabViewAcquire.setContentDescription(celse.f12870for);
        } else {
            tabViewAcquire.setContentDescription(celse.f12873new);
        }
        return tabViewAcquire;
    }

    /* renamed from: public, reason: not valid java name */
    private void m14254public(@NonNull Celse celse) {
        for (int size = this.f12835volatile.size() - 1; size >= 0; size--) {
            this.f12835volatile.get(size).onTabReselected(celse);
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m14255return(@NonNull Celse celse) {
        for (int size = this.f12835volatile.size() - 1; size >= 0; size--) {
            this.f12835volatile.get(size).onTabSelected(celse);
        }
    }

    private void setSelectedTabView(int i2) {
        int childCount = this.f12811for.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = this.f12811for.getChildAt(i3);
                boolean z2 = true;
                childAt.setSelected(i3 == i2);
                if (i3 != i2) {
                    z2 = false;
                }
                childAt.setActivated(z2);
                i3++;
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m14256static(@NonNull Celse celse) {
        for (int size = this.f12835volatile.size() - 1; size >= 0; size--) {
            this.f12835volatile.get(size).onTabUnselected(celse);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m14257super(@NonNull Celse celse, int i2) {
        celse.m14333extends(i2);
        this.f12806do.add(i2, celse);
        int size = this.f12806do.size();
        while (true) {
            i2++;
            if (i2 >= size) {
                return;
            } else {
                this.f12806do.get(i2).m14333extends(i2);
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private void m14258switch() {
        if (this.f12822protected == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f12822protected = valueAnimator;
            valueAnimator.setInterpolator(w1.f7371if);
            this.f12822protected.setDuration(this.f12832throws);
            this.f12822protected.addUpdateListener(new Cdo());
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m14259this(View view) throws Resources.NotFoundException {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        m14249else((TabItem) view);
    }

    @NonNull
    /* renamed from: throw, reason: not valid java name */
    private static ColorStateList m14260throw(int i2, int i3) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i3, i2});
    }

    @NonNull
    /* renamed from: while, reason: not valid java name */
    private LinearLayout.LayoutParams m14261while() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        e(layoutParams);
        return layoutParams;
    }

    public void a(int i2, int i3) throws Resources.NotFoundException {
        setTabTextColors(m14260throw(i2, i3));
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m14262abstract(Celse celse) {
        return l.release(celse);
    }

    public void addOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        addOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) throws Resources.NotFoundException {
        m14259this(view);
    }

    public void b(@Nullable ViewPager viewPager, boolean z2) throws Resources.NotFoundException {
        c(viewPager, z2, false);
    }

    /* renamed from: case, reason: not valid java name */
    public void m14263case(@NonNull Celse celse, boolean z2) {
        m14281try(celse, this.f12806do.size(), z2);
    }

    /* renamed from: continue, reason: not valid java name */
    public void m14264continue() throws Resources.NotFoundException {
        for (int childCount = this.f12811for.getChildCount() - 1; childCount >= 0; childCount--) {
            m14252interface(childCount);
        }
        Iterator<Celse> it = this.f12806do.iterator();
        while (it.hasNext()) {
            Celse next = it.next();
            it.remove();
            next.m14350while();
            m14262abstract(next);
        }
        this.f12813if = null;
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m14265default() {
        return this.f12798abstract;
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m14266extends() {
        return this.f12810finally;
    }

    public void f(boolean z2) {
        for (int i2 = 0; i2 < this.f12811for.getChildCount(); i2++) {
            View childAt = this.f12811for.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            e((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z2) {
                childAt.requestLayout();
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void m14267final() {
        this.f12835volatile.clear();
    }

    /* renamed from: finally, reason: not valid java name */
    public boolean m14268finally() {
        return this.f12820package;
    }

    /* renamed from: for, reason: not valid java name */
    public void m14269for(@NonNull Celse celse) {
        m14263case(celse, this.f12806do.isEmpty());
    }

    public int getSelectedTabPosition() {
        Celse celse = this.f12813if;
        if (celse != null) {
            return celse.m14327catch();
        }
        return -1;
    }

    public int getTabCount() {
        return this.f12806do.size();
    }

    public int getTabGravity() {
        return this.f12828switch;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f12799break;
    }

    public int getTabIndicatorAnimationMode() {
        return this.f12821private;
    }

    public int getTabIndicatorGravity() {
        return this.f12805default;
    }

    public int getTabMaxWidth() {
        return this.f12815import;
    }

    public int getTabMode() {
        return this.f12808extends;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f12801catch;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.f12802class;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f12830this;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m14270implements(@Nullable PagerAdapter pagerAdapter, boolean z2) throws Resources.NotFoundException {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.f12814implements;
        if (pagerAdapter2 != null && (dataSetObserver = this.f12816instanceof) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f12814implements = pagerAdapter;
        if (z2 && pagerAdapter != null) {
            if (this.f12816instanceof == null) {
                this.f12816instanceof = new Ctry();
            }
            pagerAdapter.registerDataSetObserver(this.f12816instanceof);
        }
        m14275private();
    }

    /* renamed from: import, reason: not valid java name */
    public Celse m14271import() {
        Celse celseAcquire = l.acquire();
        return celseAcquire == null ? new Celse() : celseAcquire;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m14272instanceof(int i2, float f2, boolean z2) {
        m14278synchronized(i2, f2, z2, true);
    }

    /* renamed from: new, reason: not valid java name */
    public void m14273new(@NonNull Celse celse, int i2) {
        m14281try(celse, i2, this.f12806do.isEmpty());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() throws Resources.NotFoundException {
        super.onAttachedToWindow();
        tx0.m8145try(this);
        if (this.f12833transient == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                c((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() throws Resources.NotFoundException {
        super.onDetachedFromWindow();
        if (this.b) {
            setupWithViewPager(null);
            this.b = false;
        }
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        for (int i2 = 0; i2 < this.f12811for.getChildCount(); i2++) {
            View childAt = this.f12811for.getChildAt(i2);
            if (childAt instanceof TabView) {
                ((TabView) childAt).m14288const(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0082  */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i2, int i3) {
        int iRound = Math.round(ViewUtils.m13624try(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i3);
        boolean z2 = false;
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i3 = View.MeasureSpec.makeMeasureSpec(iRound + getPaddingTop() + getPaddingBottom(), 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i3) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            int iM13624try = this.f12823public;
            if (iM13624try <= 0) {
                iM13624try = (int) (size - ViewUtils.m13624try(getContext(), 56));
            }
            this.f12815import = iM13624try;
        }
        super.onMeasure(i2, i3);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i4 = this.f12808extends;
            if (i4 == 0) {
                if (childAt.getMeasuredWidth() < getMeasuredWidth()) {
                    z2 = true;
                }
            } else if (i4 != 1) {
                if (i4 == 2) {
                }
            } else if (childAt.getMeasuredWidth() != getMeasuredWidth()) {
            }
            if (z2) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), HorizontalScrollView.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    @NonNull
    /* renamed from: package, reason: not valid java name */
    public Celse m14274package() {
        Celse celseM14271import = m14271import();
        celseM14271import.f12871goto = this;
        celseM14271import.f12874this = m14253native(celseM14271import);
        if (celseM14271import.f12866break != -1) {
            celseM14271import.f12874this.setId(celseM14271import.f12866break);
        }
        return celseM14271import;
    }

    /* renamed from: private, reason: not valid java name */
    public void m14275private() throws Resources.NotFoundException {
        int currentItem;
        m14264continue();
        PagerAdapter pagerAdapter = this.f12814implements;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i2 = 0; i2 < count; i2++) {
                m14263case(m14274package().m14324abstract(this.f12814implements.getPageTitle(i2)), false);
            }
            ViewPager viewPager = this.f12833transient;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            m14276protected(m14279throws(currentItem));
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public void m14276protected(@Nullable Celse celse) {
        m14280transient(celse, true);
    }

    public void removeOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        removeOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f2) {
        super.setElevation(f2);
        tx0.m8144new(this, f2);
    }

    public void setInlineLabel(boolean z2) {
        if (this.f12810finally != z2) {
            this.f12810finally = z2;
            for (int i2 = 0; i2 < this.f12811for.getChildCount(); i2++) {
                View childAt = this.f12811for.getChildAt(i2);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m14308extends();
                }
            }
            m14246class();
        }
    }

    public void setInlineLabelResource(@BoolRes int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        m14258switch();
        this.f12822protected.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.f12802class != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.f12802class = drawable;
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i2) {
        this.f12803const = i2;
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.f12805default != i2) {
            this.f12805default = i2;
            ViewCompat.postInvalidateOnAnimation(this.f12811for);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.f12811for.m14316else(i2);
    }

    public void setTabGravity(int i2) {
        if (this.f12828switch != i2) {
            this.f12828switch = i2;
            m14246class();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.f12799break != colorStateList) {
            this.f12799break = colorStateList;
            d();
        }
    }

    public void setTabIconTintResource(@ColorRes int i2) throws Resources.NotFoundException {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i2));
    }

    public void setTabIndicatorAnimationMode(int i2) {
        this.f12821private = i2;
        if (i2 == 0) {
            this.f12804continue = new com.google.android.material.tabs.Cif();
        } else {
            if (i2 == 1) {
                this.f12804continue = new com.google.android.material.tabs.Cdo();
                return;
            }
            throw new IllegalArgumentException(i2 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z2) {
        this.f12820package = z2;
        ViewCompat.postInvalidateOnAnimation(this.f12811for);
    }

    public void setTabMode(int i2) {
        if (i2 != this.f12808extends) {
            this.f12808extends = i2;
            m14246class();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f12801catch != colorStateList) {
            this.f12801catch = colorStateList;
            for (int i2 = 0; i2 < this.f12811for.getChildCount(); i2++) {
                View childAt = this.f12811for.getChildAt(i2);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m14289default(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i2) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i2));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.f12830this != colorStateList) {
            this.f12830this = colorStateList;
            d();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) throws Resources.NotFoundException {
        m14270implements(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z2) {
        if (this.f12798abstract != z2) {
            this.f12798abstract = z2;
            for (int i2 = 0; i2 < this.f12811for.getChildCount(); i2++) {
                View childAt = this.f12811for.getChildAt(i2);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m14289default(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) throws Resources.NotFoundException {
        b(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m14277strictfp(@NonNull Celse celse) throws Resources.NotFoundException {
        if (celse.f12871goto != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        m14282volatile(celse.m14327catch());
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m14278synchronized(int i2, float f2, boolean z2, boolean z3) {
        int iRound = Math.round(i2 + f2);
        if (iRound < 0 || iRound >= this.f12811for.getChildCount()) {
            return;
        }
        if (z3) {
            this.f12811for.m14315case(i2, f2);
        }
        ValueAnimator valueAnimator = this.f12822protected;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f12822protected.cancel();
        }
        scrollTo(m14247const(i2, f2), 0);
        if (z2) {
            setSelectedTabView(iRound);
        }
    }

    @Nullable
    /* renamed from: throws, reason: not valid java name */
    public Celse m14279throws(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return this.f12806do.get(i2);
    }

    /* renamed from: transient, reason: not valid java name */
    public void m14280transient(@Nullable Celse celse, boolean z2) {
        Celse celse2 = this.f12813if;
        if (celse2 == celse) {
            if (celse2 != null) {
                m14254public(celse);
                m14244break(celse.m14327catch());
                return;
            }
            return;
        }
        int iM14327catch = celse != null ? celse.m14327catch() : -1;
        if (z2) {
            if ((celse2 == null || celse2.m14327catch() == -1) && iM14327catch != -1) {
                m14272instanceof(iM14327catch, 0.0f, true);
            } else {
                m14244break(iM14327catch);
            }
            if (iM14327catch != -1) {
                setSelectedTabView(iM14327catch);
            }
        }
        this.f12813if = celse;
        if (celse2 != null) {
            m14256static(celse2);
        }
        if (celse != null) {
            m14255return(celse);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m14281try(@NonNull Celse celse, int i2, boolean z2) {
        if (celse.f12871goto != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        m14257super(celse, i2);
        m14250goto(celse);
        if (z2) {
            celse.m14337import();
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m14282volatile(int i2) throws Resources.NotFoundException {
        Celse celse = this.f12813if;
        int iM14327catch = celse != null ? celse.m14327catch() : 0;
        m14252interface(i2);
        Celse celseRemove = this.f12806do.remove(i2);
        if (celseRemove != null) {
            celseRemove.m14350while();
            m14262abstract(celseRemove);
        }
        int size = this.f12806do.size();
        for (int i3 = i2; i3 < size; i3++) {
            this.f12806do.get(i3).m14333extends(i3);
        }
        if (iM14327catch == i2) {
            m14276protected(this.f12806do.isEmpty() ? null : this.f12806do.get(Math.max(0, i2 - 1)));
        }
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    @Deprecated
    public void addOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        if (this.f12835volatile.contains(baseOnTabSelectedListener)) {
            return;
        }
        this.f12835volatile.add(baseOnTabSelectedListener);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) throws Resources.NotFoundException {
        m14259this(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void removeOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        this.f12835volatile.remove(baseOnTabSelectedListener);
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.f12826strictfp;
        if (baseOnTabSelectedListener2 != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener2);
        }
        this.f12826strictfp = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener != null) {
            addOnTabSelectedListener(baseOnTabSelectedListener);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) throws Resources.NotFoundException {
        int i3 = d;
        super(vx0.m8993for(context, attributeSet, i2, i3), attributeSet, i2);
        this.f12806do = new ArrayList<>();
        this.f12802class = new GradientDrawable();
        this.f12803const = 0;
        this.f12815import = Integer.MAX_VALUE;
        this.f12835volatile = new ArrayList<>();
        this.c = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        Ccase ccase = new Ccase(context2);
        this.f12811for = ccase;
        super.addView(ccase, 0, new FrameLayout.LayoutParams(-2, -1));
        int[] iArr = R.styleable.TabLayout;
        int i4 = R.styleable.TabLayout_tabTextAppearance;
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, iArr, i2, i3, i4);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.z(ColorStateList.valueOf(colorDrawable.getColor()));
            materialShapeDrawable.k(context2);
            materialShapeDrawable.y(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        setSelectedTabIndicator(sx0.m7654new(context2, typedArrayM4267break, R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorColor(typedArrayM4267break.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        ccase.m14316else(typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, -1));
        setSelectedTabIndicatorGravity(typedArrayM4267break.getInt(R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(typedArrayM4267break.getBoolean(R.styleable.TabLayout_tabIndicatorFullWidth, true));
        setTabIndicatorAnimationMode(typedArrayM4267break.getInt(R.styleable.TabLayout_tabIndicatorAnimationMode, 0));
        int dimensionPixelSize = typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.f12807else = dimensionPixelSize;
        this.f12800case = dimensionPixelSize;
        this.f12834try = dimensionPixelSize;
        this.f12819new = dimensionPixelSize;
        this.f12819new = typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.f12834try = typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.f12834try);
        this.f12800case = typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.f12800case);
        this.f12807else = typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.f12807else);
        int resourceId = typedArrayM4267break.getResourceId(i4, R.style.TextAppearance_Design_Tab);
        this.f12812goto = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, androidx.appcompat.R.styleable.TextAppearance);
        try {
            this.f12827super = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            this.f12830this = sx0.m7649do(context2, typedArrayObtainStyledAttributes, androidx.appcompat.R.styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes.recycle();
            int i5 = R.styleable.TabLayout_tabTextColor;
            if (typedArrayM4267break.hasValue(i5)) {
                this.f12830this = sx0.m7649do(context2, typedArrayM4267break, i5);
            }
            int i6 = R.styleable.TabLayout_tabSelectedTextColor;
            if (typedArrayM4267break.hasValue(i6)) {
                this.f12830this = m14260throw(this.f12830this.getDefaultColor(), typedArrayM4267break.getColor(i6, 0));
            }
            this.f12799break = sx0.m7649do(context2, typedArrayM4267break, R.styleable.TabLayout_tabIconTint);
            this.f12809final = ViewUtils.m13612catch(typedArrayM4267break.getInt(R.styleable.TabLayout_tabIconTintMode, -1), null);
            this.f12801catch = sx0.m7649do(context2, typedArrayM4267break, R.styleable.TabLayout_tabRippleColor);
            this.f12832throws = typedArrayM4267break.getInt(R.styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.f12818native = typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.f12823public = typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.f12836while = typedArrayM4267break.getResourceId(R.styleable.TabLayout_tabBackground, 0);
            this.f12825static = typedArrayM4267break.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.f12808extends = typedArrayM4267break.getInt(R.styleable.TabLayout_tabMode, 1);
            this.f12828switch = typedArrayM4267break.getInt(R.styleable.TabLayout_tabGravity, 0);
            this.f12810finally = typedArrayM4267break.getBoolean(R.styleable.TabLayout_tabInlineLabel, false);
            this.f12798abstract = typedArrayM4267break.getBoolean(R.styleable.TabLayout_tabUnboundedRipple, false);
            typedArrayM4267break.recycle();
            Resources resources = getResources();
            this.f12831throw = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.f12824return = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            m14246class();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) throws Resources.NotFoundException {
        m14259this(view);
    }

    public void setSelectedTabIndicator(@DrawableRes int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) throws Resources.NotFoundException {
        m14259this(view);
    }
}
