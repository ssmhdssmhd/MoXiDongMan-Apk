package com.google.android.material.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import com.google.android.material.badge.Cdo;
import com.google.android.material.internal.ParcelableSparseArray;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationBarPresenter implements MenuPresenter {

    /* renamed from: do, reason: not valid java name */
    private MenuBuilder f12266do;

    /* renamed from: for, reason: not valid java name */
    private boolean f12267for = false;

    /* renamed from: if, reason: not valid java name */
    private NavigationBarMenuView f12268if;

    /* renamed from: new, reason: not valid java name */
    private int f12269new;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public int f12270do;

        /* renamed from: if, reason: not valid java name */
        @Nullable
        public ParcelableSparseArray f12271if;

        /* renamed from: com.google.android.material.navigation.NavigationBarPresenter$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.f12270do);
            parcel.writeParcelable(this.f12271if, 0);
        }

        public SavedState(@NonNull Parcel parcel) {
            this.f12270do = parcel.readInt();
            this.f12271if = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public void m13721do(int i) {
        this.f12269new = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public void m13722for(boolean z) {
        this.f12267for = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f12269new;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @Nullable
    public MenuView getMenuView(@Nullable ViewGroup viewGroup) {
        return this.f12268if;
    }

    /* renamed from: if, reason: not valid java name */
    public void m13723if(@NonNull NavigationBarMenuView navigationBarMenuView) {
        this.f12268if = navigationBarMenuView;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f12266do = menuBuilder;
        this.f12268if.initialize(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(@Nullable MenuBuilder menuBuilder, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(@NonNull Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f12268if.m13715final(savedState.f12270do);
            this.f12268if.setBadgeDrawables(Cdo.m12776try(this.f12268if.getContext(), savedState.f12271if));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f12270do = this.f12268if.getSelectedItemId();
        savedState.f12271if = Cdo.m12766case(this.f12268if.getBadgeDrawables());
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(@Nullable SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(@Nullable MenuPresenter.Callback callback) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        if (this.f12267for) {
            return;
        }
        if (z) {
            this.f12268if.m13716for();
        } else {
            this.f12268if.m13719super();
        }
    }
}
