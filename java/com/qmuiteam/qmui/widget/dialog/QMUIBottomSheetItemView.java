package com.qmuiteam.qmui.widget.dialog;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.alpha.QMUIAlphaLinearLayout;

/* loaded from: classes2.dex */
public class QMUIBottomSheetItemView extends QMUIAlphaLinearLayout {

    /* renamed from: for, reason: not valid java name */
    private ViewStub f19709for;

    /* renamed from: if, reason: not valid java name */
    private AppCompatImageView f19710if;

    /* renamed from: new, reason: not valid java name */
    private TextView f19711new;

    public QMUIBottomSheetItemView(Context context) {
        super(context);
    }

    public AppCompatImageView getAppCompatImageView() {
        return this.f19710if;
    }

    public ViewStub getSubScript() {
        return this.f19709for;
    }

    public TextView getTextView() {
        return this.f19711new;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f19710if = (AppCompatImageView) findViewById(R.id.grid_item_image);
        this.f19709for = (ViewStub) findViewById(R.id.grid_item_subscript);
        this.f19711new = (TextView) findViewById(R.id.grid_item_title);
    }

    public QMUIBottomSheetItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIBottomSheetItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
