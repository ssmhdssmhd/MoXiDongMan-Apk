package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.jh1;
import android.support.v4.sh1;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.Cfor;

/* loaded from: classes2.dex */
public class QMUITopBarLayout extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    private QMUITopBar f19629do;

    /* renamed from: for, reason: not valid java name */
    private int f19630for;

    /* renamed from: if, reason: not valid java name */
    private Drawable f19631if;

    /* renamed from: new, reason: not valid java name */
    private int f19632new;

    /* renamed from: try, reason: not valid java name */
    private int f19633try;

    public QMUITopBarLayout(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    public void m23903break(View view, int i) {
        this.f19629do.m23882break(view, i);
    }

    /* renamed from: case, reason: not valid java name */
    public void m23904case(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        this.f19629do.m23883case(view, i, layoutParams);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m23905catch(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        this.f19629do.m23884catch(view, i, layoutParams);
    }

    /* renamed from: class, reason: not valid java name */
    public int m23906class(int i, int i2, int i3) {
        int iMax = (int) (Math.max(0.0d, Math.min((i - i2) / (i3 - i2), 1.0d)) * 255.0d);
        setBackgroundAlpha(iMax);
        return iMax;
    }

    /* renamed from: const, reason: not valid java name */
    public void m23907const() {
        this.f19629do.m23901throws();
    }

    /* renamed from: do, reason: not valid java name */
    public QMUIAlphaImageButton m23908do() {
        return this.f19629do.m23887do();
    }

    /* renamed from: else, reason: not valid java name */
    public QMUIAlphaImageButton m23909else(int i, int i2) {
        return this.f19629do.m23888else(i, i2);
    }

    /* renamed from: final, reason: not valid java name */
    public void m23910final() {
        this.f19629do.m23886default();
    }

    /* renamed from: for, reason: not valid java name */
    public Button m23911for(int i, int i2) {
        return this.f19629do.m23891for(i, i2);
    }

    /* renamed from: goto, reason: not valid java name */
    public Button m23912goto(int i, int i2) {
        return this.f19629do.m23892goto(i, i2);
    }

    /* renamed from: if, reason: not valid java name */
    public QMUIAlphaImageButton m23913if(int i, int i2) {
        return this.f19629do.m23893if(i, i2);
    }

    /* renamed from: import, reason: not valid java name */
    public TextView m23914import(String str) {
        return this.f19629do.m23898private(str);
    }

    /* renamed from: native, reason: not valid java name */
    public void m23915native(boolean z) {
        this.f19629do.m23881abstract(z);
    }

    /* renamed from: new, reason: not valid java name */
    public Button m23916new(String str, int i) {
        return this.f19629do.m23896new(str, i);
    }

    public void setBackgroundAlpha(int i) {
        getBackground().setAlpha(i);
    }

    public void setBackgroundDividerEnabled(boolean z) {
        if (!z) {
            Cfor.m23653switch(this, this.f19632new);
            return;
        }
        if (this.f19631if == null) {
            this.f19631if = jh1.m3894else(this.f19630for, this.f19632new, this.f19633try, false);
        }
        Cfor.m23634default(this, this.f19631if);
    }

    public void setCenterView(View view) {
        this.f19629do.setCenterView(view);
    }

    public void setSubTitle(int i) {
        this.f19629do.setSubTitle(i);
    }

    public void setTitleGravity(int i) {
        this.f19629do.setTitleGravity(i);
    }

    /* renamed from: super, reason: not valid java name */
    public void m23917super() {
        this.f19629do.m23889extends();
    }

    /* renamed from: this, reason: not valid java name */
    public Button m23918this(String str, int i) {
        return this.f19629do.m23899this(str, i);
    }

    /* renamed from: throw, reason: not valid java name */
    public TextView m23919throw(String str) {
        return this.f19629do.m23890finally(str);
    }

    /* renamed from: try, reason: not valid java name */
    public void m23920try(View view, int i) {
        this.f19629do.m23902try(view, i);
    }

    /* renamed from: while, reason: not valid java name */
    public TextView m23921while(int i) {
        return this.f19629do.m23897package(i);
    }

    public QMUITopBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUITopBarStyle);
    }

    public void setSubTitle(String str) {
        this.f19629do.setSubTitle(str);
    }

    public QMUITopBarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.QMUITopBar, R.attr.QMUITopBarStyle, 0);
        this.f19630for = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUITopBar_qmui_topbar_separator_color, ContextCompat.getColor(context, R.color.qmui_config_color_separator));
        this.f19633try = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_separator_height, 1);
        this.f19632new = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUITopBar_qmui_topbar_bg_color, -1);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUITopBar_qmui_topbar_need_separator, true);
        QMUITopBar qMUITopBar = new QMUITopBar(context, true);
        this.f19629do = qMUITopBar;
        qMUITopBar.m23895native(context, typedArrayObtainStyledAttributes);
        addView(this.f19629do, new FrameLayout.LayoutParams(-1, sh1.m7405new(context, R.attr.qmui_topbar_height)));
        typedArrayObtainStyledAttributes.recycle();
        setBackgroundDividerEnabled(z);
    }
}
