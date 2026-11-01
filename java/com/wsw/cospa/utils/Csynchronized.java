package com.wsw.cospa.utils;

import android.app.Activity;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v4.j10;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;

/* renamed from: com.wsw.cospa.utils.synchronized, reason: invalid class name */
/* loaded from: classes2.dex */
public class Csynchronized {

    /* renamed from: do, reason: not valid java name */
    private static final String f22736do = "ToolbarUtil";

    /* renamed from: com.wsw.cospa.utils.synchronized$do, reason: invalid class name */
    public class Cdo extends ActionBarDrawerToggle {
        public Cdo(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i, int i2) {
            super(activity, drawerLayout, toolbar, i, i2);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
            super.onDrawerClosed(view);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
            super.onDrawerOpened(view);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m27095case(AppCompatActivity appCompatActivity, Toolbar toolbar) {
        appCompatActivity.setSupportActionBar(toolbar);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m27096do(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar) {
        Cdo cdo = new Cdo(activity, drawerLayout, toolbar, R.string.arg_res_0x7f1100a5, R.string.arg_res_0x7f110043);
        cdo.syncState();
        drawerLayout.addDrawerListener(cdo);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m27097else(AppCompatActivity appCompatActivity, Toolbar toolbar, String str) {
        appCompatActivity.setSupportActionBar(toolbar);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(true);
            supportActionBar.setTitle(str);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m27098for(AppCompatActivity appCompatActivity, Toolbar toolbar) {
        appCompatActivity.setSupportActionBar(toolbar);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
        toolbar.setPadding(toolbar.getPaddingLeft(), toolbar.getPaddingTop() + (Build.VERSION.SDK_INT >= 19 ? j10.m3650class() : 0), toolbar.getPaddingRight(), toolbar.getPaddingBottom());
    }

    /* renamed from: if, reason: not valid java name */
    public static int m27099if() {
        TypedArray typedArrayObtainStyledAttributes = CartoonApplication.m24690do().getTheme().obtainStyledAttributes(new int[]{android.R.attr.actionBarSize});
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        return dimension;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m27100new(AppCompatActivity appCompatActivity, Toolbar toolbar, String str) {
        appCompatActivity.setSupportActionBar(toolbar);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(true);
            supportActionBar.setTitle(str);
        }
        toolbar.setPadding(toolbar.getPaddingLeft(), toolbar.getPaddingTop() + (Build.VERSION.SDK_INT >= 19 ? j10.m3650class() : 0), toolbar.getPaddingRight(), toolbar.getPaddingBottom());
    }

    /* renamed from: try, reason: not valid java name */
    public static void m27101try(AppCompatActivity appCompatActivity, Toolbar toolbar, String str) {
        appCompatActivity.setSupportActionBar(toolbar);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(true);
            supportActionBar.setTitle(str);
        }
    }
}
