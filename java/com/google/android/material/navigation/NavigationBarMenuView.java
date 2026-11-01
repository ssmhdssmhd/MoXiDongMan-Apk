package com.google.android.material.navigation;

import android.R;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.TextScale;
import java.util.HashSet;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {

    /* renamed from: public, reason: not valid java name */
    private static final long f12242public = 115;

    /* renamed from: return, reason: not valid java name */
    private static final int f12243return = 5;

    /* renamed from: static, reason: not valid java name */
    private static final int[] f12244static = {R.attr.state_checked};

    /* renamed from: switch, reason: not valid java name */
    private static final int[] f12245switch = {-16842910};

    /* renamed from: break, reason: not valid java name */
    @Dimension
    private int f12246break;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private NavigationBarItemView[] f12247case;

    /* renamed from: catch, reason: not valid java name */
    private ColorStateList f12248catch;

    /* renamed from: class, reason: not valid java name */
    @Nullable
    private final ColorStateList f12249class;

    /* renamed from: const, reason: not valid java name */
    @StyleRes
    private int f12250const;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final TransitionSet f12251do;

    /* renamed from: else, reason: not valid java name */
    private int f12252else;

    /* renamed from: final, reason: not valid java name */
    @StyleRes
    private int f12253final;

    /* renamed from: for, reason: not valid java name */
    private final Pools.Pool<NavigationBarItemView> f12254for;

    /* renamed from: goto, reason: not valid java name */
    private int f12255goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final View.OnClickListener f12256if;

    /* renamed from: import, reason: not valid java name */
    private NavigationBarPresenter f12257import;

    /* renamed from: native, reason: not valid java name */
    private MenuBuilder f12258native;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    private final SparseArray<View.OnTouchListener> f12259new;

    /* renamed from: super, reason: not valid java name */
    private Drawable f12260super;

    /* renamed from: this, reason: not valid java name */
    @Nullable
    private ColorStateList f12261this;

    /* renamed from: throw, reason: not valid java name */
    private int f12262throw;

    /* renamed from: try, reason: not valid java name */
    private int f12263try;

    /* renamed from: while, reason: not valid java name */
    @NonNull
    private SparseArray<BadgeDrawable> f12264while;

    /* renamed from: com.google.android.material.navigation.NavigationBarMenuView$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
            if (NavigationBarMenuView.this.f12258native.performItemAction(itemData, NavigationBarMenuView.this.f12257import, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public NavigationBarMenuView(@NonNull Context context) {
        super(context);
        this.f12254for = new Pools.SynchronizedPool(5);
        this.f12259new = new SparseArray<>(5);
        this.f12252else = 0;
        this.f12255goto = 0;
        this.f12264while = new SparseArray<>(5);
        this.f12249class = m13718new(R.attr.textColorSecondary);
        AutoTransition autoTransition = new AutoTransition();
        this.f12251do = autoTransition;
        autoTransition.setOrdering(0);
        autoTransition.setDuration(f12242public);
        autoTransition.setInterpolator((TimeInterpolator) new FastOutSlowInInterpolator());
        autoTransition.addTransition(new TextScale());
        this.f12256if = new Cdo();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    /* renamed from: break, reason: not valid java name */
    private boolean m13706break(int i) {
        return i != -1;
    }

    /* renamed from: class, reason: not valid java name */
    private void m13707class() {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.f12258native.size(); i++) {
            hashSet.add(Integer.valueOf(this.f12258native.getItem(i).getItemId()));
        }
        for (int i2 = 0; i2 < this.f12264while.size(); i2++) {
            int iKeyAt = this.f12264while.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                this.f12264while.delete(iKeyAt);
            }
        }
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView navigationBarItemViewAcquire = this.f12254for.acquire();
        return navigationBarItemViewAcquire == null ? mo12847try(getContext()) : navigationBarItemViewAcquire;
    }

    private void setBadgeIfNeeded(@NonNull NavigationBarItemView navigationBarItemView) throws Resources.NotFoundException {
        BadgeDrawable badgeDrawable;
        int id = navigationBarItemView.getId();
        if (m13706break(id) && (badgeDrawable = this.f12264while.get(id)) != null) {
            navigationBarItemView.setBadge(badgeDrawable);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m13710throw(int i) {
        if (m13706break(i)) {
            return;
        }
        throw new IllegalArgumentException(i + " is not a valid view id");
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    public NavigationBarItemView m13711case(int i) {
        m13710throw(i);
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr == null) {
            return null;
        }
        for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
            if (navigationBarItemView.getId() == i) {
                return navigationBarItemView;
            }
        }
        return null;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m13712catch(int i) {
        m13710throw(i);
        BadgeDrawable badgeDrawable = this.f12264while.get(i);
        NavigationBarItemView navigationBarItemViewM13711case = m13711case(i);
        if (navigationBarItemViewM13711case != null) {
            navigationBarItemViewM13711case.m13704case();
        }
        if (badgeDrawable != null) {
            this.f12264while.remove(i);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: const, reason: not valid java name */
    public void m13713const(int i, @Nullable View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f12259new.remove(i);
        } else {
            this.f12259new.put(i, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().getItemId() == i) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    public BadgeDrawable m13714else(int i) {
        return this.f12264while.get(i);
    }

    /* renamed from: final, reason: not valid java name */
    public void m13715final(int i) {
        int size = this.f12258native.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f12258native.getItem(i2);
            if (i == item.getItemId()) {
                this.f12252else = i;
                this.f12255goto = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: for, reason: not valid java name */
    public void m13716for() {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.f12254for.release(navigationBarItemView);
                    navigationBarItemView.m13704case();
                }
            }
        }
        if (this.f12258native.size() == 0) {
            this.f12252else = 0;
            this.f12255goto = 0;
            this.f12247case = null;
            return;
        }
        m13707class();
        this.f12247case = new NavigationBarItemView[this.f12258native.size()];
        boolean zM13720this = m13720this(this.f12263try, this.f12258native.getVisibleItems().size());
        for (int i = 0; i < this.f12258native.size(); i++) {
            this.f12257import.m13722for(true);
            this.f12258native.getItem(i).setCheckable(true);
            this.f12257import.m13722for(false);
            NavigationBarItemView newItem = getNewItem();
            this.f12247case[i] = newItem;
            newItem.setIconTintList(this.f12261this);
            newItem.setIconSize(this.f12246break);
            newItem.setTextColor(this.f12249class);
            newItem.setTextAppearanceInactive(this.f12250const);
            newItem.setTextAppearanceActive(this.f12253final);
            newItem.setTextColor(this.f12248catch);
            Drawable drawable = this.f12260super;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f12262throw);
            }
            newItem.setShifting(zM13720this);
            newItem.setLabelVisibilityMode(this.f12263try);
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.f12258native.getItem(i);
            newItem.initialize(menuItemImpl, 0);
            newItem.setItemPosition(i);
            int itemId = menuItemImpl.getItemId();
            newItem.setOnTouchListener(this.f12259new.get(itemId));
            newItem.setOnClickListener(this.f12256if);
            int i2 = this.f12252else;
            if (i2 != 0 && itemId == i2) {
                this.f12255goto = i;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.f12258native.size() - 1, this.f12255goto);
        this.f12255goto = iMin;
        this.f12258native.getItem(iMin).setChecked(true);
    }

    public SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.f12264while;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f12261this;
    }

    @Nullable
    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        return (navigationBarItemViewArr == null || navigationBarItemViewArr.length <= 0) ? this.f12260super : navigationBarItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f12262throw;
    }

    @Dimension
    public int getItemIconSize() {
        return this.f12246break;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f12253final;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f12250const;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f12248catch;
    }

    public int getLabelVisibilityMode() {
        return this.f12263try;
    }

    @Nullable
    public MenuBuilder getMenu() {
        return this.f12258native;
    }

    public int getSelectedItemId() {
        return this.f12252else;
    }

    public int getSelectedItemPosition() {
        return this.f12255goto;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public BadgeDrawable m13717goto(int i) throws Resources.NotFoundException {
        m13710throw(i);
        BadgeDrawable badgeDrawableM12700for = this.f12264while.get(i);
        if (badgeDrawableM12700for == null) {
            badgeDrawableM12700for = BadgeDrawable.m12700for(getContext());
            this.f12264while.put(i, badgeDrawableM12700for);
        }
        NavigationBarItemView navigationBarItemViewM13711case = m13711case(i);
        if (navigationBarItemViewM13711case != null) {
            navigationBarItemViewM13711case.setBadge(badgeDrawableM12700for);
        }
        return badgeDrawableM12700for;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(@NonNull MenuBuilder menuBuilder) {
        this.f12258native = menuBuilder;
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public ColorStateList m13718new(int i) throws Resources.NotFoundException {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = f12245switch;
        return new ColorStateList(new int[][]{iArr, f12244static, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f12258native.getVisibleItems().size(), false, 1));
    }

    public void setBadgeDrawables(SparseArray<BadgeDrawable> sparseArray) {
        this.f12264while = sparseArray;
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setBadge(sparseArray.get(navigationBarItemView.getId()));
            }
        }
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f12261this = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f12260super = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.f12262throw = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i);
            }
        }
    }

    public void setItemIconSize(@Dimension int i) {
        this.f12246break = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i);
            }
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.f12253final = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.f12248catch;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.f12250const = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.f12248catch;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f12248catch = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f12247case;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.f12263try = i;
    }

    public void setPresenter(@NonNull NavigationBarPresenter navigationBarPresenter) {
        this.f12257import = navigationBarPresenter;
    }

    /* renamed from: super, reason: not valid java name */
    public void m13719super() {
        MenuBuilder menuBuilder = this.f12258native;
        if (menuBuilder == null || this.f12247case == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.f12247case.length) {
            m13716for();
            return;
        }
        int i = this.f12252else;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f12258native.getItem(i2);
            if (item.isChecked()) {
                this.f12252else = item.getItemId();
                this.f12255goto = i2;
            }
        }
        if (i != this.f12252else) {
            TransitionManager.beginDelayedTransition(this, this.f12251do);
        }
        boolean zM13720this = m13720this(this.f12263try, this.f12258native.getVisibleItems().size());
        for (int i3 = 0; i3 < size; i3++) {
            this.f12257import.m13722for(true);
            this.f12247case[i3].setLabelVisibilityMode(this.f12263try);
            this.f12247case[i3].setShifting(zM13720this);
            this.f12247case[i3].initialize((MenuItemImpl) this.f12258native.getItem(i3), 0);
            this.f12257import.m13722for(false);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m13720this(int i, int i2) {
        if (i == -1) {
            if (i2 > 3) {
                return true;
            }
        } else if (i == 0) {
            return true;
        }
        return false;
    }

    @NonNull
    /* renamed from: try */
    public abstract NavigationBarItemView mo12847try(@NonNull Context context);
}
