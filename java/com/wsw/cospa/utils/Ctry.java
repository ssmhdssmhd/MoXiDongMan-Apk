package com.wsw.cospa.utils;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.j10;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.SearchView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.navigation.NavigationView;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import java.lang.reflect.Field;

/* renamed from: com.wsw.cospa.utils.try, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final float f22758do = 1.05f;

    /* renamed from: com.wsw.cospa.utils.try$do, reason: invalid class name */
    public class Cdo implements RecyclerView.OnChildAttachStateChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ NavigationMenuView f22759do;

        public Cdo(NavigationMenuView navigationMenuView) {
            this.f22759do = navigationMenuView;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(@NonNull View view) {
            RecyclerView.ViewHolder childViewHolder = this.f22759do.getChildViewHolder(view);
            if (childViewHolder == null || !"SeparatorViewHolder".equals(childViewHolder.getClass().getSimpleName())) {
                return;
            }
            View view2 = childViewHolder.itemView;
            if (view2 instanceof FrameLayout) {
                View childAt = ((FrameLayout) view2).getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                layoutParams.height = view.getResources().getDimensionPixelSize(R.dimen.arg_res_0x7f0700c2);
                childAt.setLayoutParams(layoutParams);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(@NonNull View view) {
        }
    }

    private Ctry() {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m27138break(Drawable drawable, ColorStateList colorStateList) {
        m27140catch(drawable, colorStateList, PorterDuff.Mode.SRC_ATOP);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m27139case(Drawable drawable, @ColorInt int i) {
        m27144else(drawable, i, PorterDuff.Mode.SRC_ATOP);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m27140catch(Drawable drawable, ColorStateList colorStateList, @NonNull PorterDuff.Mode mode) {
        if (drawable == null) {
            return;
        }
        Drawable drawableWrap = DrawableCompat.wrap(drawable);
        drawableWrap.mutate();
        DrawableCompat.setTintList(drawableWrap, colorStateList);
        DrawableCompat.setTintMode(drawableWrap, mode);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m27141class(View view, ColorStateList colorStateList) {
        if (view instanceof ImageView) {
            if (Build.VERSION.SDK_INT >= 21) {
                ((ImageView) view).setImageTintList(colorStateList);
                return;
            }
            Drawable drawableWrap = DrawableCompat.wrap(view.getBackground());
            DrawableCompat.setTintList(drawableWrap, colorStateList);
            ((ImageView) view).setImageDrawable(drawableWrap);
            return;
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            for (Drawable drawable : textView.getCompoundDrawables()) {
                m27138break(drawable, colorStateList);
            }
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            m27138break(compoundDrawablesRelative[0], colorStateList);
            m27138break(compoundDrawablesRelative[2], colorStateList);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m27142const(SearchView searchView, String str) throws Resources.NotFoundException {
        m27145final(searchView, str, false, true);
    }

    /* renamed from: do, reason: not valid java name */
    private static ColorStateList m27143do(int i, int i2) {
        return new ColorStateList(new int[][]{new int[]{android.R.attr.state_enabled, android.R.attr.state_focused}, new int[]{android.R.attr.state_enabled, android.R.attr.state_activated}, new int[]{android.R.attr.state_focused}, new int[]{android.R.attr.state_window_focused}, new int[0]}, new int[]{i, i, i, i2, i2});
    }

    /* renamed from: else, reason: not valid java name */
    public static void m27144else(Drawable drawable, @ColorInt int i, @NonNull PorterDuff.Mode mode) {
        if (drawable == null) {
            return;
        }
        Drawable drawableWrap = DrawableCompat.wrap(drawable);
        drawableWrap.mutate();
        DrawableCompat.setTint(drawableWrap, i);
        DrawableCompat.setTintMode(drawableWrap, mode);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m27145final(SearchView searchView, String str, boolean z, boolean z2) throws Resources.NotFoundException {
        int color = searchView.getResources().getColor(R.color.arg_res_0x7f0600fb);
        AppCompatImageView appCompatImageView = (AppCompatImageView) searchView.findViewById(R.id.arg_res_0x7f09038d);
        appCompatImageView.setImageResource(R.drawable.arg_res_0x7f0800f9);
        m27151this(appCompatImageView, color);
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) searchView.findViewById(R.id.arg_res_0x7f090394);
        searchAutoComplete.setTextSize(14.0f);
        searchAutoComplete.setPaddingRelative(searchAutoComplete.getPaddingLeft(), 0, 0, 0);
        int textSize = (int) (searchAutoComplete.getTextSize() * f22758do);
        Drawable drawable = searchAutoComplete.getResources().getDrawable(R.drawable.arg_res_0x7f0800f8);
        drawable.setBounds(0, 0, textSize, textSize);
        m27139case(drawable, color);
        searchAutoComplete.setCompoundDrawablesRelative(drawable, null, null, null);
        searchAutoComplete.setCompoundDrawablePadding((int) j10.m3660new(CartoonApplication.m24690do(), 5.0f));
        searchAutoComplete.setIncludeFontPadding(false);
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) searchView.findViewById(R.id.arg_res_0x7f09038e);
        appCompatImageView2.setImageResource(R.drawable.arg_res_0x7f0800c7);
        m27151this(appCompatImageView2, color);
        LinearLayout linearLayout = (LinearLayout) searchView.findViewById(R.id.arg_res_0x7f090393);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams.topMargin = (int) j10.m3660new(CartoonApplication.m24690do(), 9.0f);
        layoutParams.bottomMargin = (int) j10.m3660new(CartoonApplication.m24690do(), 9.0f);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setPaddingRelative((int) j10.m3660new(CartoonApplication.m24690do(), 6.0f), 0, (int) j10.m3660new(CartoonApplication.m24690do(), 6.0f), 0);
        if (z2) {
            ViewCompat.setBackground(linearLayout, searchView.getResources().getDrawable(R.drawable.arg_res_0x7f080074));
        } else {
            ViewCompat.setBackground(linearLayout, null);
        }
        m27153try(searchAutoComplete, str, z);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m27146for(SearchView searchView, String str, boolean z, boolean z2) throws Resources.NotFoundException {
        int color = searchView.getResources().getColor(R.color.arg_res_0x7f0600fb);
        AppCompatImageView appCompatImageView = (AppCompatImageView) searchView.findViewById(R.id.arg_res_0x7f09038d);
        appCompatImageView.setImageResource(0);
        m27151this(appCompatImageView, color);
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) searchView.findViewById(R.id.arg_res_0x7f090394);
        searchAutoComplete.setTextSize(14.0f);
        searchAutoComplete.setPaddingRelative(searchAutoComplete.getPaddingLeft(), 0, 0, 0);
        searchAutoComplete.getTextSize();
        searchAutoComplete.setCompoundDrawablesRelative(null, null, null, null);
        searchAutoComplete.setCompoundDrawablePadding((int) j10.m3660new(CartoonApplication.m24690do(), 5.0f));
        searchAutoComplete.setIncludeFontPadding(false);
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) searchView.findViewById(R.id.arg_res_0x7f09038e);
        appCompatImageView2.setImageResource(R.drawable.arg_res_0x7f0800c7);
        m27151this(appCompatImageView2, color);
        LinearLayout linearLayout = (LinearLayout) searchView.findViewById(R.id.arg_res_0x7f090393);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams.topMargin = (int) j10.m3660new(CartoonApplication.m24690do(), 9.0f);
        layoutParams.bottomMargin = (int) j10.m3660new(CartoonApplication.m24690do(), 9.0f);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setPaddingRelative((int) j10.m3660new(CartoonApplication.m24690do(), 6.0f), 0, (int) j10.m3660new(CartoonApplication.m24690do(), 6.0f), 0);
        if (z2) {
            ViewCompat.setBackground(linearLayout, searchView.getResources().getDrawable(R.drawable.arg_res_0x7f080070));
        } else {
            ViewCompat.setBackground(linearLayout, null);
        }
        m27153try(searchAutoComplete, str, z);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m27147goto(MenuItem menuItem, int i) {
        if (menuItem == null || menuItem.getIcon() == null) {
            return;
        }
        m27139case(menuItem.getIcon(), i);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m27148if(SearchView searchView, String str) throws Resources.NotFoundException {
        m27146for(searchView, str, false, true);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m27149new(SearchView.SearchAutoComplete searchAutoComplete, String str) throws Resources.NotFoundException {
        m27153try(searchAutoComplete, str, false);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m27150super(SearchView searchView, String str) throws Resources.NotFoundException {
        m27152throw(searchView, str, false, true);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m27151this(View view, int i) {
        if (view instanceof ImageView) {
            if (Build.VERSION.SDK_INT >= 21) {
                ((ImageView) view).setImageTintList(ColorStateList.valueOf(i));
                return;
            }
            Drawable drawableWrap = DrawableCompat.wrap(view.getBackground());
            DrawableCompat.setTintList(drawableWrap, ColorStateList.valueOf(i));
            ((ImageView) view).setImageDrawable(drawableWrap);
            return;
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            for (Drawable drawable : textView.getCompoundDrawables()) {
                m27139case(drawable, i);
            }
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            m27139case(compoundDrawablesRelative[0], i);
            m27139case(compoundDrawablesRelative[2], i);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m27152throw(SearchView searchView, String str, boolean z, boolean z2) throws Resources.NotFoundException {
        int color = searchView.getResources().getColor(R.color.arg_res_0x7f0600fb);
        AppCompatImageView appCompatImageView = (AppCompatImageView) searchView.findViewById(R.id.arg_res_0x7f09038d);
        appCompatImageView.setImageResource(R.drawable.arg_res_0x7f0800f9);
        m27151this(appCompatImageView, color);
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) searchView.findViewById(R.id.arg_res_0x7f090394);
        searchAutoComplete.setTextSize(14.0f);
        searchAutoComplete.setPaddingRelative(searchAutoComplete.getPaddingLeft(), 0, 0, 0);
        int textSize = (int) (searchAutoComplete.getTextSize() * f22758do);
        Drawable drawable = searchAutoComplete.getResources().getDrawable(R.drawable.arg_res_0x7f0800f8);
        drawable.setBounds(0, 0, textSize, textSize);
        m27139case(drawable, color);
        searchAutoComplete.setCompoundDrawablesRelative(drawable, null, null, null);
        searchAutoComplete.setCompoundDrawablePadding((int) j10.m3660new(CartoonApplication.m24690do(), 5.0f));
        searchAutoComplete.setIncludeFontPadding(false);
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) searchView.findViewById(R.id.arg_res_0x7f09038e);
        appCompatImageView2.setImageResource(R.drawable.arg_res_0x7f0800c7);
        m27151this(appCompatImageView2, color);
        LinearLayout linearLayout = (LinearLayout) searchView.findViewById(R.id.arg_res_0x7f090393);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams.topMargin = (int) j10.m3660new(CartoonApplication.m24690do(), 9.0f);
        layoutParams.bottomMargin = (int) j10.m3660new(CartoonApplication.m24690do(), 9.0f);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setPaddingRelative((int) j10.m3660new(CartoonApplication.m24690do(), 6.0f), 0, (int) j10.m3660new(CartoonApplication.m24690do(), 6.0f), 0);
        if (z2) {
            ViewCompat.setBackground(linearLayout, searchView.getResources().getDrawable(R.drawable.arg_res_0x7f080070));
        } else {
            ViewCompat.setBackground(linearLayout, null);
        }
        m27153try(searchAutoComplete, str, z);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m27153try(SearchView.SearchAutoComplete searchAutoComplete, String str, boolean z) throws Resources.NotFoundException {
        searchAutoComplete.setTextColor(searchAutoComplete.getResources().getColor(R.color.arg_res_0x7f0600fb));
        if (!z) {
            searchAutoComplete.setHint(str);
            return;
        }
        int textSize = (int) (searchAutoComplete.getTextSize() * f22758do);
        Drawable drawable = searchAutoComplete.getResources().getDrawable(R.drawable.arg_res_0x7f0800f8);
        drawable.setBounds(0, 0, textSize, textSize);
        m27139case(drawable, QMUIProgressBar.f19441continue);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
        spannableStringBuilder.append((CharSequence) str);
        searchAutoComplete.setHint(spannableStringBuilder);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m27154while(NavigationView navigationView) {
        try {
            Field declaredField = navigationView.getClass().getDeclaredField("presenter");
            declaredField.setAccessible(true);
            NavigationMenuPresenter navigationMenuPresenter = (NavigationMenuPresenter) declaredField.get(navigationView);
            Field declaredField2 = navigationMenuPresenter.getClass().getDeclaredField("menuView");
            declaredField2.setAccessible(true);
            NavigationMenuView navigationMenuView = (NavigationMenuView) declaredField2.get(navigationMenuPresenter);
            navigationMenuView.addOnChildAttachStateChangeListener(new Cdo(navigationMenuView));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
