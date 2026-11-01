package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import com.google.android.material.R;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationMenuPresenter implements MenuPresenter {

    /* renamed from: default, reason: not valid java name */
    private static final String f12072default = "android:menu:header";

    /* renamed from: switch, reason: not valid java name */
    private static final String f12073switch = "android:menu:list";

    /* renamed from: throws, reason: not valid java name */
    private static final String f12074throws = "android:menu:adapter";

    /* renamed from: break, reason: not valid java name */
    public ColorStateList f12075break;

    /* renamed from: case, reason: not valid java name */
    public Cfor f12076case;

    /* renamed from: catch, reason: not valid java name */
    public ColorStateList f12077catch;

    /* renamed from: class, reason: not valid java name */
    public Drawable f12078class;

    /* renamed from: const, reason: not valid java name */
    public int f12079const;

    /* renamed from: do, reason: not valid java name */
    private NavigationMenuView f12080do;

    /* renamed from: else, reason: not valid java name */
    public LayoutInflater f12081else;

    /* renamed from: final, reason: not valid java name */
    public int f12082final;

    /* renamed from: for, reason: not valid java name */
    private MenuPresenter.Callback f12083for;

    /* renamed from: goto, reason: not valid java name */
    public int f12084goto;

    /* renamed from: if, reason: not valid java name */
    public LinearLayout f12085if;

    /* renamed from: import, reason: not valid java name */
    private int f12086import;

    /* renamed from: native, reason: not valid java name */
    private int f12087native;

    /* renamed from: new, reason: not valid java name */
    public MenuBuilder f12088new;

    /* renamed from: public, reason: not valid java name */
    public int f12089public;

    /* renamed from: super, reason: not valid java name */
    public int f12092super;

    /* renamed from: this, reason: not valid java name */
    public boolean f12093this;

    /* renamed from: throw, reason: not valid java name */
    public boolean f12094throw;

    /* renamed from: try, reason: not valid java name */
    private int f12095try;

    /* renamed from: while, reason: not valid java name */
    public boolean f12096while = true;

    /* renamed from: return, reason: not valid java name */
    private int f12090return = -1;

    /* renamed from: static, reason: not valid java name */
    public final View.OnClickListener f12091static = new Cdo();

    public interface NavigationMenuItem {
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$break, reason: invalid class name */
    public static class Cbreak extends Ccatch {
        public Cbreak(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$case, reason: invalid class name */
    public static class Ccase implements NavigationMenuItem {

        /* renamed from: do, reason: not valid java name */
        private final MenuItemImpl f12097do;

        /* renamed from: if, reason: not valid java name */
        public boolean f12098if;

        public Ccase(MenuItemImpl menuItemImpl) {
            this.f12097do = menuItemImpl;
        }

        /* renamed from: do, reason: not valid java name */
        public MenuItemImpl m13576do() {
            return this.f12097do;
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$catch, reason: invalid class name */
    public static abstract class Ccatch extends RecyclerView.ViewHolder {
        public Ccatch(View view) {
            super(view);
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = true;
            NavigationMenuPresenter.this.m13565package(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            boolean zPerformItemAction = navigationMenuPresenter.f12088new.performItemAction(itemData, navigationMenuPresenter, 0);
            if (itemData != null && itemData.isCheckable() && zPerformItemAction) {
                NavigationMenuPresenter.this.f12076case.m13579break(itemData);
            } else {
                z = false;
            }
            NavigationMenuPresenter.this.m13565package(false);
            if (z) {
                NavigationMenuPresenter.this.updateMenuView(false);
            }
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$else, reason: invalid class name */
    public class Celse extends RecyclerViewAccessibilityDelegate {
        public Celse(@NonNull RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(NavigationMenuPresenter.this.f12076case.m13586new(), 0, false));
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$for, reason: invalid class name */
    public class Cfor extends RecyclerView.Adapter<Ccatch> {

        /* renamed from: break, reason: not valid java name */
        private static final int f12101break = 3;

        /* renamed from: case, reason: not valid java name */
        private static final String f12102case = "android:menu:action_views";

        /* renamed from: else, reason: not valid java name */
        private static final int f12103else = 0;

        /* renamed from: goto, reason: not valid java name */
        private static final int f12104goto = 1;

        /* renamed from: this, reason: not valid java name */
        private static final int f12105this = 2;

        /* renamed from: try, reason: not valid java name */
        private static final String f12106try = "android:menu:checked";

        /* renamed from: do, reason: not valid java name */
        private final ArrayList<NavigationMenuItem> f12107do = new ArrayList<>();

        /* renamed from: for, reason: not valid java name */
        private boolean f12108for;

        /* renamed from: if, reason: not valid java name */
        private MenuItemImpl f12109if;

        public Cfor() {
            m13578goto();
        }

        /* renamed from: do, reason: not valid java name */
        private void m13577do(int i, int i2) {
            while (i < i2) {
                ((Ccase) this.f12107do.get(i)).f12098if = true;
                i++;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private void m13578goto() {
            if (this.f12108for) {
                return;
            }
            this.f12108for = true;
            this.f12107do.clear();
            this.f12107do.add(new Cnew());
            int i = -1;
            int size = NavigationMenuPresenter.this.f12088new.getVisibleItems().size();
            boolean z = false;
            int size2 = 0;
            for (int i2 = 0; i2 < size; i2++) {
                MenuItemImpl menuItemImpl = NavigationMenuPresenter.this.f12088new.getVisibleItems().get(i2);
                if (menuItemImpl.isChecked()) {
                    m13579break(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.setExclusiveCheckable(false);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenu subMenu = menuItemImpl.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i2 != 0) {
                            this.f12107do.add(new Ctry(NavigationMenuPresenter.this.f12089public, 0));
                        }
                        this.f12107do.add(new Ccase(menuItemImpl));
                        int size3 = this.f12107do.size();
                        int size4 = subMenu.size();
                        boolean z2 = false;
                        for (int i3 = 0; i3 < size4; i3++) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i3);
                            if (menuItemImpl2.isVisible()) {
                                if (!z2 && menuItemImpl2.getIcon() != null) {
                                    z2 = true;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.setExclusiveCheckable(false);
                                }
                                if (menuItemImpl.isChecked()) {
                                    m13579break(menuItemImpl);
                                }
                                this.f12107do.add(new Ccase(menuItemImpl2));
                            }
                        }
                        if (z2) {
                            m13577do(size3, this.f12107do.size());
                        }
                    }
                } else {
                    int groupId = menuItemImpl.getGroupId();
                    if (groupId != i) {
                        size2 = this.f12107do.size();
                        z = menuItemImpl.getIcon() != null;
                        if (i2 != 0) {
                            size2++;
                            ArrayList<NavigationMenuItem> arrayList = this.f12107do;
                            int i4 = NavigationMenuPresenter.this.f12089public;
                            arrayList.add(new Ctry(i4, i4));
                        }
                    } else if (!z && menuItemImpl.getIcon() != null) {
                        m13577do(size2, this.f12107do.size());
                        z = true;
                    }
                    Ccase ccase = new Ccase(menuItemImpl);
                    ccase.f12098if = z;
                    this.f12107do.add(ccase);
                    i = groupId;
                }
            }
            this.f12108for = false;
        }

        /* renamed from: break, reason: not valid java name */
        public void m13579break(@NonNull MenuItemImpl menuItemImpl) {
            if (this.f12109if == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.f12109if;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.f12109if = menuItemImpl;
            menuItemImpl.setChecked(true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @Nullable
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccatch onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
                return new Cgoto(navigationMenuPresenter.f12081else, viewGroup, navigationMenuPresenter.f12091static);
            }
            if (i == 1) {
                return new Cbreak(NavigationMenuPresenter.this.f12081else, viewGroup);
            }
            if (i == 2) {
                return new Cthis(NavigationMenuPresenter.this.f12081else, viewGroup);
            }
            if (i != 3) {
                return null;
            }
            return new Cif(NavigationMenuPresenter.this.f12085if);
        }

        /* renamed from: catch, reason: not valid java name */
        public void m13581catch(boolean z) {
            this.f12108for = z;
        }

        /* renamed from: class, reason: not valid java name */
        public void m13582class() {
            m13578goto();
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onViewRecycled(Ccatch ccatch) {
            if (ccatch instanceof Cgoto) {
                ((NavigationMenuItemView) ccatch.itemView).m13546for();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public MenuItemImpl m13584for() {
            return this.f12109if;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f12107do.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            NavigationMenuItem navigationMenuItem = this.f12107do.get(i);
            if (navigationMenuItem instanceof Ctry) {
                return 2;
            }
            if (navigationMenuItem instanceof Cnew) {
                return 3;
            }
            if (navigationMenuItem instanceof Ccase) {
                return ((Ccase) navigationMenuItem).m13576do().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @NonNull
        /* renamed from: if, reason: not valid java name */
        public Bundle m13585if() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.f12109if;
            if (menuItemImpl != null) {
                bundle.putInt(f12106try, menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f12107do.size();
            for (int i = 0; i < size; i++) {
                NavigationMenuItem navigationMenuItem = this.f12107do.get(i);
                if (navigationMenuItem instanceof Ccase) {
                    MenuItemImpl menuItemImplM13576do = ((Ccase) navigationMenuItem).m13576do();
                    View actionView = menuItemImplM13576do != null ? menuItemImplM13576do.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(menuItemImplM13576do.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray(f12102case, sparseArray);
            return bundle;
        }

        /* renamed from: new, reason: not valid java name */
        public int m13586new() {
            int i = NavigationMenuPresenter.this.f12085if.getChildCount() == 0 ? 0 : 1;
            for (int i2 = 0; i2 < NavigationMenuPresenter.this.f12076case.getItemCount(); i2++) {
                if (NavigationMenuPresenter.this.f12076case.getItemViewType(i2) == 0) {
                    i++;
                }
            }
            return i;
        }

        /* renamed from: this, reason: not valid java name */
        public void m13587this(@NonNull Bundle bundle) {
            MenuItemImpl menuItemImplM13576do;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl menuItemImplM13576do2;
            int i = bundle.getInt(f12106try, 0);
            if (i != 0) {
                this.f12108for = true;
                int size = this.f12107do.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    NavigationMenuItem navigationMenuItem = this.f12107do.get(i2);
                    if ((navigationMenuItem instanceof Ccase) && (menuItemImplM13576do2 = ((Ccase) navigationMenuItem).m13576do()) != null && menuItemImplM13576do2.getItemId() == i) {
                        m13579break(menuItemImplM13576do2);
                        break;
                    }
                    i2++;
                }
                this.f12108for = false;
                m13578goto();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(f12102case);
            if (sparseParcelableArray != null) {
                int size2 = this.f12107do.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    NavigationMenuItem navigationMenuItem2 = this.f12107do.get(i3);
                    if ((navigationMenuItem2 instanceof Ccase) && (menuItemImplM13576do = ((Ccase) navigationMenuItem2).m13576do()) != null && (actionView = menuItemImplM13576do.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(menuItemImplM13576do.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull Ccatch ccatch, int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ((TextView) ccatch.itemView).setText(((Ccase) this.f12107do.get(i)).m13576do().getTitle());
                    return;
                } else {
                    if (itemViewType != 2) {
                        return;
                    }
                    Ctry ctry = (Ctry) this.f12107do.get(i);
                    ccatch.itemView.setPadding(0, ctry.m13590if(), 0, ctry.m13589do());
                    return;
                }
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) ccatch.itemView;
            navigationMenuItemView.setIconTintList(NavigationMenuPresenter.this.f12077catch);
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            if (navigationMenuPresenter.f12093this) {
                navigationMenuItemView.setTextAppearance(navigationMenuPresenter.f12084goto);
            }
            ColorStateList colorStateList = NavigationMenuPresenter.this.f12075break;
            if (colorStateList != null) {
                navigationMenuItemView.setTextColor(colorStateList);
            }
            Drawable drawable = NavigationMenuPresenter.this.f12078class;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            Ccase ccase = (Ccase) this.f12107do.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(ccase.f12098if);
            navigationMenuItemView.setHorizontalPadding(NavigationMenuPresenter.this.f12079const);
            navigationMenuItemView.setIconPadding(NavigationMenuPresenter.this.f12082final);
            NavigationMenuPresenter navigationMenuPresenter2 = NavigationMenuPresenter.this;
            if (navigationMenuPresenter2.f12094throw) {
                navigationMenuItemView.setIconSize(navigationMenuPresenter2.f12092super);
            }
            navigationMenuItemView.setMaxLines(NavigationMenuPresenter.this.f12086import);
            navigationMenuItemView.initialize(ccase.m13576do(), 0);
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$goto, reason: invalid class name */
    public static class Cgoto extends Ccatch {
        public Cgoto(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$if, reason: invalid class name */
    public static class Cif extends Ccatch {
        public Cif(View view) {
            super(view);
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$new, reason: invalid class name */
    public static class Cnew implements NavigationMenuItem {
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$this, reason: invalid class name */
    public static class Cthis extends Ccatch {
        public Cthis(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$try, reason: invalid class name */
    public static class Ctry implements NavigationMenuItem {

        /* renamed from: do, reason: not valid java name */
        private final int f12111do;

        /* renamed from: if, reason: not valid java name */
        private final int f12112if;

        public Ctry(int i, int i2) {
            this.f12111do = i;
            this.f12112if = i2;
        }

        /* renamed from: do, reason: not valid java name */
        public int m13589do() {
            return this.f12112if;
        }

        /* renamed from: if, reason: not valid java name */
        public int m13590if() {
            return this.f12111do;
        }
    }

    /* renamed from: private, reason: not valid java name */
    private void m13548private() {
        int i = (this.f12085if.getChildCount() == 0 && this.f12096while) ? this.f12087native : 0;
        NavigationMenuView navigationMenuView = this.f12080do;
        navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
    }

    /* renamed from: break, reason: not valid java name */
    public int m13549break() {
        return this.f12086import;
    }

    /* renamed from: case, reason: not valid java name */
    public View m13550case(int i) {
        return this.f12085if.getChildAt(i);
    }

    @Nullable
    /* renamed from: catch, reason: not valid java name */
    public ColorStateList m13551catch() {
        return this.f12075break;
    }

    @Nullable
    /* renamed from: class, reason: not valid java name */
    public ColorStateList m13552class() {
        return this.f12077catch;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    /* renamed from: const, reason: not valid java name */
    public View m13553const(@LayoutRes int i) {
        View viewInflate = this.f12081else.inflate(i, (ViewGroup) this.f12085if, false);
        m13561if(viewInflate);
        return viewInflate;
    }

    /* renamed from: default, reason: not valid java name */
    public void m13554default(@StyleRes int i) {
        this.f12084goto = i;
        this.f12093this = true;
        updateMenuView(false);
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    public Drawable m13555else() {
        return this.f12078class;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m13556extends(@Nullable ColorStateList colorStateList) {
        this.f12075break = colorStateList;
        updateMenuView(false);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m13557final() {
        return this.f12096while;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m13558finally(int i) {
        this.f12090return = i;
        NavigationMenuView navigationMenuView = this.f12080do;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public void m13559for(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.f12087native != systemWindowInsetTop) {
            this.f12087native = systemWindowInsetTop;
            m13548private();
        }
        NavigationMenuView navigationMenuView = this.f12080do;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
        ViewCompat.dispatchApplyWindowInsets(this.f12085if, windowInsetsCompat);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f12095try;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f12080do == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f12081else.inflate(R.layout.design_navigation_menu, viewGroup, false);
            this.f12080do = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new Celse(this.f12080do));
            if (this.f12076case == null) {
                this.f12076case = new Cfor();
            }
            int i = this.f12090return;
            if (i != -1) {
                this.f12080do.setOverScrollMode(i);
            }
            this.f12085if = (LinearLayout) this.f12081else.inflate(R.layout.design_navigation_item_header, (ViewGroup) this.f12080do, false);
            this.f12080do.setAdapter(this.f12076case);
        }
        return this.f12080do;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m13560goto() {
        return this.f12079const;
    }

    /* renamed from: if, reason: not valid java name */
    public void m13561if(@NonNull View view) {
        this.f12085if.addView(view);
        NavigationMenuView navigationMenuView = this.f12080do;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    /* renamed from: import, reason: not valid java name */
    public void m13562import(int i) {
        this.f12095try = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f12081else = LayoutInflater.from(context);
        this.f12088new = menuBuilder;
        this.f12089public = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    /* renamed from: native, reason: not valid java name */
    public void m13563native(@Nullable Drawable drawable) {
        this.f12078class = drawable;
        updateMenuView(false);
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public MenuItemImpl m13564new() {
        return this.f12076case.m13584for();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f12083for;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f12080do.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(f12074throws);
            if (bundle2 != null) {
                this.f12076case.m13587this(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray(f12072default);
            if (sparseParcelableArray2 != null) {
                this.f12085if.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.f12080do != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f12080do.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        Cfor cfor = this.f12076case;
        if (cfor != null) {
            bundle.putBundle(f12074throws, cfor.m13585if());
        }
        if (this.f12085if != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f12085if.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(f12072default, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    /* renamed from: package, reason: not valid java name */
    public void m13565package(boolean z) {
        Cfor cfor = this.f12076case;
        if (cfor != null) {
            cfor.m13581catch(z);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m13566public(int i) {
        this.f12079const = i;
        updateMenuView(false);
    }

    /* renamed from: return, reason: not valid java name */
    public void m13567return(int i) {
        this.f12082final = i;
        updateMenuView(false);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f12083for = callback;
    }

    /* renamed from: static, reason: not valid java name */
    public void m13568static(@Dimension int i) {
        if (this.f12092super != i) {
            this.f12092super = i;
            this.f12094throw = true;
            updateMenuView(false);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m13569super(@NonNull View view) {
        this.f12085if.removeView(view);
        if (this.f12085if.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.f12080do;
            navigationMenuView.setPadding(0, this.f12087native, 0, navigationMenuView.getPaddingBottom());
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void m13570switch(@Nullable ColorStateList colorStateList) {
        this.f12077catch = colorStateList;
        updateMenuView(false);
    }

    /* renamed from: this, reason: not valid java name */
    public int m13571this() {
        return this.f12082final;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m13572throw(boolean z) {
        if (this.f12096while != z) {
            this.f12096while = z;
            m13548private();
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void m13573throws(int i) {
        this.f12086import = i;
        updateMenuView(false);
    }

    /* renamed from: try, reason: not valid java name */
    public int m13574try() {
        return this.f12085if.getChildCount();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        Cfor cfor = this.f12076case;
        if (cfor != null) {
            cfor.m13582class();
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void m13575while(@NonNull MenuItemImpl menuItemImpl) {
        this.f12076case.m13579break(menuItemImpl);
    }
}
