package com.wsw.cospa.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TabWidget;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class BadgeView extends AppCompatTextView {
    private boolean mHideOnNull;
    private float radius;

    public BadgeView(Context context) {
        this(context, null);
    }

    private int dip2Px(float f) {
        return (int) ((f * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void init() {
        if (!(getLayoutParams() instanceof FrameLayout.LayoutParams)) {
            setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        }
        setTextColor(-1);
        setTextSize(2, 11.0f);
        setPadding(dip2Px(5.0f), dip2Px(1.0f), dip2Px(5.0f), dip2Px(1.0f));
        this.radius = 8.0f;
        setBackground(8.0f, Color.parseColor("#d3321b"));
        setGravity(17);
        setHideOnNull(true);
        setBadgeCount(0);
        setMinWidth(dip2Px(16.0f));
        setMinHeight(dip2Px(16.0f));
    }

    public void decrementBadgeCount(int i) {
        incrementBadgeCount(-i);
    }

    public Integer getBadgeCount() {
        if (getText() == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(getText().toString()));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public int getBadgeGravity() {
        return ((FrameLayout.LayoutParams) getLayoutParams()).gravity;
    }

    public int[] getBadgeMargin() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        return new int[]{layoutParams.leftMargin, layoutParams.topMargin, layoutParams.rightMargin, layoutParams.bottomMargin};
    }

    public void incrementBadgeCount(int i) {
        Integer badgeCount = getBadgeCount();
        if (badgeCount == null) {
            setBadgeCount(i);
        } else {
            setBadgeCount(i + badgeCount.intValue());
        }
    }

    public boolean isHideOnNull() {
        return this.mHideOnNull;
    }

    public void setBackground(float f, int i) {
        float fDip2Px = dip2Px(f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{fDip2Px, fDip2Px, fDip2Px, fDip2Px, fDip2Px, fDip2Px, fDip2Px, fDip2Px}, null, null));
        shapeDrawable.getPaint().setColor(i);
        setBackground(shapeDrawable);
    }

    public void setBadgeCount(int i) {
        setText(String.valueOf(i));
        if (i == 0) {
            setVisibility(8);
        }
    }

    public void setBadgeGravity(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.gravity = i;
        setLayoutParams(layoutParams);
    }

    public void setBadgeMargin(int i) {
        setBadgeMargin(i, i, i, i);
    }

    public void setHideOnNull(boolean z) {
        this.mHideOnNull = z;
        setText(getText());
    }

    public void setHighlight(boolean z) {
        setBackground(getResources().getColor(z ? R.color.arg_res_0x7f0602ba : R.color.arg_res_0x7f060382));
    }

    public void setTargetView(TabWidget tabWidget, int i) {
        setTargetView(tabWidget.getChildTabViewAt(i));
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (isHideOnNull() && TextUtils.isEmpty(charSequence)) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
        super.setText(charSequence, bufferType);
    }

    public BadgeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.textViewStyle);
    }

    public void setBadgeMargin(int i, int i2, int i3, int i4) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.leftMargin = dip2Px(i);
        layoutParams.topMargin = dip2Px(i2);
        layoutParams.rightMargin = dip2Px(i3);
        layoutParams.bottomMargin = dip2Px(i4);
        setLayoutParams(layoutParams);
    }

    public BadgeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHideOnNull = true;
        init();
    }

    public void setTargetView(View view) {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        if (view == null) {
            return;
        }
        if (view.getParent() instanceof FrameLayout) {
            ((FrameLayout) view.getParent()).addView(this);
            return;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(view);
            viewGroup.removeView(view);
            FrameLayout frameLayout = new FrameLayout(getContext());
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            frameLayout.setLayoutParams(layoutParams);
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            viewGroup.addView(frameLayout, iIndexOfChild, layoutParams);
            frameLayout.addView(view);
            frameLayout.addView(this);
            return;
        }
        view.getParent();
    }

    public void setBackground(int i) {
        setBackground(this.radius, i);
    }
}
