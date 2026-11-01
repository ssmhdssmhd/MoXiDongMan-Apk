package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.k62;
import android.support.v4.no1;
import android.support.v4.sx0;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class NavigationBarView extends FrameLayout {

    /* renamed from: break, reason: not valid java name */
    public static final int f12272break = 1;

    /* renamed from: catch, reason: not valid java name */
    public static final int f12273catch = 2;

    /* renamed from: class, reason: not valid java name */
    private static final int f12274class = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f12275goto = -1;

    /* renamed from: this, reason: not valid java name */
    public static final int f12276this = 0;

    /* renamed from: case, reason: not valid java name */
    private OnItemSelectedListener f12277case;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final NavigationBarMenu f12278do;

    /* renamed from: else, reason: not valid java name */
    private OnItemReselectedListener f12279else;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final NavigationBarPresenter f12280for;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final NavigationBarMenuView f12281if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private ColorStateList f12282new;

    /* renamed from: try, reason: not valid java name */
    private MenuInflater f12283try;

    public interface OnItemReselectedListener {
        void onNavigationItemReselected(@NonNull MenuItem menuItem);
    }

    public interface OnItemSelectedListener {
        boolean onNavigationItemSelected(@NonNull MenuItem menuItem);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        @Nullable
        public Bundle f12284do;

        /* renamed from: com.google.android.material.navigation.NavigationBarView$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: do, reason: not valid java name */
        private void m13735do(@NonNull Parcel parcel, ClassLoader classLoader) {
            this.f12284do = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f12284do);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m13735do(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationBarView$do, reason: invalid class name */
    public class Cdo implements MenuBuilder.Callback {
        public Cdo() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            if (NavigationBarView.this.f12279else == null || menuItem.getItemId() != NavigationBarView.this.getSelectedItemId()) {
                return (NavigationBarView.this.f12277case == null || NavigationBarView.this.f12277case.onNavigationItemSelected(menuItem)) ? false : true;
            }
            NavigationBarView.this.f12279else.onNavigationItemReselected(menuItem);
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.navigation.NavigationBarView$for, reason: invalid class name */
    public @interface Cfor {
    }

    /* renamed from: com.google.android.material.navigation.NavigationBarView$if, reason: invalid class name */
    public class Cif implements ViewUtils.OnApplyWindowInsetsListener {
        public Cif() {
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.Ctry ctry) {
            ctry.f12139new += windowInsetsCompat.getSystemWindowInsetBottom();
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            ctry.f12136do += z ? systemWindowInsetRight : systemWindowInsetLeft;
            int i = ctry.f12137for;
            if (!z) {
                systemWindowInsetLeft = systemWindowInsetRight;
            }
            ctry.f12137for = i + systemWindowInsetLeft;
            ctry.m13625do(view);
            return windowInsetsCompat;
        }
    }

    public NavigationBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.f12280for = navigationBarPresenter;
        Context context2 = getContext();
        int[] iArr = R.styleable.NavigationBarView;
        int i3 = R.styleable.NavigationBarView_itemTextAppearanceInactive;
        int i4 = R.styleable.NavigationBarView_itemTextAppearanceActive;
        TintTypedArray tintTypedArrayM4269catch = k62.m4269catch(context2, attributeSet, iArr, i, i2, i3, i4);
        NavigationBarMenu navigationBarMenu = new NavigationBarMenu(context2, getClass(), getMaxItemCount());
        this.f12278do = navigationBarMenu;
        NavigationBarMenuView navigationBarMenuViewMo12852try = mo12852try(context2);
        this.f12281if = navigationBarMenuViewMo12852try;
        navigationBarPresenter.m13723if(navigationBarMenuViewMo12852try);
        navigationBarPresenter.m13721do(1);
        navigationBarMenuViewMo12852try.setPresenter(navigationBarPresenter);
        navigationBarMenu.addMenuPresenter(navigationBarPresenter);
        navigationBarPresenter.initForMenu(getContext(), navigationBarMenu);
        int i5 = R.styleable.NavigationBarView_itemIconTint;
        if (tintTypedArrayM4269catch.hasValue(i5)) {
            navigationBarMenuViewMo12852try.setIconTintList(tintTypedArrayM4269catch.getColorStateList(i5));
        } else {
            navigationBarMenuViewMo12852try.setIconTintList(navigationBarMenuViewMo12852try.m13718new(android.R.attr.textColorSecondary));
        }
        setItemIconSize(tintTypedArrayM4269catch.getDimensionPixelSize(R.styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (tintTypedArrayM4269catch.hasValue(i3)) {
            setItemTextAppearanceInactive(tintTypedArrayM4269catch.getResourceId(i3, 0));
        }
        if (tintTypedArrayM4269catch.hasValue(i4)) {
            setItemTextAppearanceActive(tintTypedArrayM4269catch.getResourceId(i4, 0));
        }
        int i6 = R.styleable.NavigationBarView_itemTextColor;
        if (tintTypedArrayM4269catch.hasValue(i6)) {
            setItemTextColor(tintTypedArrayM4269catch.getColorStateList(i6));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            ViewCompat.setBackground(this, m13729new(context2));
        }
        if (tintTypedArrayM4269catch.hasValue(R.styleable.NavigationBarView_elevation)) {
            setElevation(tintTypedArrayM4269catch.getDimensionPixelSize(r12, 0));
        }
        DrawableCompat.setTintList(getBackground().mutate(), sx0.m7653if(context2, tintTypedArrayM4269catch, R.styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(tintTypedArrayM4269catch.getInteger(R.styleable.NavigationBarView_labelVisibilityMode, -1));
        int resourceId = tintTypedArrayM4269catch.getResourceId(R.styleable.NavigationBarView_itemBackground, 0);
        if (resourceId != 0) {
            navigationBarMenuViewMo12852try.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(sx0.m7653if(context2, tintTypedArrayM4269catch, R.styleable.NavigationBarView_itemRippleColor));
        }
        int i7 = R.styleable.NavigationBarView_menu;
        if (tintTypedArrayM4269catch.hasValue(i7)) {
            m13733goto(tintTypedArrayM4269catch.getResourceId(i7, 0));
        }
        tintTypedArrayM4269catch.recycle();
        addView(navigationBarMenuViewMo12852try);
        navigationBarMenu.setCallback(new Cdo());
        m13727for();
    }

    /* renamed from: for, reason: not valid java name */
    private void m13727for() {
        ViewUtils.m13621new(this, new Cif());
    }

    private MenuInflater getMenuInflater() {
        if (this.f12283try == null) {
            this.f12283try = new SupportMenuInflater(getContext());
        }
        return this.f12283try;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    private MaterialShapeDrawable m13729new(Context context) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            materialShapeDrawable.z(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        materialShapeDrawable.k(context);
        return materialShapeDrawable;
    }

    /* renamed from: break, reason: not valid java name */
    public void m13730break(int i, @Nullable View.OnTouchListener onTouchListener) {
        this.f12281if.m13713const(i, onTouchListener);
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    public BadgeDrawable m13731case(int i) {
        return this.f12281if.m13714else(i);
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public BadgeDrawable m13732else(int i) {
        return this.f12281if.m13717goto(i);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f12281if.getItemBackground();
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f12281if.getItemBackgroundRes();
    }

    @Dimension
    public int getItemIconSize() {
        return this.f12281if.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f12281if.getIconTintList();
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f12282new;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f12281if.getItemTextAppearanceActive();
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f12281if.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f12281if.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f12281if.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    @NonNull
    public Menu getMenu() {
        return this.f12278do;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public MenuView getMenuView() {
        return this.f12281if;
    }

    @NonNull
    public NavigationBarPresenter getPresenter() {
        return this.f12280for;
    }

    @IdRes
    public int getSelectedItemId() {
        return this.f12281if.getSelectedItemId();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m13733goto(int i) {
        this.f12280for.m13722for(true);
        getMenuInflater().inflate(i, this.f12278do);
        this.f12280for.m13722for(false);
        this.f12280for.updateMenuView(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        tx0.m8145try(this);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f12278do.restorePresenterStates(savedState.f12284do);
    }

    @Override // android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f12284do = bundle;
        this.f12278do.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        tx0.m8144new(this, f);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f12281if.setItemBackground(drawable);
        this.f12282new = null;
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        this.f12281if.setItemBackgroundRes(i);
        this.f12282new = null;
    }

    public void setItemIconSize(@Dimension int i) {
        this.f12281if.setItemIconSize(i);
    }

    public void setItemIconSizeRes(@DimenRes int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f12281if.setIconTintList(colorStateList);
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f12282new == colorStateList) {
            if (colorStateList != null || this.f12281if.getItemBackground() == null) {
                return;
            }
            this.f12281if.setItemBackground(null);
            return;
        }
        this.f12282new = colorStateList;
        if (colorStateList == null) {
            this.f12281if.setItemBackground(null);
            return;
        }
        ColorStateList colorStateListM5291do = no1.m5291do(colorStateList);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f12281if.setItemBackground(new RippleDrawable(colorStateListM5291do, null, null));
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(1.0E-5f);
        Drawable drawableWrap = DrawableCompat.wrap(gradientDrawable);
        DrawableCompat.setTintList(drawableWrap, colorStateListM5291do);
        this.f12281if.setItemBackground(drawableWrap);
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.f12281if.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.f12281if.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f12281if.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f12281if.getLabelVisibilityMode() != i) {
            this.f12281if.setLabelVisibilityMode(i);
            this.f12280for.updateMenuView(false);
        }
    }

    public void setOnItemReselectedListener(@Nullable OnItemReselectedListener onItemReselectedListener) {
        this.f12279else = onItemReselectedListener;
    }

    public void setOnItemSelectedListener(@Nullable OnItemSelectedListener onItemSelectedListener) {
        this.f12277case = onItemSelectedListener;
    }

    public void setSelectedItemId(@IdRes int i) {
        MenuItem menuItemFindItem = this.f12278do.findItem(i);
        if (menuItemFindItem == null || this.f12278do.performItemAction(menuItemFindItem, this.f12280for, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }

    /* renamed from: this, reason: not valid java name */
    public void m13734this(int i) {
        this.f12281if.m13712catch(i);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: try */
    public abstract NavigationBarMenuView mo12852try(@NonNull Context context);
}
