package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.badge.BadgeDrawable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class NavigationBarItemView extends FrameLayout implements MenuView.ItemView {

    /* renamed from: import, reason: not valid java name */
    private static final int[] f12221import = {R.attr.state_checked};

    /* renamed from: while, reason: not valid java name */
    private static final int f12222while = -1;

    /* renamed from: break, reason: not valid java name */
    private final TextView f12223break;

    /* renamed from: case, reason: not valid java name */
    private boolean f12224case;

    /* renamed from: catch, reason: not valid java name */
    private int f12225catch;

    /* renamed from: class, reason: not valid java name */
    @Nullable
    private MenuItemImpl f12226class;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private ColorStateList f12227const;

    /* renamed from: do, reason: not valid java name */
    private final int f12228do;

    /* renamed from: else, reason: not valid java name */
    private ImageView f12229else;

    /* renamed from: final, reason: not valid java name */
    @Nullable
    private Drawable f12230final;

    /* renamed from: for, reason: not valid java name */
    private float f12231for;

    /* renamed from: goto, reason: not valid java name */
    private final ViewGroup f12232goto;

    /* renamed from: if, reason: not valid java name */
    private float f12233if;

    /* renamed from: new, reason: not valid java name */
    private float f12234new;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private Drawable f12235super;

    /* renamed from: this, reason: not valid java name */
    private final TextView f12236this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private BadgeDrawable f12237throw;

    /* renamed from: try, reason: not valid java name */
    private int f12238try;

    /* renamed from: com.google.android.material.navigation.NavigationBarItemView$do, reason: invalid class name */
    public class Cdo implements View.OnLayoutChangeListener {
        public Cdo() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
            if (NavigationBarItemView.this.f12229else.getVisibility() == 0) {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                navigationBarItemView.m13694catch(navigationBarItemView.f12229else);
            }
        }
    }

    public NavigationBarItemView(@NonNull Context context) {
        super(context);
        this.f12225catch = -1;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f12229else = (ImageView) findViewById(com.google.android.material.R.id.navigation_bar_item_icon_view);
        ViewGroup viewGroup = (ViewGroup) findViewById(com.google.android.material.R.id.navigation_bar_item_labels_group);
        this.f12232goto = viewGroup;
        TextView textView = (TextView) findViewById(com.google.android.material.R.id.navigation_bar_item_small_label_view);
        this.f12236this = textView;
        TextView textView2 = (TextView) findViewById(com.google.android.material.R.id.navigation_bar_item_large_label_view);
        this.f12223break = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f12228do = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        viewGroup.setTag(com.google.android.material.R.id.mtrl_view_tag_bottom_padding, Integer.valueOf(viewGroup.getPaddingBottom()));
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        m13698for(textView.getTextSize(), textView2.getTextSize());
        ImageView imageView = this.f12229else;
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new Cdo());
        }
    }

    /* renamed from: break, reason: not valid java name */
    private void m13693break(@Nullable View view) {
        if (m13703try()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                com.google.android.material.badge.Cdo.m12770else(this.f12237throw, view);
            }
            this.f12237throw = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m13694catch(View view) throws Resources.NotFoundException {
        if (m13703try()) {
            com.google.android.material.badge.Cdo.m12765break(this.f12237throw, view, m13701new(view));
        }
    }

    /* renamed from: class, reason: not valid java name */
    private static void m13695class(@NonNull View view, int i) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    /* renamed from: else, reason: not valid java name */
    private static void m13697else(@NonNull View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: for, reason: not valid java name */
    private void m13698for(float f, float f2) {
        this.f12233if = f - f2;
        this.f12231for = (f2 * 1.0f) / f;
        this.f12234new = (f * 1.0f) / f2;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        for (int i2 = 0; i2 < iIndexOfChild; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    private int getSuggestedIconHeight() {
        BadgeDrawable badgeDrawable = this.f12237throw;
        int minimumHeight = badgeDrawable != null ? badgeDrawable.getMinimumHeight() / 2 : 0;
        return Math.max(minimumHeight, ((FrameLayout.LayoutParams) this.f12229else.getLayoutParams()).topMargin) + this.f12229else.getMeasuredWidth() + minimumHeight;
    }

    private int getSuggestedIconWidth() {
        BadgeDrawable badgeDrawable = this.f12237throw;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.f12237throw.m12732throw();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f12229else.getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.f12229else.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m13699goto(@NonNull View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    private FrameLayout m13701new(View view) {
        ImageView imageView = this.f12229else;
        if (view == imageView && com.google.android.material.badge.Cdo.f11313do) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    private void m13702this(@Nullable View view) throws Resources.NotFoundException {
        if (m13703try() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.Cdo.m12773if(this.f12237throw, view, m13701new(view));
        }
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m13703try() {
        return this.f12237throw != null;
    }

    /* renamed from: case, reason: not valid java name */
    public void m13704case() {
        m13693break(this.f12229else);
    }

    @Nullable
    public BadgeDrawable getBadge() {
        return this.f12237throw;
    }

    @DrawableRes
    public int getItemBackgroundResId() {
        return com.google.android.material.R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return this.f12226class;
    }

    @DimenRes
    public int getItemDefaultMarginResId() {
        return com.google.android.material.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    @LayoutRes
    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f12225catch;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f12232goto.getLayoutParams();
        return getSuggestedIconHeight() + layoutParams.topMargin + this.f12232goto.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f12232goto.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.f12232goto.getMeasuredWidth() + layoutParams.rightMargin);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i) {
        this.f12226class = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        CharSequence tooltipText = !TextUtils.isEmpty(menuItemImpl.getTooltipText()) ? menuItemImpl.getTooltipText() : menuItemImpl.getTitle();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21 || i2 > 23) {
            TooltipCompat.setTooltipText(this, tooltipText);
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
    }

    @Override // android.view.ViewGroup, android.view.View
    @NonNull
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.f12226class;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f12226class.isChecked()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, f12221import);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.f12237throw;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f12226class.getTitle();
            if (!TextUtils.isEmpty(this.f12226class.getContentDescription())) {
                title = this.f12226class.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.f12237throw.m12715final()));
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(com.google.android.material.R.string.item_view_role_description));
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setBadge(@NonNull BadgeDrawable badgeDrawable) throws Resources.NotFoundException {
        this.f12237throw = badgeDrawable;
        ImageView imageView = this.f12229else;
        if (imageView != null) {
            m13702this(imageView);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        this.f12223break.setPivotX(r0.getWidth() / 2);
        this.f12223break.setPivotY(r0.getBaseline());
        this.f12236this.setPivotX(r0.getWidth() / 2);
        this.f12236this.setPivotY(r0.getBaseline());
        int i = this.f12238try;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    m13697else(this.f12229else, this.f12228do, 49);
                    ViewGroup viewGroup = this.f12232goto;
                    m13695class(viewGroup, ((Integer) viewGroup.getTag(com.google.android.material.R.id.mtrl_view_tag_bottom_padding)).intValue());
                    this.f12223break.setVisibility(0);
                } else {
                    m13697else(this.f12229else, this.f12228do, 17);
                    m13695class(this.f12232goto, 0);
                    this.f12223break.setVisibility(4);
                }
                this.f12236this.setVisibility(4);
            } else if (i == 1) {
                ViewGroup viewGroup2 = this.f12232goto;
                m13695class(viewGroup2, ((Integer) viewGroup2.getTag(com.google.android.material.R.id.mtrl_view_tag_bottom_padding)).intValue());
                if (z) {
                    m13697else(this.f12229else, (int) (this.f12228do + this.f12233if), 49);
                    m13699goto(this.f12223break, 1.0f, 1.0f, 0);
                    TextView textView = this.f12236this;
                    float f = this.f12231for;
                    m13699goto(textView, f, f, 4);
                } else {
                    m13697else(this.f12229else, this.f12228do, 49);
                    TextView textView2 = this.f12223break;
                    float f2 = this.f12234new;
                    m13699goto(textView2, f2, f2, 4);
                    m13699goto(this.f12236this, 1.0f, 1.0f, 0);
                }
            } else if (i == 2) {
                m13697else(this.f12229else, this.f12228do, 17);
                this.f12223break.setVisibility(8);
                this.f12236this.setVisibility(8);
            }
        } else if (this.f12224case) {
            if (z) {
                m13697else(this.f12229else, this.f12228do, 49);
                ViewGroup viewGroup3 = this.f12232goto;
                m13695class(viewGroup3, ((Integer) viewGroup3.getTag(com.google.android.material.R.id.mtrl_view_tag_bottom_padding)).intValue());
                this.f12223break.setVisibility(0);
            } else {
                m13697else(this.f12229else, this.f12228do, 17);
                m13695class(this.f12232goto, 0);
                this.f12223break.setVisibility(4);
            }
            this.f12236this.setVisibility(4);
        } else {
            ViewGroup viewGroup4 = this.f12232goto;
            m13695class(viewGroup4, ((Integer) viewGroup4.getTag(com.google.android.material.R.id.mtrl_view_tag_bottom_padding)).intValue());
            if (z) {
                m13697else(this.f12229else, (int) (this.f12228do + this.f12233if), 49);
                m13699goto(this.f12223break, 1.0f, 1.0f, 0);
                TextView textView3 = this.f12236this;
                float f3 = this.f12231for;
                m13699goto(textView3, f3, f3, 4);
            } else {
                m13697else(this.f12229else, this.f12228do, 49);
                TextView textView4 = this.f12223break;
                float f4 = this.f12234new;
                m13699goto(textView4, f4, f4, 4);
                m13699goto(this.f12236this, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f12236this.setEnabled(z);
        this.f12223break.setEnabled(z);
        this.f12229else.setEnabled(z);
        if (z) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.f12230final) {
            return;
        }
        this.f12230final = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            this.f12235super = drawable;
            ColorStateList colorStateList = this.f12227const;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
        this.f12229else.setImageDrawable(drawable);
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f12229else.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f12229else.setLayoutParams(layoutParams);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.f12227const = colorStateList;
        if (this.f12226class == null || (drawable = this.f12235super) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable, colorStateList);
        this.f12235super.invalidateSelf();
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemPosition(int i) {
        this.f12225catch = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f12238try != i) {
            this.f12238try = i;
            MenuItemImpl menuItemImpl = this.f12226class;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setShifting(boolean z) {
        if (this.f12224case != z) {
            this.f12224case = z;
            MenuItemImpl menuItemImpl = this.f12226class;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearanceActive(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f12223break, i);
        m13698for(this.f12236this.getTextSize(), this.f12223break.getTextSize());
    }

    public void setTextAppearanceInactive(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f12236this, i);
        m13698for(this.f12236this.getTextSize(), this.f12223break.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f12236this.setTextColor(colorStateList);
            this.f12223break.setTextColor(colorStateList);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(@Nullable CharSequence charSequence) {
        this.f12236this.setText(charSequence);
        this.f12223break.setText(charSequence);
        MenuItemImpl menuItemImpl = this.f12226class;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.f12226class;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.f12226class.getTooltipText();
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 21 || i > 23) {
            TooltipCompat.setTooltipText(this, charSequence);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        ViewCompat.setBackground(this, drawable);
    }
}
