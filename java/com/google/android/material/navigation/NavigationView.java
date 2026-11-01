package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.jr;
import android.support.v4.k62;
import android.support.v4.sx0;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: const, reason: not valid java name */
    private static final int[] f12287const = {R.attr.state_checked};

    /* renamed from: final, reason: not valid java name */
    private static final int[] f12288final = {-16842910};

    /* renamed from: super, reason: not valid java name */
    private static final int f12289super = com.google.android.material.R.style.Widget_Design_NavigationView;

    /* renamed from: throw, reason: not valid java name */
    private static final int f12290throw = 1;

    /* renamed from: break, reason: not valid java name */
    private final int[] f12291break;

    /* renamed from: case, reason: not valid java name */
    @NonNull
    private final NavigationMenu f12292case;

    /* renamed from: catch, reason: not valid java name */
    private MenuInflater f12293catch;

    /* renamed from: class, reason: not valid java name */
    private ViewTreeObserver.OnGlobalLayoutListener f12294class;

    /* renamed from: else, reason: not valid java name */
    private final NavigationMenuPresenter f12295else;

    /* renamed from: goto, reason: not valid java name */
    public OnNavigationItemSelectedListener f12296goto;

    /* renamed from: this, reason: not valid java name */
    private final int f12297this;

    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(@NonNull MenuItem menuItem);
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$do, reason: invalid class name */
    public class Cdo implements MenuBuilder.Callback {
        public Cdo() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.f12296goto;
            return onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.onNavigationItemSelected(menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$if, reason: invalid class name */
    public class Cif implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cif() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.f12291break);
            boolean z = NavigationView.this.f12291break[1] == 0;
            NavigationView.this.f12295else.m13572throw(z);
            NavigationView.this.setDrawTopInsetForeground(z);
            Activity activityM4070do = jr.m4070do(NavigationView.this.getContext());
            if (activityM4070do == null || Build.VERSION.SDK_INT < 21) {
                return;
            }
            NavigationView.this.setDrawBottomInsetForeground((activityM4070do.findViewById(R.id.content).getHeight() == NavigationView.this.getHeight()) && (Color.alpha(activityM4070do.getWindow().getNavigationBarColor()) != 0));
        }
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    private final Drawable m13739case(@NonNull TintTypedArray tintTypedArray) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.m13969if(getContext(), tintTypedArray.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance, 0), tintTypedArray.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).m14003const());
        materialShapeDrawable.z(sx0.m7653if(getContext(), tintTypedArray, com.google.android.material.R.styleable.NavigationView_itemShapeFillColor));
        return new InsetDrawable((Drawable) materialShapeDrawable, tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetStart, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetTop, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    /* renamed from: class, reason: not valid java name */
    private void m13740class() {
        this.f12294class = new Cif();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f12294class);
    }

    private MenuInflater getMenuInflater() {
        if (this.f12293catch == null) {
            this.f12293catch = new SupportMenuInflater(getContext());
        }
        return this.f12293catch;
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m13742goto(@NonNull TintTypedArray tintTypedArray) {
        return tintTypedArray.hasValue(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance) || tintTypedArray.hasValue(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    private ColorStateList m13744try(int i) throws Resources.NotFoundException {
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
        int[] iArr = f12288final;
        return new ColorStateList(new int[][]{iArr, f12287const, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    /* renamed from: break, reason: not valid java name */
    public void m13745break(int i) {
        this.f12295else.m13565package(true);
        getMenuInflater().inflate(i, this.f12292case);
        this.f12295else.m13565package(false);
        this.f12295else.updateMenuView(false);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m13746catch(@NonNull View view) {
        this.f12295else.m13569super(view);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: do */
    public void mo13598do(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.f12295else.m13559for(windowInsetsCompat);
    }

    /* renamed from: else, reason: not valid java name */
    public View m13747else(int i) {
        return this.f12295else.m13550case(i);
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f12295else.m13564new();
    }

    public int getHeaderCount() {
        return this.f12295else.m13574try();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f12295else.m13555else();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f12295else.m13560goto();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f12295else.m13571this();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f12295else.m13552class();
    }

    public int getItemMaxLines() {
        return this.f12295else.m13549break();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f12295else.m13551catch();
    }

    @NonNull
    public Menu getMenu() {
        return this.f12292case;
    }

    /* renamed from: new, reason: not valid java name */
    public void m13748new(@NonNull View view) {
        this.f12295else.m13561if(view);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        tx0.m8145try(this);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT < 16) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.f12294class);
        } else {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.f12294class);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.f12297this), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.f12297this, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f12292case.restorePresenterStates(savedState.f12298do);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f12298do = bundle;
        this.f12292case.savePresenterStates(bundle);
        return savedState;
    }

    public void setCheckedItem(@IdRes int i) {
        MenuItem menuItemFindItem = this.f12292case.findItem(i);
        if (menuItemFindItem != null) {
            this.f12295else.m13575while((MenuItemImpl) menuItemFindItem);
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        tx0.m8144new(this, f);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f12295else.m13563native(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemHorizontalPadding(@Dimension int i) {
        this.f12295else.m13566public(i);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i) {
        this.f12295else.m13566public(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(@Dimension int i) {
        this.f12295else.m13567return(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.f12295else.m13567return(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(@Dimension int i) {
        this.f12295else.m13568static(i);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f12295else.m13570switch(colorStateList);
    }

    public void setItemMaxLines(int i) {
        this.f12295else.m13573throws(i);
    }

    public void setItemTextAppearance(@StyleRes int i) {
        this.f12295else.m13554default(i);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f12295else.m13556extends(colorStateList);
    }

    public void setNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.f12296goto = onNavigationItemSelectedListener;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        NavigationMenuPresenter navigationMenuPresenter = this.f12295else;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.m13558finally(i);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public View m13749this(@LayoutRes int i) {
        return this.f12295else.m13553const(i);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        @Nullable
        public Bundle f12298do;

        /* renamed from: com.google.android.material.navigation.NavigationView$SavedState$do, reason: invalid class name */
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

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f12298do = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f12298do);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        ColorStateList colorStateListM13744try;
        int resourceId;
        boolean z;
        int i2 = f12289super;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        NavigationMenuPresenter navigationMenuPresenter = new NavigationMenuPresenter();
        this.f12295else = navigationMenuPresenter;
        this.f12291break = new int[2];
        Context context2 = getContext();
        NavigationMenu navigationMenu = new NavigationMenu(context2);
        this.f12292case = navigationMenu;
        TintTypedArray tintTypedArrayM4269catch = k62.m4269catch(context2, attributeSet, com.google.android.material.R.styleable.NavigationView, i, i2, new int[0]);
        int i3 = com.google.android.material.R.styleable.NavigationView_android_background;
        if (tintTypedArrayM4269catch.hasValue(i3)) {
            ViewCompat.setBackground(this, tintTypedArrayM4269catch.getDrawable(i3));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            ShapeAppearanceModel shapeAppearanceModelM14003const = ShapeAppearanceModel.m13971try(context2, attributeSet, i, i2).m14003const();
            Drawable background = getBackground();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModelM14003const);
            if (background instanceof ColorDrawable) {
                materialShapeDrawable.z(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            materialShapeDrawable.k(context2);
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        if (tintTypedArrayM4269catch.hasValue(com.google.android.material.R.styleable.NavigationView_elevation)) {
            setElevation(tintTypedArrayM4269catch.getDimensionPixelSize(r12, 0));
        }
        setFitsSystemWindows(tintTypedArrayM4269catch.getBoolean(com.google.android.material.R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.f12297this = tintTypedArrayM4269catch.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_android_maxWidth, 0);
        int i4 = com.google.android.material.R.styleable.NavigationView_itemIconTint;
        if (tintTypedArrayM4269catch.hasValue(i4)) {
            colorStateListM13744try = tintTypedArrayM4269catch.getColorStateList(i4);
        } else {
            colorStateListM13744try = m13744try(R.attr.textColorSecondary);
        }
        int i5 = com.google.android.material.R.styleable.NavigationView_itemTextAppearance;
        if (tintTypedArrayM4269catch.hasValue(i5)) {
            resourceId = tintTypedArrayM4269catch.getResourceId(i5, 0);
            z = true;
        } else {
            resourceId = 0;
            z = false;
        }
        int i6 = com.google.android.material.R.styleable.NavigationView_itemIconSize;
        if (tintTypedArrayM4269catch.hasValue(i6)) {
            setItemIconSize(tintTypedArrayM4269catch.getDimensionPixelSize(i6, 0));
        }
        int i7 = com.google.android.material.R.styleable.NavigationView_itemTextColor;
        ColorStateList colorStateList = tintTypedArrayM4269catch.hasValue(i7) ? tintTypedArrayM4269catch.getColorStateList(i7) : null;
        if (!z && colorStateList == null) {
            colorStateList = m13744try(R.attr.textColorPrimary);
        }
        Drawable drawable = tintTypedArrayM4269catch.getDrawable(com.google.android.material.R.styleable.NavigationView_itemBackground);
        if (drawable == null && m13742goto(tintTypedArrayM4269catch)) {
            drawable = m13739case(tintTypedArrayM4269catch);
        }
        int i8 = com.google.android.material.R.styleable.NavigationView_itemHorizontalPadding;
        if (tintTypedArrayM4269catch.hasValue(i8)) {
            navigationMenuPresenter.m13566public(tintTypedArrayM4269catch.getDimensionPixelSize(i8, 0));
        }
        int dimensionPixelSize = tintTypedArrayM4269catch.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemIconPadding, 0);
        setItemMaxLines(tintTypedArrayM4269catch.getInt(com.google.android.material.R.styleable.NavigationView_itemMaxLines, 1));
        navigationMenu.setCallback(new Cdo());
        navigationMenuPresenter.m13562import(1);
        navigationMenuPresenter.initForMenu(context2, navigationMenu);
        navigationMenuPresenter.m13570switch(colorStateListM13744try);
        navigationMenuPresenter.m13558finally(getOverScrollMode());
        if (z) {
            navigationMenuPresenter.m13554default(resourceId);
        }
        navigationMenuPresenter.m13556extends(colorStateList);
        navigationMenuPresenter.m13563native(drawable);
        navigationMenuPresenter.m13567return(dimensionPixelSize);
        navigationMenu.addMenuPresenter(navigationMenuPresenter);
        addView((View) navigationMenuPresenter.getMenuView(this));
        int i9 = com.google.android.material.R.styleable.NavigationView_menu;
        if (tintTypedArrayM4269catch.hasValue(i9)) {
            m13745break(tintTypedArrayM4269catch.getResourceId(i9, 0));
        }
        int i10 = com.google.android.material.R.styleable.NavigationView_headerLayout;
        if (tintTypedArrayM4269catch.hasValue(i10)) {
            m13749this(tintTypedArrayM4269catch.getResourceId(i10, 0));
        }
        tintTypedArrayM4269catch.recycle();
        m13740class();
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem menuItemFindItem = this.f12292case.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.f12295else.m13575while((MenuItemImpl) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
