package com.wsw.cospa.widget.behavior;

import android.content.Context;
import android.support.v4.j10;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.utils.Csynchronized;

/* loaded from: classes2.dex */
public class CustomTextViewBehavior extends CoordinatorLayout.Behavior<TextView> {
    private static final String TAG = "CustomTextViewBehavior";
    private Context mContext;
    private int mLableHeight;
    private Toolbar mToolBar;
    private float mStartY = -1.0f;
    private float mStartX = -1.0f;
    private float mSize = -1.0f;
    private int mToolBarHeight = -1;

    public CustomTextViewBehavior(Context context, Toolbar toolbar) {
        this.mLableHeight = -1;
        this.mContext = context;
        this.mLableHeight = context.getResources().getDimensionPixelSize(R.dimen.arg_res_0x7f0701e1);
        this.mToolBar = toolbar;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, TextView textView, View view) {
        return view instanceof AppBarLayout;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, TextView textView, View view) {
        Toolbar toolbar = this.mToolBar;
        if (toolbar == null) {
            this.mToolBarHeight = Csynchronized.m27099if();
        } else {
            this.mToolBarHeight = toolbar.getHeight();
        }
        if (this.mStartY == -1.0f) {
            this.mStartY = (view.getHeight() - this.mLableHeight) - textView.getHeight();
        }
        if (this.mStartX == -1.0f) {
            this.mStartX = textView.getX();
        }
        if (this.mSize == -1.0f) {
            this.mSize = textView.getTextSize();
        }
        float height = (view.getHeight() + view.getY()) - this.mToolBarHeight;
        int height2 = view.getHeight();
        int i = this.mToolBarHeight;
        float f = height / (height2 - i);
        float f2 = 1.0f - f;
        textView.setY((this.mStartY * f) + ((((i - textView.getHeight()) + j10.m3650class()) / 2) * f2));
        textView.setX((this.mStartX * f) + (((j10.m3649catch() - textView.getWidth()) / 2) * f2));
        Context context = this.mContext;
        float f3 = this.mSize;
        textView.setTextSize(j10.m3658import(context, (f * f3) + f3));
        return true;
    }

    public CustomTextViewBehavior(Context context, AttributeSet attributeSet) {
        this.mLableHeight = -1;
        this.mContext = context;
        this.mLableHeight = context.getResources().getDimensionPixelSize(R.dimen.arg_res_0x7f0701e1);
    }
}
