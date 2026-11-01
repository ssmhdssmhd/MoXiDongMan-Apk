package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.a82;
import android.support.v4.g90;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ParcelableSparseArray;

@g90
/* renamed from: com.google.android.material.badge.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final boolean f11313do;

    /* renamed from: if, reason: not valid java name */
    private static final String f11314if = "BadgeUtils";

    /* renamed from: com.google.android.material.badge.do$do, reason: invalid class name and collision with other inner class name */
    public static class RunnableC0057do implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Toolbar f11315do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ BadgeDrawable f11316for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f11317if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ FrameLayout f11318new;

        public RunnableC0057do(Toolbar toolbar, int i, BadgeDrawable badgeDrawable, FrameLayout frameLayout) {
            this.f11315do = toolbar;
            this.f11317if = i;
            this.f11316for = badgeDrawable;
            this.f11318new = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            ActionMenuItemView actionMenuItemViewM70do = a82.m70do(this.f11315do, this.f11317if);
            if (actionMenuItemViewM70do != null) {
                Cdo.m12767catch(this.f11316for, this.f11315do.getResources());
                Cdo.m12773if(this.f11316for, actionMenuItemViewM70do, this.f11318new);
            }
        }
    }

    static {
        f11313do = Build.VERSION.SDK_INT < 18;
    }

    private Cdo() {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m12765break(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) throws Resources.NotFoundException {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.e(view, frameLayout);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public static ParcelableSparseArray m12766case(@NonNull SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int iKeyAt = sparseArray.keyAt(i);
            BadgeDrawable badgeDrawableValueAt = sparseArray.valueAt(i);
            if (badgeDrawableValueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            parcelableSparseArray.put(iKeyAt, badgeDrawableValueAt.m12722native());
        }
        return parcelableSparseArray;
    }

    @VisibleForTesting
    /* renamed from: catch, reason: not valid java name */
    public static void m12767catch(BadgeDrawable badgeDrawable, Resources resources) throws Resources.NotFoundException {
        badgeDrawable.m12713default(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset));
        badgeDrawable.m12714extends(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset));
    }

    /* renamed from: class, reason: not valid java name */
    public static void m12768class(@NonNull Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }

    /* renamed from: do, reason: not valid java name */
    public static void m12769do(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) throws Resources.NotFoundException {
        m12773if(badgeDrawable, view, null);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m12770else(@Nullable BadgeDrawable badgeDrawable, @NonNull View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (f11313do || badgeDrawable.m12729super() != null) {
            badgeDrawable.m12729super().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m12771for(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i) {
        m12774new(badgeDrawable, toolbar, i, null);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m12772goto(@Nullable BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i) throws Resources.NotFoundException {
        if (badgeDrawable == null) {
            return;
        }
        ActionMenuItemView actionMenuItemViewM70do = a82.m70do(toolbar, i);
        if (actionMenuItemViewM70do != null) {
            m12775this(badgeDrawable);
            m12770else(badgeDrawable, actionMenuItemViewM70do);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Trying to remove badge from a null menuItemView: ");
            sb.append(i);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m12773if(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) throws Resources.NotFoundException {
        m12765break(badgeDrawable, view, frameLayout);
        if (badgeDrawable.m12729super() != null) {
            badgeDrawable.m12729super().setForeground(badgeDrawable);
        } else {
            if (f11313do) {
                throw new IllegalArgumentException("Trying to reference null customBadgeParent");
            }
            view.getOverlay().add(badgeDrawable);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m12774new(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i, @Nullable FrameLayout frameLayout) {
        toolbar.post(new RunnableC0057do(toolbar, i, badgeDrawable, frameLayout));
    }

    @VisibleForTesting
    /* renamed from: this, reason: not valid java name */
    public static void m12775this(BadgeDrawable badgeDrawable) throws Resources.NotFoundException {
        badgeDrawable.m12713default(0);
        badgeDrawable.m12714extends(0);
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public static SparseArray<BadgeDrawable> m12776try(Context context, @NonNull ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i = 0; i < parcelableSparseArray.size(); i++) {
            int iKeyAt = parcelableSparseArray.keyAt(i);
            BadgeDrawable.SavedState savedState = (BadgeDrawable.SavedState) parcelableSparseArray.valueAt(i);
            if (savedState == null) {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
            sparseArray.put(iKeyAt, BadgeDrawable.m12696case(context, savedState));
        }
        return sparseArray;
    }
}
