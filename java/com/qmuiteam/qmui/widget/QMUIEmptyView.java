package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.qmuiteam.qmui.R;

/* loaded from: classes2.dex */
public class QMUIEmptyView extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    private QMUILoadingView f19409do;

    /* renamed from: for, reason: not valid java name */
    private TextView f19410for;

    /* renamed from: if, reason: not valid java name */
    private TextView f19411if;

    /* renamed from: new, reason: not valid java name */
    public Button f19412new;

    public QMUIEmptyView(Context context) {
        this(context, null);
    }

    /* renamed from: if, reason: not valid java name */
    private void m23744if() {
        LayoutInflater.from(getContext()).inflate(R.layout.qmui_empty_view, (ViewGroup) this, true);
        this.f19409do = (QMUILoadingView) findViewById(R.id.empty_view_loading);
        this.f19411if = (TextView) findViewById(R.id.empty_view_title);
        this.f19410for = (TextView) findViewById(R.id.empty_view_detail);
        this.f19412new = (Button) findViewById(R.id.empty_view_button);
    }

    /* renamed from: case, reason: not valid java name */
    public void m23745case() {
        setVisibility(0);
    }

    /* renamed from: do, reason: not valid java name */
    public void m23746do() {
        setVisibility(8);
        setLoadingShowing(false);
        setTitleText(null);
        setDetailText(null);
        m23752try(null, null);
    }

    /* renamed from: else, reason: not valid java name */
    public void m23747else(String str, String str2) {
        setLoadingShowing(false);
        setTitleText(str);
        setDetailText(str2);
        m23752try(null, null);
        m23745case();
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m23748for() {
        return this.f19409do.getVisibility() == 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m23749goto(boolean z) {
        setLoadingShowing(z);
        setTitleText(null);
        setDetailText(null);
        m23752try(null, null);
        m23745case();
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m23750new() {
        return getVisibility() == 0;
    }

    public void setDetailColor(int i) {
        this.f19410for.setTextColor(i);
    }

    public void setDetailText(String str) {
        this.f19410for.setText(str);
        this.f19410for.setVisibility(str != null ? 0 : 8);
    }

    public void setLoadingShowing(boolean z) {
        this.f19409do.setVisibility(z ? 0 : 8);
    }

    public void setTitleColor(int i) {
        this.f19411if.setTextColor(i);
    }

    public void setTitleText(String str) {
        this.f19411if.setText(str);
        this.f19411if.setVisibility(str != null ? 0 : 8);
    }

    /* renamed from: this, reason: not valid java name */
    public void m23751this(boolean z, String str, String str2, String str3, View.OnClickListener onClickListener) {
        setLoadingShowing(z);
        setTitleText(str);
        setDetailText(str2);
        m23752try(str3, onClickListener);
        m23745case();
    }

    /* renamed from: try, reason: not valid java name */
    public void m23752try(String str, View.OnClickListener onClickListener) {
        this.f19412new.setText(str);
        this.f19412new.setVisibility(str != null ? 0 : 8);
        this.f19412new.setOnClickListener(onClickListener);
    }

    public QMUIEmptyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUIEmptyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m23744if();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIEmptyView);
        Boolean boolValueOf = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIEmptyView_qmui_show_loading, false));
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.QMUIEmptyView_qmui_title_text);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.QMUIEmptyView_qmui_detail_text);
        String string3 = typedArrayObtainStyledAttributes.getString(R.styleable.QMUIEmptyView_qmui_btn_text);
        typedArrayObtainStyledAttributes.recycle();
        m23751this(boolValueOf.booleanValue(), string, string2, string3, null);
    }
}
