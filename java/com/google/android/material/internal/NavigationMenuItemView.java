package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView.ItemView {

    /* renamed from: while, reason: not valid java name */
    private static final int[] f12060while = {R.attr.state_checked};

    /* renamed from: break, reason: not valid java name */
    private final CheckedTextView f12061break;

    /* renamed from: catch, reason: not valid java name */
    private FrameLayout f12062catch;

    /* renamed from: class, reason: not valid java name */
    private MenuItemImpl f12063class;

    /* renamed from: const, reason: not valid java name */
    private ColorStateList f12064const;

    /* renamed from: else, reason: not valid java name */
    private int f12065else;

    /* renamed from: final, reason: not valid java name */
    private boolean f12066final;

    /* renamed from: goto, reason: not valid java name */
    private boolean f12067goto;

    /* renamed from: super, reason: not valid java name */
    private Drawable f12068super;

    /* renamed from: this, reason: not valid java name */
    public boolean f12069this;

    /* renamed from: throw, reason: not valid java name */
    private final AccessibilityDelegateCompat f12070throw;

    /* renamed from: com.google.android.material.internal.NavigationMenuItemView$do, reason: invalid class name */
    public class Cdo extends AccessibilityDelegateCompat {
        public Cdo() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f12069this);
        }
    }

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m13543do() {
        if (m13545new()) {
            this.f12061break.setVisibility(8);
            FrameLayout frameLayout = this.f12062catch;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).width = -1;
                this.f12062catch.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.f12061break.setVisibility(0);
        FrameLayout frameLayout2 = this.f12062catch;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -2;
            this.f12062catch.setLayoutParams(layoutParams2);
        }
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    private StateListDrawable m13544if() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f12060while, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m13545new() {
        return this.f12063class.getTitle() == null && this.f12063class.getIcon() == null && this.f12063class.getActionView() != null;
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f12062catch == null) {
                this.f12062catch = (FrameLayout) ((ViewStub) findViewById(com.google.android.material.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f12062catch.removeAllViews();
            this.f12062catch.addView(view);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m13546for() {
        FrameLayout frameLayout = this.f12062catch;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f12061break.setCompoundDrawables(null, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f12063class;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i) {
        this.f12063class = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, m13544if());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        m13543do();
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.f12063class;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f12063class.isChecked()) {
            ViewGroup.mergeDrawableStates(iArrOnCreateDrawableState, f12060while);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f12069this != z) {
            this.f12069this = z;
            this.f12070throw.sendAccessibilityEvent(this.f12061break, 2048);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f12061break.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) throws Resources.NotFoundException {
        if (drawable != null) {
            if (this.f12066final) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.f12064const);
            }
            int i = this.f12065else;
            drawable.setBounds(0, 0, i, i);
        } else if (this.f12067goto) {
            if (this.f12068super == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), com.google.android.material.R.drawable.navigation_empty_icon, getContext().getTheme());
                this.f12068super = drawable2;
                if (drawable2 != null) {
                    int i2 = this.f12065else;
                    drawable2.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f12068super;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.f12061break, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f12061break.setCompoundDrawablePadding(i);
    }

    public void setIconSize(@Dimension int i) {
        this.f12065else = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f12064const = colorStateList;
        this.f12066final = colorStateList != null;
        MenuItemImpl menuItemImpl = this.f12063class;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f12061break.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f12067goto = z;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.f12061break, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f12061break.setTextColor(colorStateList);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.f12061break.setText(charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Cdo cdo = new Cdo();
        this.f12070throw = cdo;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.google.android.material.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.google.android.material.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.google.android.material.R.id.design_menu_item_text);
        this.f12061break = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, cdo);
    }
}
