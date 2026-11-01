package com.qmuiteam.qmui.widget.grouplist;

import android.content.Context;
import android.support.v4.kh1;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.qmuiteam.qmui.R;

/* loaded from: classes2.dex */
public class QMUIGroupListSectionHeaderFooterView extends LinearLayout {

    /* renamed from: do, reason: not valid java name */
    private TextView f19845do;

    public QMUIGroupListSectionHeaderFooterView(Context context) {
        this(context, (AttributeSet) null, R.attr.QMUIGroupListSectionViewStyle);
    }

    /* renamed from: do, reason: not valid java name */
    private void m24076do(Context context) {
        LayoutInflater.from(context).inflate(R.layout.qmui_group_list_section_layout, (ViewGroup) this, true);
        setGravity(80);
        this.f19845do = (TextView) findViewById(R.id.group_list_section_header_textView);
    }

    public TextView getTextView() {
        return this.f19845do;
    }

    public void setText(CharSequence charSequence) {
        if (kh1.m4402case(charSequence)) {
            this.f19845do.setVisibility(8);
        } else {
            this.f19845do.setVisibility(0);
        }
        this.f19845do.setText(charSequence);
    }

    public void setTextGravity(int i) {
        this.f19845do.setGravity(i);
    }

    public QMUIGroupListSectionHeaderFooterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUIGroupListSectionViewStyle);
    }

    public QMUIGroupListSectionHeaderFooterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m24076do(context);
    }

    public QMUIGroupListSectionHeaderFooterView(Context context, CharSequence charSequence) {
        this(context);
        setText(charSequence);
    }

    public QMUIGroupListSectionHeaderFooterView(Context context, CharSequence charSequence, boolean z) {
        this(context);
        if (z) {
            setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), 0);
        }
        setText(charSequence);
    }
}
